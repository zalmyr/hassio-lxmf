#!/usr/bin/with-contenv bashio
set -e

# Activate the virtual environment if available
if [ -f "/opt/lxmf/bin/activate" ]; then
    bashio::log.info "Activating LXMF virtual environment..."
    source /opt/lxmf/bin/activate
else
    bashio::log.warning "Virtual environment not found, falling back to system Python."
fi

HA_URL=$(bashio::config 'ha_url')
HA_TOKEN=$(bashio::config 'ha_token')
ADMIN_HASHES=$(bashio::config 'admin_hashes')
BOT_NAME=$(bashio::config 'bot_name')

bashio::log.info "Starting LXMF ↔ HA Conversations bridge..."
bashio::log.info "Connecting to $HA_URL as $BOT_NAME"

# Run the LXMF bot
lxmf-ha-conversations \
    --ha-url "$HA_URL" \
    --ha-token "$HA_TOKEN" \
    --admins "$ADMIN_HASHES" \
    --name "$BOT_NAME"
