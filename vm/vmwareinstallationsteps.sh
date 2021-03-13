openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=VMware/"
/usr/src/linux-headers-`uname -r`/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmmon)
/usr/src/linux-headers-`uname -r`/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmnet)
mokutil --import MOK.der

#restart
mokutil --test-key MOK.der

#I think these were for 3d acceleration check?????
#sudo apt-get install mesa-utils
#glxinfo | grep "direct rendering"

echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> ~/.vmware/preferences 

#no need to try even these, but not sure
insmod $(modinfo -n vmmon)
insmod $(modinfo -n vmnet)

host MyGuestVM {
hardware ethernet 00:0C:29:25:C2:34;
fixed-address 172.16.1.6;
}
