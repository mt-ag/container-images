# Helm-oc Docker Image

This repository contains a Docker image based on the latest stable version of Ubuntu, designed to provide an environment with Helm, OpenShift CLI (oc), and OpenShift Client tools installed. This image is useful for users who need a lightweight containerized environment for managing Kubernetes clusters, deploying applications using Helm, and interacting with OpenShift-specific resources.

## Docker Image Details

- **Base Image**: Ubuntu (latest stable version)
- **Package Managers**: Helm, OpenShift CLI (oc)
- **Image Size**: The size of the image is kept minimal to reduce resource consumption.

## Included Tools

### 1. Helm

[Helm](https://helm.sh) is a package manager for Kubernetes that helps you manage Kubernetes applications. With Helm, you can define, install, and upgrade even the most complex Kubernetes applications.

### 2. OpenShift CLI (oc)

The OpenShift CLI (`oc`) is a command-line tool that allows developers and administrators to interact with and manage OpenShift clusters. It provides a wide range of functionalities for deploying, managing, and monitoring applications running on OpenShift.

## Getting Started

To use this Docker image, you must have Docker installed on your system.

### Pulling the Image

You can pull the latest version of the image from Docker Hub using the following command:

You can pull the latest version of the image from Docker Hub using the following command:

`docker pull demtag/helm-oc:latest`

### Running the Container

Once you have the image pulled, you can run a container with the Helm, OpenShift CLI, and OpenShift Client tools available using the following command:
