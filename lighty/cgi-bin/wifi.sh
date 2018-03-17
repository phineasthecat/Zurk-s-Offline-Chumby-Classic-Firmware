#!/bin/sh                                                                       
echo "Content-type: text/html"                                                  
echo ""
echo "<html><head>"
echo "<title>Chumby Wireless Status</title>"
echo "<meta http-equiv=\"Refresh\" content=\"5\";>"
echo "</head>"
echo "<body>"
echo "<h4>Wireless Stats</h4>"                                                  
echo "<pre>"                                                                    
echo " --wpa_cli--- "
 /usr/local/sbin/wpa_cli status verbose
echo " --rausb--- "
iwconfig rausb0 |grep -v "Encryption key:"
echo " --wlan--- "
iwconfig wlan0 |grep -v "Encryption key:"
echo " ----- "
echo "</pre>"                                                                   
echo "<pre>"                                                                    
cat /proc/net/wireless                                                          
echo "</pre>"
echo "</body></html>"
