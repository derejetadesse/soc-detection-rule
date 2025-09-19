# SOC Detection Rules

Practice repo by **Dereje Deressa** for writing detections across:
- **Sigma** (SIEM-agnostic rules)
- **Suricata** (IDS/IPS signatures)
- **Zeek** (Network Security Monitoring scripts)

---

## 📂 Folders
- `/sigma` – SIEM-agnostic rules (`.yml`)
- `/suricata` – IDS/IPS signatures (`.rules`)
- `/zeek` – NSM scripts (`.zeek`)

---

## 🧪 How to test locally

### Suricata
1. Ensure Suricata is installed.  
2. Save rules to `suricata/http_user_agent.rules`.  
3. Run live (replace `<iface>` with `eth0`, `en0`, etc.):
   ```bash
   sudo suricata -S suricata/http_user_agent.rules -i <iface>
