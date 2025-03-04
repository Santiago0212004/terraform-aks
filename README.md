Santiago José Barraza Sinning 

Plataformas II

# AKS with Terraform

![image](https://github.com/user-attachments/assets/82be2de4-d416-4bd3-8f98-c3310212c06e)

![image](https://github.com/user-attachments/assets/f247f905-c54b-4580-9222-cedb487a40f6)

![image](https://github.com/user-attachments/assets/dc6e036d-4932-43ca-971f-026456d702a4)

Installed Terraform and the Azure CLI.

![image](https://github.com/user-attachments/assets/780b3a12-3c1b-4397-8117-b4eb508d4f0a)

We can see Terraform is installed.

![image](https://github.com/user-attachments/assets/4cf4c639-00fa-4a3b-87c9-8a3d6ab38244)

It is in the 1.11.0 version.

![image](https://github.com/user-attachments/assets/75b8160f-5edb-4ca5-91a9-6cd5314de178)

We login into the Azure CLI.

![image](https://github.com/user-attachments/assets/2995ade2-e97a-4538-9d5c-821d1c82597d)

We created a main.tf file for an AKS cluster in Terraform.

![image](https://github.com/user-attachments/assets/5e253aef-64df-4dc4-9d5f-342ee31831a7)

We format the Terraform code through “terraform fmt” and download the providers trough “terraform init”.

![image](https://github.com/user-attachments/assets/895a601b-e4c4-4a9d-950d-4453ba27d480)

Through “terraform plan” we can see that the code has a problem, because it does not have the subscription_id attribute in the provider, so we add it.

![image](https://github.com/user-attachments/assets/0a3ecc8f-1563-40af-a562-7894c90890ae)

![image](https://github.com/user-attachments/assets/0df628a8-5213-49c4-9868-5d32cb3ad4a7)

![image](https://github.com/user-attachments/assets/9ea90152-202c-4453-b6ba-7e449a83f7cb)

![image](https://github.com/user-attachments/assets/a8eb4aaf-3f36-47b0-88cb-4d64425618f8)


We can see that the “terraform plan” worked correctly.

![image](https://github.com/user-attachments/assets/3ca0e82e-1b46-4ef2-ba16-c9b1d6a30037)

Now we do “terraform apply” to upload these changes to our Azure infrastructure.

![image](https://github.com/user-attachments/assets/eb84a239-29a8-4b07-b682-34c65948e0e5)

Once it is finished, we can se that the resource group is successfully created, and it has the Kubernetes cluster inside.

![image](https://github.com/user-attachments/assets/aa935c3e-2a48-4471-83c3-00c689f12c46)

We can see that the Kubernetes cluster is running.

![image](https://github.com/user-attachments/assets/279ce4f5-ccfa-41a9-99ed-b2f99ab253e2)

Now we download the credentials.

![image](https://github.com/user-attachments/assets/777b10d7-0da4-406a-a9e3-d579de812b30)

We see that the current context is the AKS cluster (it was minikube before).

![image](https://github.com/user-attachments/assets/17e13484-6541-465b-ae88-c5783f6bdecc)

We can see our contexts, in this case, AKS and minikube.

![image](https://github.com/user-attachments/assets/ac441020-ca4c-4064-8656-65e80581f4b5)

This command is used to switch to the AKS cluster, but we were already in it.

![image](https://github.com/user-attachments/assets/31d96d3e-8e71-4dc5-830b-36dceb6bdc19)

We can see the default node.

![image](https://github.com/user-attachments/assets/6d5a1594-fca6-4d5b-8245-2250e053a0d0)

These are the namespaces of the AKS cluster.

![image](https://github.com/user-attachments/assets/3f73271b-0fff-49a1-9958-10fa0ed12687)

We run an Ngnix pod.

![image](https://github.com/user-attachments/assets/a1928c61-16de-4686-9255-ed1f92528cdc)

We expose the pod as a load balancer because it needs to have an
external ip address to us to access it through internet.

![image](https://github.com/user-attachments/assets/bc75c790-f221-4aef-b240-511ee8e37fa5)

We can see that the service is correctly accessible from internet.

![image](https://github.com/user-attachments/assets/9b7419a3-b2a1-44a6-b323-3ef4b1fa7454)

We can see the base resources that AKS created to make itself capable of creating a Kubernetes cluster.

![image](https://github.com/user-attachments/assets/f0a0b606-07e9-4a86-96fb-51f39f9e538b)

Now we expose our Kubernetes cluster access that WSL has to the windows host machine through port 8001.

![image](https://github.com/user-attachments/assets/5f628e1a-02ea-4450-baea-6d05e37f729c)

We add this kubeconfig template to lens, so it can access to the
Kubernetes cluster that WSL is using (in this case, AKS cluster).

![image](https://github.com/user-attachments/assets/3943e93e-5424-4f8f-bca6-45c8838317bc)

We can see the CPU, memory and other metrics of the cluster.

![image](https://github.com/user-attachments/assets/4ce737ce-8ac6-4fe5-b738-142bfe062596)

We can see the nodes.

![image](https://github.com/user-attachments/assets/db1471e5-fff6-4e2c-acf0-7c4a10dff102)

We can see the server pod that is running Nginx.

![image](https://github.com/user-attachments/assets/e73cee26-56b8-419a-85f6-0b9a869e2a03)

We can see the service that is exposing the Nginx server.

![image](https://github.com/user-attachments/assets/33e8be27-ad37-46d6-ab96-550500c449e8)

Now, we destroy the infrastructure.

![image](https://github.com/user-attachments/assets/09212130-dd02-47c4-bd48-b4a20d1cffeb)

And the infrastructure is destroyed successfully.
