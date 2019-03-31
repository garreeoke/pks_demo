# Node.js Image Builder

appLariat's generic image builder for Node.js. This is the default build configuration for Node.js images and is used by the appLariat Component Builder service

Default build workflow:

1. Component builder starts with a task to create a Node image and then dynamically retrieves this repository.
2. Component builder updates the FROM image based on configuration information provided at startup.
3. Component builder retrieves and prepares the specified code artifact.
4. Component builder executes a Docker Build to generate an image
    - Pulls the proper official Node image as the base image layer
    - Copies the build.sh and entrypoint.sh into the image
    - Copies the code artifact into the image
    - Executes the build.sh script to prepare the image to run 
5. component builder pushes the generated image to a designated container repository

# Node Defaults
The image assumes that your application has a file named package.json listing its dependencies and defining its start script.

Learn more about the [Node Official Image](https://hub.docker.com/_/node/)

# How to customize node component setup
Clone this repository to modify and then update the build artifact in your application component configuration within appLariat to use your own customized builder.
  - Simplest option is to modify the build.sh and entrypoint.sh scripts to prepare and customize the image. 
    - build.sh runs once during the docker build process. It can be used to install software packages into image.
    - entrypoint.sh runs every time that image starts and can be utilized to prepare run time environmet like exporting environment variables, setting the PATH etc.
  
  - Alternatively you can also modify the Dockerfile and use Docker syntax to build your own customized image. If you create your own Dockerfile you will also need to update the image artifact in appLariat as component builder will override the FROM line in the Dockerfile with the image specified in the config.