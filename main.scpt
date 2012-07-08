do shell script "\
if [[ $(networksetup -getdnsservers AirPort) = There\\ aren\\'t\\ any\\ DNS* ]] ;\
then\
  networksetup -setdnsservers AirPort 8.8.8.8 8.8.4.4 ;\
  /usr/local/bin/growlnotify -t \"set DNS 8.8.8.8, 8.8.4.4\" -m \"$(date)\" ;\
else\
  networksetup -setdnsservers AirPort empty ;\
  /usr/local/bin/growlnotify -t \"clear all DNS entries\" -m \"$(date)\" ;\
fi ;\
"
