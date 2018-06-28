#!/bin/bash
ansible-playbook -i inventory/tsohosts Apache_WL_App_All_steps.yml --extra-vars "appname_i=ARISInter env_dtup=DEV webservers=webservers_Inter"
