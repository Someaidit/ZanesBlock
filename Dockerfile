# Use AdGuardHome base image
FROM adguard/adguardhome:latest

# Expose the AdGuardHome web UI and DNS ports
EXPOSE 80
EXPOSE 53/udp
EXPOSE 53/tcp

# Run AdGuardHome
CMD ["/opt/adguardhome/AdGuardHome", "-c", "/opt/adguardhome/AdGuardHome.yaml", "-w", "/opt/adguardhome"]
