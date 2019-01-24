# iOS-8.4.1-downgrade-tool-for-32bit

## Information on this tool
This tool is in beta right now and only supports the iPad2,1 (K93AP), iPad2,2 (K94AP), iPad2,5 (P105AP), iPhone4,1 (N94AP), iPhone5,1 (N94AP), iPad3,1 (J1AP).
This tool is to automate OTA downgrades to iOS 8.4.1 using Odysseus. 
There's a 0% chance of iPhone 5C support unless Apple decides to resign iOS 8.4.1 OTA on iPhone5,3 and iPhone5,4!

## Usage
To build a custom Odysseus ipsw for OTA downgrades to 8.4.1 type
```
./make_ipsw.sh
```
To restore the device with the custom Odysseus ipsw type
```
./restore.sh
```
## Credits
```
@Nalu_Tech for the tool
@QuilviaTech for iPad 2 GSM, iPhone 5 GSM, iPad 3 support
@alitek123 and @Trsvsr for idevicererestore
@xerub and @daytonhasty for Odysseus
@apple for OTA signing 8.4.1 and providing OTA manifests
```
