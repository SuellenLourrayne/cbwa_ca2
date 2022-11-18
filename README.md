# cbwa_ca2

Suellen Oliveira - CCT College

Docker Image that contains the Ionic application that you built for Mobile Development with a server and that is ready to be distributed to any cloud provider supporting Docker containers.

# Instructions to use

- First you pull the image with: docker pull suellenlourrayne/cbwaca2:0.3
- After, you change the image name: docker tag suellenlourrayne/cbwaca2:0.3 cbwaca2
- Run container, in this case on port 8080: docker run -it --rm -p 8080:80 cbwaca2
- Access mobdev_ca3 on the browse with the link: http://localhost:8080

## Pushing image to docker repository
- Build image from dockerfile: docker build -t cbwaca2 .
- Change image name: docker tag cbwaca2 suellenlourrayne/cbwaca2:0.3 
    * where suellenlourrayne is the repository you want you image to be pushed, it does not have to exist. 0.3 is a version tag
- Login to docker account: login -u username -p password docker.io 
    * where username and password are your credencials.
- Push image builded with new name: docker push suellenlourrayne/cbwaca2:0.3

## Cloud provider supporting Docker containers

AWS, Azure and GCP offer similar services and functionalities to help organizations build, deploy and manage containerized environments.

### AWS Cloud Container Services

Both Amazon EKS and Amazon ECS offer similar integrations with the broader AWS portfolio, but each service provides different use cases for organizations looking to manage their containerized applications and differ in areas such as networking and ease of deployment. If you’re already running workloads on Kubernetes, Amazon EKS might be familiar territory for your DevOps teams. If you haven’t navigated the world of containers yet, ECS might be the best option. 

### Azure Cloud Container Services

Azure Kubernetes Service (AKS) is a highly available, secure, and fully managed Kubernetes service. With AKS, Azure users can unify their development and operations teams on a single platform to rapidly build, deliver, and scale their containerized applications with confidence. As a fully managed service, AKS reduces the complexity and operational overhead of managing Kubernetes by offloading much of that responsibility to Azure.

# References

### Cloud provider supporting Docker containers
- https://blogs.vmware.com/cloudhealth/cloud-container-services-aws-azure-gcp/
### Working with the Docker registry
- https://docs.github.com/en/enterprise-server@3.3/packages/working-with-a-github-packages-registry/working-with-the-docker-registry
### Docker push - Error - requested access to the resource is denied
- https://forums.docker.com/t/docker-push-error-requested-access-to-the-resource-is-denied/64468