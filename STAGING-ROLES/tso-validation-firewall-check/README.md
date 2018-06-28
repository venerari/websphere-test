
# TSO-Validation for Linux and Windows
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


***Clone this repository***

```
git clone https://github.com/venerari/tso-validation-firewall-check.git
cd tso-validation-firewall-check

# Or if you already have the repository.
cd tso-validation-firewall-check
# To update to the latest changes.
git fetch origin master
git reset --hard origin/master
git pull
git pull
```

Generate the linux.csv file, see the example linux.csv on the current folder and overwrite it with your new linux.csv.
Put the password on the group_var/all with variable ansible_become_pass: xxxxxxxxxx.  Just be carefull with the security, this is not protected, ansible-vault is not added here, you should add it your self.

***Start the validation for linux***
```
#below is the automatic script that automate everything...
./validate-linux.sh

#or the manual ansible scripts
ansible-playbook -i inventory/local validate-linux1.yml
ansible-playbook -i inventory/linux2 validate-linux2.yml
ansible-playbook -i inventory/linux3 validate-linux3.yml

#description of ansible script
validate-linux1.yml = Generate variables (linux.yml) and inventories (linux2 and linux3)
validate-linux2.yml = Trigger the firewall port of the remote server
validate-linux3.yml = Capture the validation and output of the firewall check
```

***Copy the linux_output.csv on the current folder.***

Generate the windows.csv file, see the example windows.csv on the current folder and overwrite it with your new windows.csv.
Put the password on the group_var/all with variable ansible_become_pass: xxxxxxxxxx.  Just be carefull with the security, this is not protected, ansible-vault is not added here.

***Start the validation for windows,***
```
#below is the automatic script that automate everything...
./validate-windows.sh

#or the manual ansible scripts
ansible-playbook -i inventory/local validate-windows1.yml
ansible-playbook -i inventory/wins2.ini validate2-windows2.yml
ansible-playbook -i inventory/wins3.ini validate3-windows3.yml

#description of ansible script
validate-windows1.yml = Generate variables (windows.yml) and inventories (wins2.ini and wins3.ini)
validate-windows2.yml = Trigger the firewall port of the remote server
validate-windows3.yml = Capture the validation and output of the firewall check
```

***Copy the windows_output.csv on the current folder.***

# Using Ansible-Tower
Please get the copy from the Team-Lead the Documentation for Ansible-Tower in Word format.

# Example Input
See the linux.csv or windows.csv.

# Example Output
See the linux_output-sample.csv.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Windows Static Content

```

ansible-playbook -i inventory/local stage1.yml
ansible-playbook -i inventory/wins.ini stage2.yml

#description of ansible script
stage1.yml = Generate variables (common.yml) and inventory (wins.ini)
stage2.yml = Final Staging
```
