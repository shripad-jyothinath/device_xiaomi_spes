# ROM source patches

color="\033[0;32m"
end="\033[0m"

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

echo -e "${blue}Syncing bootctrl(1/5)${blue}"
#Sync qcom-caf bootctrl
rm -rf hardware/qcom-caf/bootctrl
git clone https://github.com/LineageOS/android_hardware_qcom_bootctrl.git -b lineage-19.1-caf hardware/qcom-caf/bootctrl
echo -e "${blue}Syncing hardware(2/5)${blue}"
#sync Hardware tree
git clone https://github.com/CHRISL7/hardware_xiaomi.git hardware/xiaomi 
echo -e "${blue}Syncing vendor(3/5)${blue}"
#Sync Vendor tree
git clone https://github.com/shripad-jyothinath/vendor_xiaomi_spes.git vendor/xiaomi/spes
echo -e "${blue}Syncing Kernel(4/5)${blue}"
#Sync Kernel tree
git clone https://github.com/Jabiyeff/kernel_xiaomi_spes_header.git kernel/xiaomi/spes

echo -e "${color}Finished sync!${end}"
