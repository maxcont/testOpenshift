FROM jsreport/jsreport

# Imposta correttamente gli utenti e i gruppi
USER root

# Crea la cartella "logs" e imposta i permessi corretti
RUN mkdir -p /app/jsreport/data/logs && \
    chown -R 1001:0 /app/jsreport/data/logs && \
    chmod -R g+rwX /app/jsreport/data/logs

# Crea la cartella "data" e imposta i permessi corretti
RUN mkdir -p /app/jsreport/data && \
    chown -R 1001:0 /app/jsreport/data && \
    chmod -R g+rwX /app/jsreport/data

# Torna all'utente non privilegiato predefinito
USER 1001
