# QR Code Conference Program - Mise à jour

## Changements effectués

### 1. Structure des dossiers mise à jour
Les dossiers de sessions ont été renommés pour correspondre au nouveau programme :

- **Session 1** : Artificial Intelligence Applications & Advanced Analytics
- **Session 2** : Industry 5.0 & Human-Centric Approaches  
- **Session 3** : Sustainable Manufacturing Quality, Traceability and Certification (Online Session)
- **Session 4** : Maintenance 4.0 & Predictive Approaches
- **Session 5** : Big Data & Decision-Making for Sustainability
- **Session 6** : Digital Supply Chains Risk, Resilience & Flexibility
- **Session 7** : Lean, Six Sigma & Operational Excellence
- **Session 8** : Digital Solutions for Operational Excellence (Online Session)

### 2. Programme de la conférence mis à jour

Le programme dans `index.html` a été entièrement mis à jour selon le nouveau planning :

#### Jeudi 23 octobre
- Cérémonie d'ouverture avec les responsables nommés
- 4 Plenary Talks avec les bons intervenants et chairs
- 3 sessions parallèles (Sessions 1, 2, 3)

#### Vendredi 24 octobre  
- 3 Plenary Talks (5, 6, 7)
- 2 sessions parallèles (Sessions 4, 5)

#### Samedi 25 octobre
- 3 sessions parallèles (Sessions 6, 7, 8) 
- Table ronde avec modérateur
- Activité sociale

### 3. Système de liens vers les documents

Le système a été amélioré pour :
- Essayer d'abord de trouver un fichier PDF
- Si pas de PDF, chercher un fichier DOCX
- Si pas de DOCX, chercher un fichier DOCM
- Meilleure correspondance entre les titres et les fichiers

### 4. Script de conversion Word vers PDF

Un fichier `convert-word-to-pdf.bat` a été créé pour convertir automatiquement tous les fichiers Word (.docx, .docm) en PDF.

## Comment utiliser

1. **Pour convertir les fichiers Word en PDF** :
   - Double-cliquez sur `convert-word-to-pdf.bat`
   - Le script convertira automatiquement tous les fichiers

2. **Pour visualiser le programme** :
   - Ouvrez `index.html` dans un navigateur
   - Cliquez sur les onglets des jours pour voir le programme
   - Les titres de présentations sont des liens vers les documents

## Fichiers modifiés

- `index.html` : Programme complet mis à jour
- `convert-word-to-pdf.bat` : Nouveau script de conversion
- Structure des dossiers `Sessions Word Abstracts/` réorganisée

## Notes techniques

- Le système détecte automatiquement si les fichiers sont en PDF ou Word
- Compatible avec les fichiers .pdf, .docx et .docm
- Les liens s'ouvrent dans un nouvel onglet
- Design responsive maintenu