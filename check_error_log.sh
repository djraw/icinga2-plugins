#!/bin/bash

# Dateiname, in der gesucht werden soll
DATEINAME="/root/log-cron.log"

# Überprüfen, ob die Datei existiert
if [ ! -f "$DATEINAME" ]; then
  echo "Datei '$DATEINAME' nicht gefunden."
  exit 3 # UNKNOWN-Status für Icinga/Nagios
fi

# Durchsuchen der Datei nach "error" oder "Error" (case-insensitiv)
if grep -Ei "error" "$DATEINAME" > /dev/null; then
  echo "WARNUNG: 'error' in '$DATEINAME' gefunden."
  exit 1 # WARNING-Status für Icinga/Nagios
else
  echo "OK: Keine Fehler in '$DATEINAME' gefunden."
  exit 0 # OK-Status für Icinga/Nagios
fi
