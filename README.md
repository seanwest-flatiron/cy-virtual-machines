## Purpose
This is a devops pipeline to help the
continuing development and exporting of VMs which we use in our curriculum, including in Capstone.

Instead of manually setting up the VMs, all modifications to a VM are codified using Vagrant and simple scripts.

This means that:
 - No unintentional .bash_history, files, or logs left behind (which students will find)
 - Changes can be quickly added, changed, and removed
 - Upgrades (e.g. apt upgrades) can in theory be automated, and even exported to a google drive
 - For Capstone, every aspect is intentional and documented

## Canvas VM Changes
The main branch contains changes that may require modifications to the existing Canvas course. Those changes are currently being used on Live cohorts.

A replica of the original was created initially when building this all out. That has it's own branch here: https://github.com/seanwest-flatiron/virtual-machines/tree/original and can be access from the command line with `git checkout original`.

## Requirements
 - Upgrade VirtualBox to the latest version
 - Install Vagrant: https://developer.hashicorp.com/vagrant/install

## Installation

```
git clone git@github.com:seanwest-flatiron/cse-capstone.git
cd cse-capstone
```

Now add into the `boxes` directory the `lubuntu-desktop-22.04-v2.box`` file from here: https://drive.google.com/drive/folders/12oq-RQBwUPyk75iS9C8c3pCHHlEiEAr9?usp=share_link

## Usage

To fully create and export a VM into the ovas directory:

```bash
cd capstone-pc2
# Mac/Linux
bash create_and_export.ps1
# Windows
powershell create_and_export.ps1
```

## Development

To bring up a temporary VM to experiment with:
```bash
cd capstone-pc2 # or another VM
vagrant up
```

Then after making your desired changes in the Vagrantfile or other files, run:
```bash
vagrant destroy -f
vagrant up
```

If you feel like your changes are good to go, then run the `create_and_export.ps1` script and the resulting .ova will be placed in the ovas directory.

If you want to push your changes up to this repo:
```bash
git add .
git commit -m 'description of changes'
git push origin main
```

## Additional Information

- The goal was to keep this simple, so that it could be easily understood and maintained
- All shell scripts refrain from variables, conditionals, and loops in order to mimic commands that could have been typed in sequentially when manually setting up a VM
- Vagrant has official VyOS, Kali, an Ubuntu Server base images (called boxes). There is however no official Ubuntu/Lubuntu Desktop 22.04 images, so we have to create them ourselves.
- I've used these the guides for creating a box: https://www.engineyard.com/blog/building-a-vagrant-box-from-start-to-finish/ and https://developer.hashicorp.com/vagrant/docs/boxes/base


