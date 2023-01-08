
# Enhance Performance, Portability, Security, Scalability and Cost Effectiveness Cloud Applications using Docker




## Authors

- [@jkpraja](https://www.github.com/octokatherine)


## Introduction
In this project, we're going to dockerize apps which are implemented on Amazon Web Services.
## Architecture
![Topology](https://raw.githubusercontent.com/jkpraja/dockerize-aws-apps/bd68009a9be5bfbd204a1d17084a2184ea7d1af8/Proj6.png)
## You'll need
- An AWS Account
- At least 2 applications, in this case, we'll use:
    - [Cilsy landing page](https://github.com/jkpraja/cilsy-landing-page)
    - [Cilsy Social Media app](https://github.com/sdcilsy/sosial-media)

The social media is an application that will need access to the database.
## What To Do
1. Launch a single EC2 instance on Amazon web services.

#### Dockerize Landing Page application
1. Because this app is an html application, so we just need to get an image of https:alpine as the base image.
2. Make sure you copy the sourcecode to the image you will create.

#### Dockerize Social Media application
1. Since this app contains PHP codes, then we need to use PHP:7.4.33-Apache
2. Make you that you run update and install the mysql php extentions. In this case, I use mysqli and pdo_mysql.
3. Copy the sourcecode to the image you will create

### Compose Configuration
Since we will use 3 components for this project:
1. landing-page
2. pesbuk (the social media app)
3. pesbuk-db (the database for social media app)
 
 
It's better for us to create compose.yaml so that we can dockerize all applications at once.
For database, we'll need to use mysql image from docker hub.
And then create volume as persistent storage.
And for the DB initialization, we need to copy the dump.sql to docker-entrypoint-initdb.d folder.

And for docker environment variables, we need to define them inside ".env" file in the parent folder.

## Final Step
The final step in this project is that creating the shell script so that every time we run, it will stop the active containers first.


That's all. This project is completed.
