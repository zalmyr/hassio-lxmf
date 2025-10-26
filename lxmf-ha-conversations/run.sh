#!/usr/bin/with-contenv bashio
set -e

HA_URL=$(bashio::config 'ha_url')
HA_TOKEN=$(bashio::config 'ha_token')
ADMIN_HASHES=$(bashio::config 'admin_hashes')
BOT_NAME=$(bashio::config 'bot_name')

bashio::log.info "Starting LXMF ↔ HA Conversations bridge..."
bashio::log.info "Home Assistant URL: ${HA_URL}"
bashio::log.info "Bot Name: ${BOT_NAME}"

lxmf-ha-conversations \
    --ha-url "$HA_URL" \
    --ha-token "$HA_TOKEN" \
    --admins "$ADMIN_HASHES" \
    --name "$BOT_NAME"
