# Electric Vehicle Population

## Problem Description:
The dataset from DATA.GOV provides information on Battery Electric Vehicles (BEVs) and Plug-in Hybrid Electric Vehicles (PHEVs) registered with the Washington State Department of Licensing (DOL), updated as of *March 16, 2024* [Dataset link](https://catalog.data.gov/dataset/electric-vehicle-population-data)

### Possible issues ### 
* How many total number of electric vehicles (battery / hybrid) that registered in Washington? 
* How does their distribution vary across different regions or counties within Washington State?
* Are there specific brands or models that dominate the market?
* Are there any noticeable trends in the adoption of electric vehicles?

## Table of Content 
1. Google Cloud Platform (GCP) - https://cloud.google.com/ 
2. Terraform - Infrastructure as Code (IaC) - https://www.terraform.io/
3. Mage AI - Orchestration tool - https://www.mage.ai/
5. dbt - data build tool - https://cloud.getdbt.com/
6. Google Looker - Data visualisation - https://lookerstudio.google.com/

## Diagram structure
![Diagram](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/miro%20diagram.jpg)

## Google Cloud Platform (GCP):
Create GCP Account:

1. Sign up for a GCP account at the official portal.
**Note**: Credit card required for signup, but a free trial is available

2. Create a New Project:
- Navigate to the GCP Console & install Google SDK
- Create a new project with a suitable name. Note down the project ID

3. Create Service Account:
- Go to "IAM & Admin" > "Service accounts" then create. 
- Provide a name and description
- Choose roles: BigQuery Admin, Storage Admin, Compute Admin. Then "Create"

4. Download Service Account Key:
- Click on the created service account then go to the "Keys" tab and click "Add Key"
- Choose "JSON" key type and create

5. Enable **BigQuery API, Compute Engine, Storage Admin** at API Library

## Terraform 
* `terraform init` to create terraform and installation guidance can be found on their official website
* Use `gcloud auth login` to confirm authentication 
* `terraform plan`: For code structure of project ([main.tf](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/terraform/main.tf) and [variable.tf](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/terraform/variable.tf))
* `terraform apply`: Once is ready, you can proceed this command

## Mage AI
1. Install Mage AI: Use pip install mage-ai.
2. Clone Repository: Clone Mage AI repository from *https://docs.mage.ai/getting-started/setup*
3. Secure Secrets: Copy `dev.env` to `.env`
4. Build Docker: Execute docker-compose build
5. Update Mage AI: Pull latest version with `docker pull mageai/mageai:latest`
6. Launch Mage AI: Start the container with `docker-compose up` and visit `localhost:6789`
7. Configure Docker,GCP,etc settings: Adjust settings in `io_config.yaml` from VS code or Google Cloud keys.
8. Once is ready, you can start the pipeline. Starting with Data Loader, Transformer and Exporters

<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/zukui1984/dbt_project/blob/master/data-loader.JPG" width="300" />
  <img src="https://github.com/zukui1984/dbt_project/blob/master/data%20exporter.JPG" width="300" />
  <img src="https://github.com/zukui1984/dbt_project/blob/master/data%20exporter.JPG" width="300" />
</div>
<p>The <b>LEFT image (Data Loader)</b> shows the result of the data loader process, which loads the NYC taxi trip data into the system for further processing</p>
<p>The <b>MIDDLE  & RIGHT image (Data Exporter)</b> shows the result of the data export process, which exports the processed data for use in other applications or analysis tools.</p>

 <img src="https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/mage-tree.JPG" width="500" />

## dbt - data build tool
1. Sign Up: Go to the dbt Cloud website and sign up for an account.
2. Create a New Project: Once logged in, create a new project by clicking on the "New Project" button
3. Connect Your Data Warehouse: Connect your data warehouse to dbt Cloud by providing *service account key* from GCP
4. Initialize Your Project: After connecting your data warehouse, dbt Cloud will guide you through initializing your project. Follow the prompts to set up your project structure.
5. Write SQL Models: Write SQL models directly in the dbt Cloud interface and choose "Models" tab to create new models (`cafv_eligibility.sql, vehicle_aggregats.sql, vehicle_locations.sql`) and "Macros" - especially useful for big SQL project.

    -  Staging: `stg_electric_vehicles.sql` - [LINK](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/dbt/models/staging/stg_electric_vehicles.sql)
    -  Models:
        -    `cafv_eligibility.sql` - [LINK](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/dbt/models/cafv_eligibility.sql)
        -    `vehicle_aggregats.sql` - [LINK](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/dbt/models/vehicle_aggregats.sql)
        -    `vehicle_locations.sql` - [LINK](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/dbt/models/vehicle_locations.sql)
        -    `sources.yml` - [LINK](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/dbt/models/sources.yml)
    -  `dbt_project.yml` [LINK](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/dbt/dbt_project.yml)

7. Run dbt: Run dbt directly from the dbt Cloud interface once everything is ready. This process will transfer the data to GCP dataset directly, just in case is working without any issues.
8. Documentation: Use `dbt docs generate & dbt docs generate`

![Lineage](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/dbt%20lineage.JPG)

## Google Looker
1. Sign in to Google Looker Studio using your Google account 
2. Use the BigQuery Connector to connect your dataset - In this case choose the file that 
3. Choose your project name and then select the dataset you want to work with. This action will take you to the dashboard page

![Graph 1](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/visualisation-1_update.JPG)
![Graph 2](https://github.com/zukui1984/electric-vehicle-population-project/blob/master/images/visualisation-1.JPG)




