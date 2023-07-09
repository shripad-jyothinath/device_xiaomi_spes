# ROM source patches

color="\033[0;32m"
end="\033[0m"
blue="\e[0;34m"

echo -e "${color}Syncing dependencies${end}"
sleep 1

echo -e "${blue}Removing Unwanted stuff${blue}"

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

#Remove already synced stuff
rm -rf hardware/xiaomi
rm -rf vendor/xiaomi
rm -rf kernel/xiaomi

echo -e "${blue}Syncing bootctrl(1/6)${blue}"
#Sync qcom-caf bootctrl
rm -rf hardware/qcom-caf/bootctrl
git clone https://github.com/LineageOS/android_hardware_qcom_bootctrl.git -b lineage-19.1-caf hardware/qcom-caf/bootctrl
echo -e "${blue}Syncing hardware(2/6)${blue}"
#sync Hardware tree
git clone https://github.com/CHRISL7/hardware_xiaomi.git hardware/xiaomi 
echo -e "${blue}Syncing vendor(3/6)${blue}"
#Sync Vendor tree
git clone https://github.com/shripad-jyothinath/vendor_xiaomi_spes.git vendor/xiaomi/spes
echo -e "${blue}Syncing Kernel(4/6)${blue}"
#Sync Kernel tree
git clone https://github.com/Jabiyeff/kernel_xiaomi_spes_header.git kernel/xiaomi/spes

echo -e "${blue}Syncing Camera(5/6)${blue}"
rm -rf device/xiaomi/sm6225-common-miuicamera
git clone https://github.com/CHRISL7/android_device_xiaomi_sm6225-common-miuicamera.git device/xiaomi/sm6225-common-miuicamera

echo -e "${blue}Updating ota(6/6)${blue}"
rm -rf vendor/risingOTA
git clone https://github.com/shripad-jyothinath/android_vendor_RisingOTA vendor/risingOTA

echo -e "${color}Finished sync!${end}"
