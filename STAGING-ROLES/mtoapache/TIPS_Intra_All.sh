#!/bin/bash
ansible-playbook -i inventory/tsohosts Apache_WL_App_All_steps.yml --extra-vars "appname_i=TIPSIntra env_dtup=TEST webservers=webservers_Intra remove_then_add_static_content=False"
