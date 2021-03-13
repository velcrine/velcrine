vm(){

if [ "$1" = "s-restart" ]
then
sudo systemctl restart vmware.service
return
fi

if [ $1 = "net" ] 
then 
/usr/lib/vmware/bin/vmware-netcfg & disown
exit
fi


wmctrl -s 1
vmplayer  /home/pkv/bin/vmachines/$1/vm.vmx > /dev/null & disown
sleep 5
wmctrl -s 0
exit
#/etc/vmware/vmnet8/dhcpd/dhcpd.conf
#/etc/vmware/vmnet8/nat.mac

}


