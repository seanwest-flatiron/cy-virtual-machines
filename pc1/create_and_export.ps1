vagrant destroy -f
vagrant up
vagrant ssh -c 'sudo apt update && sudo apt upgrade -y'
vagrant halt

VBoxManage startvm pc1 --type headless
echo "Waiting 120 seconds for VM to fully boot back up..."
sleep 40
echo "80 more seconds..."
sleep 40
echo "40 more seconds..."
sleep 40

ssh -o StrictHostKeyChecking=no -p 21901 -i ../keys/id_rsa root@localhost 'bash ~vagrant/teardown.sh'
echo "Waiting 20 seconds before shutting down VM..."
sleep 20

VBoxManage controlvm pc1 poweroff
sleep 5

VBoxManage modifyvm pc1 --nic2 null
VBoxManage modifyvm pc1 --nic2 none

echo "Exporting to .ova. This may take a while."
VBoxManage export pc1 --output "../ovas/pc1.ova"

echo "Done!"
