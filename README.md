# Métaheuristiques pour le Set Packing Problem

Elements de soutien à la mise en place au codage en Julia des devoirs maison à réaliser dans le cadre du distanciel du cours "métaheuristiques" en master 1 informatique parcours ORO et parcours DS, année 2017-2018.

- `loadSPP.jl` : lecture d'une instance au format OR-library (24/09/2017)
- `setSPP.jl` : construction d'un modèle JuMP de SPP (24/09/2017)
- `getfname.jl`: collecte les noms de fichiers non cachés présents dans un répertoire donné (01/10/2017)

Le répertoire `Data` contient une sélection d'instances numériques de SPP au format OR-library : (01/10/2017)
- didactic.dat
- pb_100rnd0100.dat 
- pb_200rnd0100.dat 
- pb_500rnd0100.dat
- pb_1000rnd0100.dat
- pb_2000rnd0100.dat

Exemple d'utilisation (`main.jl`) avec chemins d'accès correspondant à une configuration standard sur macOS (24/09/2017 - Rev 01/10/2017) :
- chargement de l'instance `didactic.dat` de SPP
- résolution exacte d'une instance de SPP à l'aide du solveur MIP de GLPK
- collecte des noms d'instances présentes dans le répertoire `Data`
