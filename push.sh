#!/bin/bash
# force_push.sh - Push local branch forcefully to origin mit Zeitstempel

# Optional: Pfad zum Repo, falls nicht im aktuellen Verzeichnis
# cd /home/bandino/EnemyTerritoryMobile

# Aktuellen Branch ermitteln
BRANCH=$(git symbolic-ref --short HEAD)

# Datum & Uhrzeit
NOW=$(date '+%Y-%m-%d %H:%M:%S')

# Info ausgeben
echo "[$NOW] Force pushing branch '$BRANCH' to origin..."

# Force push
git push -f origin "$BRANCH"

# Erfolg prüfen
if [ $? -eq 0 ]; then
    echo "[$NOW] Push erfolgreich."
else
    echo "[$NOW] Push fehlgeschlagen!"
fi
