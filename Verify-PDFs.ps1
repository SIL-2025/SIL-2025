# Script de vérification des chemins PDF
Write-Host "=== Vérification des fichiers PDF ===" -ForegroundColor Yellow
Write-Host ""

$docPaths = @{
    # Session 1 - Artificial Intelligence Applications & Advanced Analytics
    "Performance Evaluation of AI Models for Monitoring Automotive Component Traceability Data" = "Sessions Word Abstracts/Session 1 - Artificial Intelligence Applications & Advanced Analytics/Performance Evaluation of AI Models for Monitoring Automotive Component Traceability Data.pdf"
    "Impact of Artificial Intelligence on the Evolution of Performance Measurement in Supply Chain 4.0" = "Sessions Word Abstracts/Session 1 - Artificial Intelligence Applications & Advanced Analytics/Impact of Artificial Intelligence on the Evolution of Performance Measurement in Supply Chain 4.0.pdf"
    "The Role of Artificial Intelligence in E-commerce: A Comprehensive Review" = "Sessions Word Abstracts/Session 1 - Artificial Intelligence Applications & Advanced Analytics/The role of artificial intelligence in optimizing ecommerce logistics.pdf"
    "Demand Forecasting Under Uncertainty: Evaluating Statistical and Machine Learning Models" = "Sessions Word Abstracts/Session 1 - Artificial Intelligence Applications & Advanced Analytics/Demand Forecasting Under Uncertainty- Evaluating Statistical and Machine Learning Models.pdf"
    "AI-Driven Framework for Tax Fraud Detection: Application to Morocco" = "Sessions Word Abstracts/Session 1 - Artificial Intelligence Applications & Advanced Analytics/А Theoreticаl АI-Driven Frаmework for Tаx Frаud.pdf"
    
    # Session 2 - Industry 5.0 & Human-Centric Approaches
    "Resilient and Ethical Raw Material Sourcing in Automotive Industry: An Industry 5.0 Case Study of BMW's Cobalt Sourcing" = "Sessions Word Abstracts/Session 2 – Industry 5.0 & Human-Centric Approaches/Resilient and Ethical Raw Material Sourcing in the Automotive Industry An Industry 5.0 Case Study of BMW's Cobalt Sourcing.pdf"
    "Synergies between Circular Economy and Operational Excellence in Industry 5.0" = "Sessions Word Abstracts/Session 2 – Industry 5.0 & Human-Centric Approaches/Synergies between Circular Economy and Operational Excellence in Industry 5.0.pdf"
    "Assessing Human-Centricity in Supply Chains" = "Sessions Word Abstracts/Session 2 – Industry 5.0 & Human-Centric Approaches/Assessing Human-Centricity in Supply Chains.pdf"
    "Impact of Organizational and Technological Innovation on Firm Performance" = "Sessions Word Abstracts/Session 2 – Industry 5.0 & Human-Centric Approaches/Impact of Organizational and Technological Innovation on Firm Performance.pdf"
    "Digital Twin-Driven Ergonomic Risk Forecasting in Manufacturing Assembly" = "Sessions Word Abstracts/Session 2 – Industry 5.0 & Human-Centric Approaches/Digital Twin-Driven Ergonomic Risk Forecasting in Manufacturing Assembly.pdf"
    
    # Session 3 - Sustainable Manufacturing
    "Blockchain-Based Waste Energy Traceability in the Leather Industry" = "Sessions Word Abstracts/Session 3 – Sustainable Manufacturing Quality, Traceability and Certification (Online Session)/Blockchain-Based Waste Energy Traceability in the Leather Industry.pdf"
    "Reinventing Quality Problem Solving in the Manufacturing Industry: A Scoping Review of Traditional Approaches Limitations" = "Sessions Word Abstracts/Session 3 – Sustainable Manufacturing Quality, Traceability and Certification (Online Session)/Reinventing Quality Problem Solving in the Manufacturing Industry.pdf"
    "Three-Layer Framework for Sustainable Digital Supply Chains" = "Sessions Word Abstracts/Session 3 – Sustainable Manufacturing Quality, Traceability and Certification (Online Session)/Three-Layer Framework for Sustainable Digital Supply Chains.pdf"
    "How Is IATF 16949:2016 Certification Improving the Automotive Ecosystem?" = "Sessions Word Abstracts/Session 3 – Sustainable Manufacturing Quality, Traceability and Certification (Online Session)/How Is IATF 16949-2016 Certification Improving the Automotive Ecosystem.pdf"
}

$found = 0
$missing = 0

foreach ($title in $docPaths.Keys) {
    $path = $docPaths[$title]
    if (Test-Path $path) {
        Write-Host "✓ TROUVÉ: $title" -ForegroundColor Green
        $found++
    } else {
        Write-Host "✗ MANQUANT: $title" -ForegroundColor Red
        Write-Host "   Chemin: $path" -ForegroundColor Gray
        $missing++
    }
}

Write-Host ""
Write-Host "=== RÉSUMÉ ===" -ForegroundColor Yellow
Write-Host "Fichiers trouvés: $found" -ForegroundColor Green
Write-Host "Fichiers manquants: $missing" -ForegroundColor Red

if ($missing -eq 0) {
    Write-Host "Tous les fichiers PDF sont présents !" -ForegroundColor Green
} else {
    Write-Host "Certains fichiers PDF sont manquants." -ForegroundColor Red
}

Read-Host "Appuyez sur Entrée pour continuer"