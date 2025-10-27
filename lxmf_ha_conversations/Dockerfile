ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# Install dependencies
RUN apk add --no-cache python3 py3-pip git

# Install the LXMF HA Conversations tool
RUN pip install git+https://github.com/metrafonic/lxmf-ha-conversations.git

# Copy runtime script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
