# icinga2-plugins
Collection of custom plugins for Nagios/Icinga2 etc.

Scripts to cover functions not available by the classic "monitoring-plugins" package.

Usage:
1. rename or link to omit the extension, like .. mv check_<plugin>.sh check_<plugin>
2. place in folder for monitoring plugins, e.g. "/usr/lib/nagios/plugins/" or "/usr/lib/monitoring-plugins/"
3. make executable: $ chmod +x check_<plugin>

Currently contains these plugins:
- check_apk.sh : Plugin to check for package updates on Alpine Linux hosts
- check_md_raid.sh : simple plugin to check the Raid Status on Synology NAS systems
