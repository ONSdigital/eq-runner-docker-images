# eQ Runner Docker Images

This repository contains Dockerfiles used to build base images for:
- Deploying eQ container with helm ([k8s-helm-deploy-image](eq-k8s-helm-deploy-image/Dockerfile))
- Building the eQ Terraform base image ([terraform-deploy-image](eq-terraform-deploy-image/Dockerfile))
- Building the Tinyproxy image used for eq-runner-concourse [tinyproxy-image](eq-tinyproxy-image/Dockerfile)
- Building the eQ Python deploy image [python-deploy-image](eq-python-deploy-image/Dockerfile)

The first three images are used in Concourse pipelines to run the tasks above and the final image is used to connect to Concourse Kubernetes.

## Setting up the repo

This repository contains an [.editorconfig](.editorconfig) in order to ensure formatting of files is consistent across the codebase.
Any configurations can be found here. No additional plugins are required as Pycharm comes with support for EditorConfig. Other IDEs may not have the same support.
[Visit this link to check if your IDE needs a plugin](https://editorconfig.org/#download).

## Building the images

To build the images use the `make` commands below:

| Command                      | Task                                             |
|------------------------------|--------------------------------------------------|
| `make build-k8s-helm-image`  | Build the base image for deploying eQ containers |
| `make build-terraform-image` | Build the terraform base image                   |
| `make build-python-image`    | Build the python base image                      |
| `make build-tinyproxy-image` | Build the tinyproxy image                        |

