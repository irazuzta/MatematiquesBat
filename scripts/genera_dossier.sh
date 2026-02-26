#!/bin/bash

# Comprovem que s'han passat els dos arguments
if [ "$#" -ne 2 ]; then
    echo "Ús: sh scripts/generar_dossier.sh <carpeta> <titol>"
    echo "Exemple: sh scripts/generar_dossier.sh geometria 'GEOMETRIA ANALÍTICA'"
    exit 1
fi

CARPETA=$1
TITOL=$2
OUTPUT="dossier_${CARPETA}.md"

# 0. Eliminem el dossier previ generat
rm ../docs/$CARPETA/$OUTPUT


# 1. Creació de la portada amb salt de pàgina per a impressió
echo "---" >> $OUTPUT
echo "visual: true" >> $OUTPUT  # Per si fas servir algun tema especial
echo "---" >> $OUTPUT
echo "" >> $OUTPUT
echo "# $TITOL" >> $OUTPUT
echo -e "\n<br>" >>$OUTPUT
echo "" >> $OUTPUT
echo '<div style="page-break-after: always;"></div>' >> $OUTPUT
echo "" >> $OUTPUT

# 2. Concatenació dels fitxers
# Fem servir un bucle per evitar errors si no hi ha fitxers
for f in ../docs/$CARPETA/*.md; do
    if [ -f "$f" ]; then
        echo "Afegint $f..."
        # Afegim el contingut i un parell de salts de línia per seguretat
        cat "$f" >> $OUTPUT
        echo -e "\n<br><br>\n" >> $OUTPUT
        echo '<div style="page-break-after: always;"></div>' >> $OUTPUT
    fi
done

#movem el fitxer a la carpeta dels apunts
mv ./$OUTPUT ../docs/$CARPETA/


echo "------------------------------------------"
echo "✅ Dossier creat correctament: $OUTPUT"
echo "------------------------------------------"