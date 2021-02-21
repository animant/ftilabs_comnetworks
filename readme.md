# Install

Download and install Workstation Player: https://www.vmware.com/uk/products/workstation-player/workstation-player-evaluation.html
Download and deploy xubuntu vmware image: https://www.linuxvmimages.com/images/xubuntu-2004/ (Username:Xubuntu, password:xubuntu)

Install git: sudo apt update ; sudo apt install -y git
Clone this repo: git clone https://github.com/animant/ftilabs_comnetworks.git

Deploy testing infrastructure: cd ftilabs_comnetworks; setup_env.sh


# Run testing environment

Run docker based infrastructure: start_lab.sh

Wait 1-2 minutes

Connect to client_pc1 container via ssh: ssh -i ./assets/pc1_access root@127.0.0.1 -p 8022
