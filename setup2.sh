sudo apt-add-repository ppa:graphics-drivers/ppa -y
sudo apt-get update -y
sudo apt install -y nvidia-396 nvidia-cuda-toolkit
lsmod | grep nvidia
sudo nvidia-xconfig -a --cool-bits=31 --allow-empty-initial-configuration
nvidia-smi

echo "please reboot"
