#!/bin/bash

VERSIONE_OLD="javax.servlet."
VERSIONE_NEW="jakarta.servlet."
DIRECTORY="$1"

# Escape parentesi ( e )
VERSIONE_OLD_PERL=${VERSIONE_OLD//\(/\\(}
VERSIONE_OLD_PERL=${VERSIONE_OLD_PERL//\)/\\)}
VERSIONE_NEW_PERL=${VERSIONE_NEW//\(/\\(}
VERSIONE_NEW_PERL=${VERSIONE_NEW_PERL//\)/\\)}

if [ -z "$VERSIONE_OLD" -o -z "$VERSIONE_NEW" -o -z "$DIRECTORY" ] 
then
	echo "Errore: use ./replace.sh OLD_STRING NEW_STRING DIRECTORY"
	exit
fi

echo "Inizio replace ${VERSIONE_OLD}->${VERSIONE_NEW} (dir:${DIRECTORY})..."

for file in $(find ${DIRECTORY} -name \*\.java\* -and -not -type l -and -not -type d | xargs grep "${VERSIONE_OLD}" | grep -v "Il file binario" | cut -d ":" -f 1 | uniq )
do
	echo "Replace ${VERSIONE_OLD_PERL}->${VERSIONE_NEW_PERL} in ${file}"
	find ${file} -type f -exec perl -pi -e "s#${VERSIONE_OLD_PERL}#${VERSIONE_NEW_PERL}#g" {} \;
done

echo "Replace ${VERSIONE_OLD}->${VERSIONE_NEW} terminata"
