#https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=deb_network
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb; 
sudo dpkg -i cuda-keyring_1.0-1_all.deb; 
sudo apt update; 
sudo apt install cuda; 
rm cuda-keyring_1.0-1_all.deb; 
