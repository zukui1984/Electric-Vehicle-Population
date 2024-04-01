# Electric vehicle population

## Problem Description:
The dataset from DATA.GOV provides information on Battery Electric Vehicles (BEVs) and Plug-in Hybrid Electric Vehicles (PHEVs) registered with the Washington State Department of Licensing (DOL), updated as of *March 16, 2024*

### Possible issues ### 
* How many total number of electric vehicles (battery / hybrid) that registered in Washington? 
* How does their distribution vary across different regions or counties within Washington State?
* Are there specific brands or models that dominate the market?
* Are there any noticeable trends in the adoption of electric vehicles?

## Google Cloud Platform (GCP):
Create GCP Account:

1. Sign up for a GCP account at the official portal.
Note: Credit card required for signup, but a free trial is available.

2. Create a New Project:
- Navigate to the GCP Console.
- Install Google SDK
- Create a new project with a suitable name. Note down the project ID.

3. Create Service Account:
- In the sidebar, go to "IAM & Admin" > "Service accounts." After click "Create service account."
- Provide a name and description.
- Choose roles: BigQuery Admin, Storage Admin, Compute Admin. Then click "Create."

4. Download Service Account Key:
- Click on the created service account.
- Go to the "Keys" tab and click "Add Key."
- Choose "JSON" key type and click "Create" to download.

5. Enable BigQuery API:
- Go to the BigQuery API and after enable it

## Terraform 
* terraform init to create terraform and installation guidance can be found on their official website
* Use gcloud auth login to confirm authentication 
* terraform plan: For code structure of project (main.tf and variable.tf)
* terraform apply: Once is ready, you can proceed this command

## Mage AI
1. Install Mage AI: Use pip install mage-ai.
2. Clone Repository: Clone Mage AI repository from *https://docs.mage.ai/getting-started/setup*
3. Secure Secrets: Copy dev.env to .env
4. Build Docker: Execute docker-compose build
5. Update Mage AI: Pull latest version with *docker pull mageai/mageai:latest*
6. Launch Mage AI: Start the container with docker-compose up and visit *localhost:6789*
7. Configure Docker,GCP,etc settings: Adjust settings in *io_config.yaml* from VS code or Google Cloud keys.
8. Once is ready, you can start the pipeline. Starting with Data Loader, Transformer and Exporters

## DBT - data build tool
1. Use service account keys from GCP to create a new project on dbt platform
2. 2

## Google Looker
1. 



