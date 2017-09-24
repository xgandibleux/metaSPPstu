# Métaheuristiques pour le Set Packing Problem

Elements de soutien à la mise en place au codage en Julia des devoirs maison à réaliser dans le cadre du distanciel du cours "métaheuristiques" en master 1 informatique parcours ORO et parcours DS, année 2017-2018.

- `loadSPP.jl` : lecture d'une instance au format OR-library
- `setSPP.jl` : construction d'un modèle JuMP de SPP

Exemple d'utilisation (`main.jl`) :
- chargement d'une instance de SPP
- résolution exacte d'une instance de SPP à l'aide du solveur MIP de GLPK
