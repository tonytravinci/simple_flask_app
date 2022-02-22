# Instructions
1. Provide a zip file with your solution (or repo) and links to the hosted projects where applicable
2. Other tools other than Docker and Kubernates are allowed to containerize and orchestrate, just inform us via a README as stated in point 3
3. For configurations and special setup, document the process in a README per project
4. The optional parts are not required but will greatly improve your ranking
5. The deadline for this exercise is latest **Monday 21st 7am 2022**
6. **Best of luck and have fun**

# CI/CD 
### Setup CI/CD for the following projects

1. Clone this repo https://github.com/giantas/pyconfigreader and create a CI/CD using github actions
2. Setup CI/CD for the project called **simple_flask_app** using github actions, initiate the git repo and add a git ignore
   * The project uses poetry for env management https://python-poetry.org/
   * To run tests run `pytest`
    >Note - For CD use which ever platform you choose

# Dockerize a Notes App
>**NOTE - Find the code for this exercise in the notes dir**

1. Inspect the Flask application files to learn what files we need to include and exclude from the image. There is a Pipfile.lock, a .gitignore, and a migrations directory. We don't want those in the image.
2. Create a .dockerignore file to exclude build and metadata information from the image.
3. Create the Dockerfile to build the image.
     - Start with Python 3 as the base image.
     - Setup Python environment variables.
     - Install dependencies in the container from the Pipfile.
     - Set the working directory.
     - Specify the port flask will listen on.
     - Start the flask server.
4. Build an image named notesapp with version 0.1.
5. Use a container of the notesapp image to set up the database.
    Note: The database can be set up via the app itself using the following command.
    `flask db init && flask db migrate && flask db upgrade`

# Orchestration using Kubernates
>Optional Steps -- Include No 2.d, No. 3 and 4
1. Orchestration the **Notes** Application using Kubernates in a K8s directory
2. Enable the following as additional steps:
        a. Auto scaling
        b. Auto healing
        c. Networking
        d. Deployment strategies either blue-green or canary  
3. Add monitoring using Grafana Stack
4. Propose how a multi enviroment to allow for test environments would be conducted **if it can be done practically using the above example the better but a written example is acceptable**

# Provisioning and Deployment Steps

1. Create use terraform to provision resources on AWS (**Optional**)
2. Deploy the K8s and docker images to the provisioned resources. (**Can be via code or detailed explaination**)
