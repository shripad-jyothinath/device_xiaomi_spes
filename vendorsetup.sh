# ROM source patches

color="\033[0;32m"
end="\033[0m"
blue="\e[0;34m"

echo -e "${color}Syncing dependencies${end}"
sleep 1

echo -e "${blue}Removing Unwanted stuff${blue}"

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

#Remove compat stuff to avoid errors
rm -rf hardware/lineage/compat

#Remove already synced stuff
rm -rf hardware/xiaomi
rm -rf vendor/xiaomi
rm -rf kernel/xiaomi


echo -e "${blue}Syncing bootctrl(1/7)${blue}"
#Sync qcom-caf bootctrl
rm -rf hardware/qcom-caf/bootctrl
git clone https://github.com/LineageOS/android_hardware_qcom_bootctrl.git -b lineage-19.1-caf hardware/qcom-caf/bootctrl
echo -e "${blue}Syncing hardware(2/7)${blue}"
#sync Hardware tree
git clone https://github.com/CHRISL7/hardware_xiaomi.git hardware/xiaomi 
echo -e "${blue}Syncing vendor(3/7)${blue}"
#Sync Vendor tree
git clone https://github.com/shripad-jyothinath/vendor_xiaomi_spes.git vendor/xiaomi/spes
echo -e "${blue}Syncing Kernel(4/7)${blue}"
#Sync Kernel tree
git clone https://github.com/Jabiyeff/kernel_xiaomi_spes_header.git kernel/xiaomi/spes

echo -e "${blue}Syncing Camera(5/7)${blue}"
rm -rf device/xiaomi/sm6225-common-miuicamera
git clone https://github.com/CHRISL7/android_device_xiaomi_sm6225-common-miuicamera.git device/xiaomi/sm6225-common-miuicamera

echo -e "${blue}Updating ota(6/7)${blue}"
rm -rf vendor/risingOTA
git clone https://github.com/shripad-jyothinath/android_vendor_RisingOTA vendor/risingOTA
rm -rf packages/apps/Updater
git clone https://github.com/shripad-jyothinath/android_packages_apps_Updater.git packages/apps/Updater
echo "${blue}Syncing webview (7/7)${blue}"
rm -rf external/chromium-webview/prebuilt/*
rm -rf .repo/projects/external/chromium-webview/prebuilt/*.git
rm -rf .repo/project-objects/LineageOS/android_external_chromium-webview_prebuilt_*.git

#Have to sync webview from lineage os manually

echo -e "${color}Finished sync!${end}"
