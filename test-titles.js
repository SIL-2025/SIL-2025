// Script de test pour vérifier la correspondance des titres
console.log("=== Test de correspondance des titres ===");

// Mapping des titres selon docPaths
const docPaths = {
    "Performance Evaluation of AI Models for Monitoring Automotive Component Traceability Data": true,
    "Impact of Artificial Intelligence on the Evolution of Performance Measurement in Supply Chain 4.0": true,
    "The Role of Artificial Intelligence in E-commerce: A Comprehensive Review": true,
    "Demand Forecasting Under Uncertainty: Evaluating Statistical and Machine Learning Models": true,
    "AI-Driven Framework for Tax Fraud Detection: Application to Morocco": true,
    "Resilient and Ethical Raw Material Sourcing in Automotive Industry: An Industry 5.0 Case Study of BMW's Cobalt Sourcing": true,
    "Synergies between Circular Economy and Operational Excellence in Industry 5.0": true,
    "Assessing Human-Centricity in Supply Chains": true,
    "Impact of Organizational and Technological Innovation on Firm Performance": true,
    "Digital Twin-Driven Ergonomic Risk Forecasting in Manufacturing Assembly": true,
    "Blockchain-Based Waste Energy Traceability in the Leather Industry": true,
    "Reinventing Quality Problem Solving in the Manufacturing Industry: A Scoping Review of Traditional Approaches Limitations": true,
    "Three-Layer Framework for Sustainable Digital Supply Chains": true,
    "How Is IATF 16949:2016 Certification Improving the Automotive Ecosystem?": true
};

// Titres du HTML (extraits de la page)
const htmlTitles = [
    "Performance Evaluation of AI Models for Monitoring Automotive Component Traceability Data",
    "Impact of Artificial Intelligence on the Evolution of Performance Measurement in Supply Chain 4.0",
    "The Role of Artificial Intelligence in E-commerce: A Comprehensive Review",
    "Demand Forecasting Under Uncertainty: Evaluating Statistical and Machine Learning Models",
    "AI-Driven Framework for Tax Fraud Detection: Application to Morocco",
    "Resilient and Ethical Raw Material Sourcing in Automotive Industry: An Industry 5.0 Case Study of BMW's Cobalt Sourcing",
    "Synergies between Circular Economy and Operational Excellence in Industry 5.0",
    "Assessing Human-Centricity in Supply Chains",
    "Impact of Organizational and Technological Innovation on Firm Performance",
    "Digital Twin-Driven Ergonomic Risk Forecasting in Manufacturing Assembly",
    "Blockchain-Based Waste Energy Traceability in the Leather Industry",
    "Reinventing Quality Problem Solving in the Manufacturing Industry: A Scoping Review of Traditional Approaches Limitations",
    "Three-Layer Framework for Sustainable Digital Supply Chains",
    "How Is IATF 16949:2016 Certification Improving the Automotive Ecosystem?"
];

console.log("Vérification des correspondances:");
let matches = 0;
let mismatches = 0;

htmlTitles.forEach(title => {
    if (docPaths[title]) {
        console.log(`✓ ${title}`);
        matches++;
    } else {
        console.log(`✗ ${title}`);
        mismatches++;
    }
});

console.log(`\nRésultats: ${matches} correspondances, ${mismatches} problèmes`);