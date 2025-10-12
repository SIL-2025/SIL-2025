// Test de correspondance exacte des titres
console.log("=== Vérification des correspondances exactes ===");

// Titres extraits du HTML Session 1
const htmlTitlesSession1 = [
    "Performance Evaluation of AI Models for Monitoring Automotive Component Traceability Data",
    "Impact of Artificial Intelligence on the Evolution of Performance Measurement in Supply Chain 4.0", 
    "The Role of Artificial Intelligence in E-commerce: A Comprehensive Review"
];

// Clés du docPaths Session 1
const docPathsKeysSession1 = [
    "Performance Evaluation of AI Models for Monitoring Automotive Component Traceability Data",
    "Impact of Artificial Intelligence on the Evolution of Performance Measurement in Supply Chain 4.0",
    "The Role of Artificial Intelligence in E-commerce: A Comprehensive Review"
];

console.log("Session 1 - Vérification:");
htmlTitlesSession1.forEach((title, index) => {
    const matches = docPathsKeysSession1.includes(title);
    console.log(`${matches ? '✓' : '✗'} "${title}"`);
    if (!matches) {
        console.log(`   Clé attendue: "${docPathsKeysSession1[index]}"`);
    }
});