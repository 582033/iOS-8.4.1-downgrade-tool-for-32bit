#!/bin/bash
echo Make sure you have an iOS 8.4.1 ipsw downloaded and placed in this directory before continuing
sleep 1
echo This tool is in beta. 100% functionality is not guaranteed.
sleep 1
echo chose a device

## set device ##
PS3='Please enter your choice: '
options=("iPad 2 WiFi" "iPad 2 GSM" "iPad 3 WiFi" "iPhone 4S" "iPad Mini WiFi" "iPhone 5 GSM" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "iPad 2 WiFi")
         	echo building ipsw for iPad2,1 please wait...
			./Tools/ipsw iPad2,1_8.4.1_12H321_Restore.ipsw iPad2,1_8.4.1_12H321_Odysseus.ipsw --memory --ota Tools/Manifests/K93AP.plist
			echo ipsw creation complete
			break
            ;;
        "iPad 2 GSM")
            echo building ipsw for iPad2,2 please wait...
            ./Tools/ipsw iPad2,2_8.4.1_12H231_Restore.ipsw iPad2,2_8.4.1_12H321_Odysseus.ipsw --memory -bbupdate --ota Tools/Manifests/K94AP.plist
            echo ipsw creation complete
            break
            ;;
        "iPad 3 WiFi")
            echo building ipsw for iPad3,1 please wait...
            ./Tools/ipsw iPad3,1_8.4.1_12H321_Restore.ipsw iPad3,1_8.4.1_12H321_Odysseus.ipsw --memory --ota Tools/Manifests/J1AP.plist
            echo ipsw creation complete
            break
            ;;
        "iPhone 4S")
            echo building ipsw for iPhone4,1 please wait...
			./Tools/ipsw iPhone4,1_8.4.1_12H321_Restore.ipsw iPhone4,1_8.4.1_12H321_Odysseus.ipsw --memory -bbupdate --ota Tools/Manifests/N94AP.plist 
			echo ipsw creation complete
			break
            ;;
        "iPad Mini WiFi")
			echo building ipsw for iPad2,5 please wait...
			./Tools/ipsw iPad2,5_8.4.1_12H321_Restore.ipsw iPad2,5_8.4.1_12H321_Odysseus.ipsw --memory --ota Tools/Manifests/P105AP.plist
			echo ipsw creation complete
			break
            ;;
        "iPhone 5 GSM")
            echo building ipsw for iPhone5,1 please wait...
            ./Tools/ipsw iPhone5,1_8.4.1_12H321_Restore.ipsw iPhone5,1_8.4.1_12H321_Odysseus.ipsw --memory -bbupdate --ota Tools/Manifests/N41AP.plist
            echo ipsw creation complete
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
		
echo Done!
