#!/bin/bash
echo This tool is in beta. 100% functionality is not guaranteed.
sleep 1
echo Make sure your device is in kDFU mode
echo you can do this on most devices using an app in Cydia repo: repo.tihmstar.net
sleep 3
## set device ##
PS3='Please enter your choice: '
options=("iPad 2 WiFi" "iPad 2 GSM" "iPad 3 WiFi" "iPhone 4S" "iPad Mini WiFi" "iPhone 5 GSM" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "iPad 2 WiFi")
         	echo Restoring iPad2,1 please wait...
			./tools/idevicerestore -e -o Tools/Manifests/K93AP.plist iPad2,1_8.4.1_12H321_Odysseus.ipsw 
			break
            ;;
        "iPad 2 GSM")
            echo Restoring iPad2,2 please wait...
            ### get shsh
            if [ -e "iPad2,2_8.4.1_12H321_Restore.ipsw" ]; then
                echo "getting shsh..."
                ECID="$((./tools/idevicerestore -o Tools/Manifests/K94AP.plist -t iPad2,2_8.4.1_12H321_Restore.ipsw) | sed -n -e 's/^.*Found ECID //p')"
                mv -v shsh/$ECID-iPad2,2-8.4.1.shsh shsh/$ECID-iPad2,2-8.4.1-12H321.shsh
            else
                echo "iPad2,2_8.4.1_12H321_Restore.ipsw does not exist"
            fi
            ./tools/idevicererestore -r iPad2,2_8.4.1_12H321_Odysseus.ipsw 
            break
            ;;
        "iPad 3 WiFi")
            echo Restoring iPad3,1 please wait...
            		./tools/idevicerestore -e -o Tools/Manifests/J1AP.plist iPad3,1_8.4.1_12H321_Odysseus.ipsw
            		break
            ;;
         "iPhone 4S")
            echo Restoring iPhone4,1 please wait...
            ### get shsh
            if [ -e "iPhone4,1_8.4.1_12H321_Restore.ipsw" ]; then
                echo "getting shsh..."
                ECID="$((./tools/idevicerestore -o Tools/Manifests/N94AP.plist -t iPhone4,1_8.4.1_12H321_Restore.ipsw) | sed -n -e 's/^.*Found ECID //p')"
                mv -v shsh/$ECID-iPhone4,1-8.4.1.shsh shsh/$ECID-iPhone4,1-8.4.1-12H321.shsh
            else
                echo "iPhone4,1_8.4.1_12H321_Restore.ipsw does not exist"
            fi
            ./tools/idevicererestore -r iPhone4,1_8.4.1_12H321_Odysseus.ipsw 
            break
            ;;
        "iPad Mini WiFi")
            echo Restoring iPad2,5 please wait...
			./tools/idevicerestore -e -o Tools/Manifests/P105AP.plist iPad2,5_8.4.1_12H321_Odysseus.ipsw 
			break
            ;;
        "iPhone 5 GSM")
            echo Restoring iPhone5,1 please wait...
            ### get shsh
            if [ -e "iPhone5,1_8.4.1_12H321_Restore.ipsw" ]; then
                echo "getting shsh..."
                ECID="$((./tools/idevicerestore -o Tools/Manifests/N41AP.plist -t iPhone5,1_8.4.1_12H321_Restore.ipsw) | sed -n -e 's/^.*Found ECID //p')"
                mv -v shsh/$ECID-iPhone5,1-8.4.1.shsh shsh/$ECID-iPhone5,1-8.4.1-12H321.shsh
            else
                echo "iPhone5,1_8.4.1_12H321_Restore.ipsw does not exist"
            fi
            ./tools/idevicererestore -r iPhone5,1_8.4.1_12H321_Odysseus.ipsw 
            break
            ;;
        "Quit")
            		break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
		
echo Done!
echo restore complete
