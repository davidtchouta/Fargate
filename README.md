[Youtube]([https://www.google.com](https://www.youtube.com/watch?v=DQc1VzvBrM8)


MLOPS Tutorials :


Deploy ML flask App in : 
	- AWS Fargate ===> Tutorial already done ✅  
	- GCP
	- Azure Cloud

Build, train and deploy models in AWS Sagemaker

Build Gradio app 

Build Gradio app and deploy in Hugging Face

Build Streamlit app

Build Streamlit app and deploy in Render hosting solution


ML Pipelines :
	- ZenML
	- MLFlow
	- KubeFlow
	- DVC
	- Pycaret
















# Build and deploy your first machine learning flask web app in AWS Fargate

EC2 = cluster managed manually
Fargate = cluster automatically managed

Tools used and Steps : 

Python Flask library
Pycaret library
Docker to build image app
ECR = Amazon Elastic Container Registry (image management)
ECS = Amazon Elastic Container Service (cluster management)
AWS account and AWS User with ACCESS KEY ID, password and right permissions
EDIT inbound rules of firewall to access to the  ML web app and make predictions
ML web app in action


Launch docker

1) open a git bash 
2) create a virtuel environnment 
3) create a virtual kernel
# install ipykernel
pip install ipykernel

# create notebook kernel
python -m ipykernel install --user --name pycaretenv --display-name "pycaretenvkernel"



conda install -c conda-forge awscli

aws --version

aws configure
	ACCESS KEY ID
	password
	region
	format : json

Construisez votre image Docker localement avec :
==>docker build -t david-fargate-container:latest .

Avant de pousser l'image, taguez-la avec l'URI de votre dépôt ECR :
==> docker tag david-fargate-container:latest 059233856534.dkr.ecr.eu-west-3.amazonaws.com/david-fargate-container:latest

Poussez l'image taguée vers votre dépôt ECR avec :
==> docker push 059233856534.dkr.ecr.eu-west-3.amazonaws.com/david-fargate-container:latest

Aller dans Amazon ECR Repository voir l'image :


Dans Amazon Elastic Container Service 
	Clusters
	create cluster

Create a Task definition : Cliquer sur Task definitions 

Configurer == puis créer 

Run task dans Actions 

Ajouter une regle pour le parefeu : 
	Cliquer Sur ENI ID 
	Cliquer sur Security groups à droite
	Cliquer sur EDIT inbound rules
	Cliquer sur ADD rule
