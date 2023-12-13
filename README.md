## Purpose
This is an experiment in creating a simple devops pipeline to help the
continuing development and exporting of the Capstone virtual machines.

Instead of manually setting up the VMs, all modifications to a base
Lubuntu/Vyos/Kali box are codified using Vagrant and simple scripts.

This means that:
 - Every aspect of capstone is intentional and documented
 - No unintentional .bash_history, files, or logs left behind (which students
   will find)
 - Changes can be quickly added, changed, and removed
 - Upgrades (e.g. apt upgrades) can in theory be automated, and even exported
   to a google drive

## Changes
The main branch contains changes that may require modifications to the existing Canvas course. Those changes are currently being used on Live cohorts.

A replica of the original was created initially when building this all out. That has it's own branch here: https://github.com/seanwest-flatiron/cse-capstone/tree/original and can be access from the command line with `git checkout original`.

## Requirements
 - Upgrade VirtualBox to the latest version
 - Install Vagrant: https://developer.hashicorp.com/vagrant/install

## Installation

```
git clone git@github.com:seanwest-flatiron/cse-capstone.git
cd cse-capstone
chmod 600 keys/id_rsa
```

Now add into the `boxes` directory the `lubuntu-desktop-22.04-v2.box`` file from here: https://drive.google.com/drive/folders/12oq-RQBwUPyk75iS9C8c3pCHHlEiEAr9?usp=share_link

## Usage

To fully create and export a VM, cd into it's directory (e.g. `pc2`) and then run the
`create_and_export.ps1` script. This can be run with powershell or bash. The resulting .ova file will be in the `ovas` directory

For example
```bash
cd pc2
bash create_and_export.ps1
```

## Development

```bash
cd pc2 # or another VM
# bring up a temporary VM to experiment with
vagrant up
# make changes to the Vagrant file
# if it doesn't need the whole VM to be recreated:
vagrant provision
# if it needs the entire VM to be recreated:
vagrant reload
```

If you feel like your changes are good to go, then run the `create_and_export.ps1` script and your ova is good to go

If you want to push your changes up to this repo:
```bash
git add .
git commit -m 'description of changes'
git push origin main
```

## Additional Information

- The goal was to keep this simple, so that it could be easily understood and
  maintained
- All shell scripts refrain from variables, conditionals, and loops in order
  to mimic commands that could have been typed in sequentially when manually
setting up a VM
- Vagrant has official Vyos and Kali VM base images (called boxes). There is no official Lubuntu
  Desktop 22.04 image, so a custom one was created to be put into the boxes
directory using this guide: https://www.engineyard.com/blog/building-a-vagrant-box-from-start-to-finish/.


