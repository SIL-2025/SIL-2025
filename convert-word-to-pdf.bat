@echo off
echo ===================================
echo    Conversion Word vers PDF
echo ===================================
echo.
echo Ce script va convertir tous les fichiers .docx et .docm en PDF
echo Assurez-vous que Microsoft Word est installé sur votre système
echo.
pause

cd "Sessions Word Abstracts"

echo Démarrage de la conversion...
echo.

powershell.exe -Command "& { ^
  Add-Type -AssemblyName Microsoft.Office.Interop.Word; ^
  $word = New-Object -ComObject Word.Application; ^
  $word.Visible = $false; ^
  $converted = 0; ^
  $errors = 0; ^
  Get-ChildItem -Recurse -Filter '*.doc*' | ForEach-Object { ^
    try { ^
      Write-Host 'Conversion de:' $_.Name; ^
      $doc = $word.Documents.Open($_.FullName); ^
      $pdfPath = $_.FullName -replace '\.(docx|docm)$', '.pdf'; ^
      $doc.SaveAs2($pdfPath, 17); ^
      $doc.Close(); ^
      Write-Host '  -> Succès:' ([System.IO.Path]::GetFileName($pdfPath)) -ForegroundColor Green; ^
      $converted++; ^
    } catch { ^
      Write-Host '  -> Erreur:' $_.Exception.Message -ForegroundColor Red; ^
      $errors++; ^
    } ^
  }; ^
  $word.Quit(); ^
  Write-Host ''; ^
  Write-Host 'Conversion terminée!' -ForegroundColor Yellow; ^
  Write-Host 'Fichiers convertis:' $converted -ForegroundColor Green; ^
  Write-Host 'Erreurs:' $errors -ForegroundColor Red; ^
}"

echo.
echo Conversion terminée! 
echo Vérifiez les fichiers PDF dans les dossiers de sessions.
echo.
pause