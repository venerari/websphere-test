## Standalone JBoss Deployment
To run the playbook:

	ansible-playbook -i hosts site.yml

When the playbook run completes, you should be able to see the JBoss
## Application deployment

You can deploy the HelloWorld and Ticket Monster demo applications to JBoss hosts that have been deployed using site.yml, as above.

Run the playbook using:
	
	ansible-playbook -i hosts deploy-application.yml
	
