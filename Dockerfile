FROM jsreport/jsreport

# Imposta correttamente gli utenti e i gruppi
USER root

# Crea la cartella all'interno del contenitore e imposta i permessi corretti
RUN mkdir -p /app/jsreport/data && \
    chown -R 1001:0 /app/jsreport/data && \
    chmod -R g+rwX /app/jsreport/data

# Torna all'utente non privilegiato predefinito
USER 1001

# Aggiungi qui eventuali altre istruzioni per la configurazione
# Ad esempio, se hai bisogno di installare dipendenze aggiuntive, puoi farlo qui.

# Esempio di istruzione per la copia di file di configurazione personalizzati
# COPY jsreport.config.json /app/jsreport.config.json
