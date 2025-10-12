# Script PowerShell simple pour convertir les fichiers Word restants
Write-Host "=== Conversion des fichiers Word vers PDF ===" -ForegroundColor Yellow
Write-Host ""

try {
    Add-Type -AssemblyName Microsoft.Office.Interop.Word
    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    
    $basePath = "Sessions Word Abstracts"
    $converted = 0
    $errors = 0
    $skipped = 0
    
    Get-ChildItem -Path $basePath -Recurse -Filter "*.doc*" | ForEach-Object {
        $inputFile = $_.FullName
        $pdfFile = $inputFile -replace '\.(docx|docm)$', '.pdf'
        
        # Verifier si le PDF existe deja
        if (Test-Path $pdfFile) {
            Write-Host "IGNORE: $($_.Name) (PDF existe deja)" -ForegroundColor Gray
            $skipped++
            return
        }
        
        try {
            Write-Host "CONVERSION: $($_.Name)" -ForegroundColor Cyan
            $doc = $word.Documents.Open($inputFile)
            $doc.SaveAs2($pdfFile, 17) # 17 = wdFormatPDF
            $doc.Close()
            Write-Host "  Succes: $([System.IO.Path]::GetFileName($pdfFile))" -ForegroundColor Green
            $converted++
        }
        catch {
            Write-Host "  Erreur: $($_.Exception.Message)" -ForegroundColor Red
            $errors++
        }
    }
    
    $word.Quit()
    
    Write-Host ""
    Write-Host "=== RESUME ===" -ForegroundColor Yellow
    Write-Host "Fichiers convertis: $converted" -ForegroundColor Green
    Write-Host "Fichiers ignores: $skipped" -ForegroundColor Gray  
    Write-Host "Erreurs: $errors" -ForegroundColor Red
    Write-Host ""
    
    if ($converted -gt 0) {
        Write-Host "Conversion terminee avec succes!" -ForegroundColor Green
    } else {
        Write-Host "Aucune conversion necessaire." -ForegroundColor Yellow
    }
}
catch {
    Write-Host "Erreur lors de l'initialisation de Word: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Assurez-vous que Microsoft Word est installe." -ForegroundColor Yellow
}

Write-Host "Appuyez sur Entree pour continuer..."
Read-Host