# Wi-fi using Shell Script

1. Check the Wi-Fi card status:
   ```
   sudo iwconfig wlp1s0 power off/on
   ```
2. Scan to check the ESSID:
   ```
   sudo iwlist wlp1s0 scan |grep ESSID
   ```
3. Generate the correct data for it:
   ```
   sudo wpa_passphrase "2.4G" "1234567890" > 2g.conf
   ```
4. Try to connect:
   ```
   sudo wpa_supplicant -i wlp1s0 -c 2G.conf -D wext,nl80211
   ```
5. Maybe it's necessary to shutdown the networking service:
   ```
   sudo systemctl shutdown networking.service
   ```
6. If it worked, you need to add a background param:
   ```
   sudo wpa_supplicant -B -i wlp1s0 -c 2G.conf -D wext,nl80211
   ```
7. Run the DHCP
   ```
   sudo dhclient wlp1s0
   ````
