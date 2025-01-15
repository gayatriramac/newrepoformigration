# ALZ Management Deployment

This folder should hold all the orchestration files to deploy the resources for the 'Management' Subscription within the Proximus ALZ Platform.

## Resources

- Log Analytics
- Linked Automation Account

## Contents

- **main.bicep**: Bicep file that calls the AVM automation account and log analytic workspace modules to create respective resources in management subscription.
- **innovation.main.bicepparam**: Bicepparam file to provide input parameters to create the automation account and log analytic workspace in innovation tenant.
- **proximusuat.main.bicepparam**: Bicepparam file to provide input parameters to create the automation account and log analytic workspace in uat tenant.
- **README.md**: This file, providing an overview of the contents and usage.
