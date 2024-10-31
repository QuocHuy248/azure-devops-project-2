git clone https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code.git
cd nd082-Azure-Cloud-DevOps-Starter-Code/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn
mv * /home/odl_user/azure-devops-project-2
cd /home/odl_user/azure-devops-project-2
rm -rf nd082-Azure-Cloud-DevOps-Starter-Code
az webapp up --name webappquochuy248 --resource-group Azuredevops --sku B1 --logs --runtime "PYTHON:3.10"
./make_predict_azure_app.sh
az webapp log tail --name webappquochuy248 --resource-group Azuredevops