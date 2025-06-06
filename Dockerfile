FROM n8nio/n8n:latest

USER root

ENV N8N_PORT=5678 \
ENV N8N_HOST=0.0.0.0 \
    N8N_BASIC_AUTH_ACTIVE=true \
    N8N_ENCRYPTION_KEY=your-32-character-encryption-key \
    N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV GENERIC_TIMEZONE=Europe/Jerusalem

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
    CMD curl -f http://localhost:5678/healthz || exit 1

EXPOSE 5678
CMD ["n8n"] 
