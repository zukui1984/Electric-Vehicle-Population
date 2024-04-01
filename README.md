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
- Navigate to the GCP Console & install Google SDK
- Create a new project with a suitable name. Note down the project ID

3. Create Service Account:
- In the sidebar, go to "IAM & Admin" > "Service accounts." After click "Create service account"
- Provide a name and description
- Choose roles: BigQuery Admin, Storage Admin, Compute Admin. Then "Create"

4. Download Service Account Key:
- Click on the created service account then go to the "Keys" tab and click "Add Key"
- Choose "JSON" key type and click "Create" to download

5. Enable BigQuery API: Go to the BigQuery API and after enable it

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
![Mage Ai Tree](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/mage%20tree.JPG)

## DBT - data build tool
1. Sign Up: Go to the dbt Cloud website and sign up for an account.
2. Create a New Project: Once logged in, create a new project by clicking on the "New Project" button
3. Connect Your Data Warehouse: Connect your data warehouse to dbt Cloud by providing *service account key* from GCP
4. Initialize Your Project: After connecting your data warehouse, dbt Cloud will guide you through initializing your project. Follow the prompts to set up your project structure.
5. Write SQL Models: Write SQL models directly in the dbt Cloud interface and choose "Models" tab to create new models (cafv_eligibility.sql, vehicle_aggregats.sql, vehicle_locations.sql) and "Macros" - especially useful for big SQL project.
6. Run dbt: Run dbt directly from the dbt Cloud interface once everything is ready. This process will transfer the data to GCP dataset directly, just in case is working without any issues.
7. Documentation: Use *dbt docs generate & dbt docs generate*
![Lineage](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/dbt%20lineage.JPG)

## Google Looker
1. Sign in to Google Looker Studio using your Google account 
2. Use the BigQuery Connector to connect your dataset - In this case choose the file that 
3. Choose your project name and then select the dataset you want to work with. This action will take you to the dashboard page
![Graph 1](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/visualisation-1.JPG)
![Graph 2](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/visualisation-2.JPG)




