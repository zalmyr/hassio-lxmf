# LXMF ↔ Home Assistant Conversations Add-on

Integrate the LXMF messaging network with your Home Assistant Conversation service.

---

## 🧩 Installation

1. In Home Assistant:
   - Go to **Settings → Add-ons → Add-on Store → ⋮ → Repositories**.
   - Add: `https://github.com/yourusername/lxmf-ha-repo`

2. Find **LXMF HA Conversations** in the list and install it.

3. Configure options like:

```yaml
ha_url: "http://homeassistant.local:8123"
ha_token: "YOUR_LONG_LIVED_TOKEN"
admin_hashes: "hash1,hash2"
bot_name: "LXMF-Bot"
