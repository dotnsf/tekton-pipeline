# Tekton Pipeline Sample

## Overview

Sample scripts to generate Tekton Pipeline in OpenShift 4.8.


## Pre-requisites

- OpenShift 4.8 cluster


## How to execute

### Prepare

- Login to IBM Cloud

  - `$ ./0-0-login_to_ibmcloud.sh`

- Login to OpenShift

  - Copy & paste login command from OpenShift web console.

  - Or `$ ./0-1-login_with_token.sh`

- Create project(`my-tekton-pipeline-project`)

  - `$ ./0-2-create_project.sh`

- Create **public** repository in quay.io

### PVC

- Create PVC

  - `$ ./1-0-create_pvc.sh`

### Tasks

- Install required tasks

  - `$ ./2-0-create_tasks.sh`

### Service Account and Roles

- Create Service Account

  - `$ ./3-0-create_sa.sh`

- Create Secret

  - Edit user_id and encrypted password of **https://quay.io/** into `3-1-create_secret.sh`

  - `$ ./3-1-create_secret.sh`

- Bind role

  - `$ ./3-2-bind_role.sh`

### Source Code

- Application source code

  - Create application source code **with package-lock.json**.

  - Register source code into github

### Trigger

- Create Trigger Account

  - `$ ./4-0-create_trigger_account.sh`

- Create Webhook

  - Copy k8s/ folder into your source code repository.

  - `$ ./4-1-create_webhook.sh`

  - Register webhook with a result of `$oc get route`.

### Pipeline

- Create Pipeline

  - `$ ./5-0-create_pipeline.sh`

- (Optional)Run Pipeline-Run

  - `$ ./5-1-run_pipeline.sh`

### Run

- Update Repository, and you will see Pipeline starting.


### Confirm

- Check route

  - `$ oc get route`

- Access to app host with `https`.


## Copyright

2021 [K.Kimura @ Juge.Me](https://github.com/dotnsf) all rights reserved.
