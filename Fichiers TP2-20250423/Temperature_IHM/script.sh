# 1. D�finir le chemin vers JavaFX
export pth=/usr/share/openjfx/lib/


# 3. Compiler : les .class vont dans bin/
javac  --module-path $pth --add-modules javafx.controls -d bin src/*.java

# 4. G�n�rer la javadoc
javadoc -d doc --module-path $pth --add-modules javafx.controls src/*.java


java -cp bin:img --module-path $pth --add-modules javafx.controls AppliConverter