FROM jsreport/jsreport

# Copia la cartella data in jsreport
COPY data /app/data

# Aggiungi qui eventuali altre istruzioni per la configurazione

# COPY jsreport.config.json /app/jsreport.config.json