# Script PowerShell pour convertir tous les fichiers .docx et .docm en PDF
Add-Type -AssemblyName Microsoft.Office.Interop.Word

$word = New-Object -ComObject Word.Application
$word.Visible = $false
$word.DisplayAlerts = 0
try { $word.AutomationSecurity = 3 } catch { }

# Fonction pour convertir un fichier
function Convert-WordToPdf {
    param($InputPath, $OutputPath)
    try {
    $doc = $word.Documents.Open($InputPath)
        $doc.SaveAs2($OutputPath, 17) # 17 = PDF format
        $doc.Close()
        Write-Host "Converti: $InputPath -> $OutputPath"
    }
    catch {
        Write-Host "Erreur lors de la conversion de $InputPath : $($_.Exception.Message)"
    }
}

# Parcourir tous les dossiers de session
# Utiliser le dossier où se trouve ce script comme base, pour éviter les chemins absolus obsolètes
$basePath = $PSScriptRoot
Get-ChildItem -Path $basePath -Directory | ForEach-Object {
    $sessionPath = $_.FullName
    Write-Host "Traitement du dossier: $($_.Name)"
    
    # Convertir tous les fichiers .docx et .docm dans ce dossier
    Get-ChildItem -Path $sessionPath -Filter "*.doc*" | ForEach-Object {
        $inputFile = $_.FullName
        $outputFile = $_.FullName -replace '\.(docx|docm)$', '.pdf'
        Convert-WordToPdf $inputFile $outputFile
    }
}

$word.Quit()
Write-Host "Conversion terminee!"
