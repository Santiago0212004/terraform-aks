Santiago José Barraza Sinning 

Plataformas II

# AKS with Terraform

![Imagen 1 de Página 1](images/image_p1_1.png)

![Imagen 2 de Página 1](images/image_p1_2.png)

![Imagen 1 de Página 2](images/image_p2_1.png)

Installed Terraform and the Azure CLI.
We can see Terraform is installed.

![Imagen 2 de Página 2](images/image_p2_2.png)


![Imagen 1 de Página 3](images/image_p3_1.png)

It is in the 1.11.0 version.

![Imagen 2 de Página 3](images/image_p3_2.png)

We login into the Azure CLI.

![Imagen 3 de Página 3](images/image_p3_3.png)

We created a main.tf file for an AKS cluster in Terraform.

![Imagen 1 de Página 4](images/image_p4_1.png)

We format the Terraform code through “terraform fmt” and download the providers trough “terraform init”.

![Imagen 2 de Página 4](images/image_p4_2.png)

Through “terraform plan” we can see that the code has a problem,
because it does not have the subscription_id attribute in the
provider, so we add it.

![Imagen 3 de Página 4](images/image_p4_3.png)

![Imagen 1 de Página 5](images/image_p5_1.png)

![Imagen 2 de Página 5](images/image_p5_2.png)

![Imagen 3 de Página 5](images/image_p5_3.png)

![Imagen 4 de Página 5](images/image_p5_4.png)

We can see that the “terraform plan” worked correctly.

![Imagen 1 de Página 6](images/image_p6_1.png)

Now we do “terraform apply” to upload these changes to our Azure
infrastructure.

![Imagen 2 de Página 6](images/image_p6_2.png)

Once it is finished, we can se that the resource group is
successfully created, and it has the Kubernetes cluster inside.

![Imagen 3 de Página 6](images/image_p6_3.png)

We can see that the Kubernetes cluster is running.


![Imagen 1 de Página 7](images/image_p7_1.png)

Now we download the credentials.

![Imagen 2 de Página 7](images/image_p7_2.png)

We see that the current context is the AKS cluster (it was
minikube before).

![Imagen 3 de Página 7](images/image_p7_3.png)


We can se our contexts, in this case, AKS and minikube.

![Imagen 4 de Página 7](images/image_p7_4.png)

This command is used to switch to the AKS cluster, but we were
already in it.

![Imagen 5 de Página 7](images/image_p7_5.png)

We can see the default node.

![Imagen 6 de Página 7](images/image_p7_6.png)

These are the namespaces of the AKS cluster.

![Imagen 7 de Página 7](images/image_p7_7.png)

We run an Ngnix pod.

![Imagen 1 de Página 8](images/image_p8_1.png)

We expose the pod as a load balancer because it needs to have an
external ip address to us to access it through internet.

![Imagen 2 de Página 8](images/image_p8_2.png)

We can see that the service is correctly accessible from internet.

![Imagen 3 de Página 8](images/image_p8_3.png)

We can see the base resources that AKS created to make itself
capable of creating a Kubernetes cluster.

![Imagen 4 de Página 8](images/image_p8_4.png)

Now we expose our Kubernetes cluster access that WSL has to the
windows host machine through port 8001.

![Imagen 1 de Página 9](images/image_p9_1.png)

We add this kubeconfig template to lens, so it can access to the
Kubernetes cluster that WSL is using (in this case, AKS cluster).

![Imagen 2 de Página 9](images/image_p9_2.png)

We can see the CPU, memory and other metrics of the cluster.

![Imagen 1 de Página 10](images/image_p10_1.png)

We can see the nodes.

![Imagen 2 de Página 10](images/image_p10_2.png)

We can see the server pod that is running Nginx.

![Imagen 3 de Página 10](images/image_p10_3.png)

We can see the service that is exposing the Nginx server.

![Imagen 1 de Página 11](images/image_p11_1.png)

Now, we destroy the infrastructure.

![Imagen 2 de Página 11](images/image_p11_2.png)

And the infrastructure is destroyed successfully.
