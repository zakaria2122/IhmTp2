#!/bin/bash

# Nom du script : script.sh
# Description : Script pour compiler et exécuter une application JavaFX
# Auteur : Zkr

# Répertoire vers les fichiers jar JavaFX
PATH_TO_FX=/home/Zakaria/Documents/Ihm/IhmTp2/javafx-sdk-17.0.15/lib

# Compilation des fichiers Java
mkdir -p out

javac --module-path "$PATH_TO_FX" --add-modules javafx.controls,javafx.fxml \
      -d out $(find src -name "*.java")

# Vérifie que la compilation s'est bien passée
if [ $? -ne 0 ]; then
    echo "❌ Échec de la compilation"
    exit 1
fi

# Lancement de l'application
java --module-path "$PATH_TO_FX" --add-modules javafx.controls,javafx.fxml \
     -cp out AppliConverter
