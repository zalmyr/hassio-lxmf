ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# Install dependencies
RUN apk add --no-cache python3 py3-pip git

# Create isolated virtual environment for LXMF
RUN python3 -m venv /opt/lxmf && \
    . /opt/lxmf/bin/activate && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir git+https://github.com/metrafonic/lxmf-ha-conversations.git && \
    deactivate

# Copy startup script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Add venv to PATH so it's globally visible
ENV PATH="/opt/lxmf/bin:$PATH"

CMD ["/run.sh"]
