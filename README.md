# solveSPP: solving the Set Packing Problem
Implementation in Julia (compliant Julia v0.6.4) of well-known optimization algorithms applied on the Set Packing Problem (SPP) for pedagogical purposes.

------

Goal/Objectif:

Elements de soutien à la mise en place au codage en Julia (v0.6.4 et antécédants) des devoirs maison à réaliser dans le cadre du distanciel du cours "métaheuristiques" en master 1 informatique parcours "Optimisation en Recherche Opérationnelle (ORO)", année 2018-2019.

- `loadSPP.jl` : lecture d'une instance au format OR-library
- `setSPP.jl` : construction d'un modèle JuMP de SPP
- `getfname.jl`: collecte les noms de fichiers non cachés présents dans un répertoire donné
- `experiment.jl`: protocole pour mener une expérimentation numérique avec sorties graphiques

------

Le répertoire `Data` contient une sélection d'instances numériques de SPP au format OR-library :
- didactic.dat
- pb_100rnd0100.dat 
- pb_200rnd0100.dat 
- pb_500rnd0100.dat
- pb_1000rnd0100.dat
- pb_2000rnd0100.dat

------

Exemple d'utilisation (`main.jl`) avec chemins d'accès correspondant à une configuration standard sur macOS :
- chargement de l'instance `didactic.dat` de SPP
- résolution exacte d'une instance de SPP à l'aide du solveur MIP de GLPK
- collecte des noms d'instances présentes dans le répertoire `Data`

------

Exemple d'utilisation (`experiment.jl`) du protocole d'expérimentation sur un GRASP-SPP simulé :

![terminal](https://github.com/xgandibleux/meta2017/blob/master/doc/terminal.jpg)

![run](https://github.com/xgandibleux/meta2017/blob/master/doc/Examen_d'un_run.jpg)

![analyse](https://github.com/xgandibleux/meta2017/blob/master/doc/bilan_tous_runs.jpg)

![cput](https://github.com/xgandibleux/meta2017/blob/master/doc/bilan_CPUt_tous_runs.jpg)
