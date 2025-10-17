## Creating EC2 instance by using Variables:
- Initially we have to create "**main.tf**" file and write the code to create EC2 instance. Later we can segregate the terraform files as per requirements.
<img width="1052" height="544" alt="image" src="https://github.com/user-attachments/assets/b0cb667c-380a-4ffc-b05b-881cad64c83c" />

- Now create **variable.tf** file inside Terraform modules forlder.
 <img width="930" height="342" alt="image" src="https://github.com/user-attachments/assets/b6931320-ec66-41ff-9888-a722de1317b0" />


- Creating "**terraform.tfvars**" file to store the variable values.
  <img width="1156" height="245" alt="image" src="https://github.com/user-attachments/assets/7b41d2c5-8cdb-43ac-84f0-bb957b324227" />

- Now switch to the directory where terraform files exists & run the command to initialize the terraform project.
  ```
  terraform init
  ```
  <img width="1028" height="160" alt="image" src="https://github.com/user-attachments/assets/f4c758a0-6042-4fc0-8d7f-e2475371641d" />
  <img width="894" height="234" alt="image" src="https://github.com/user-attachments/assets/3fa94e87-8a7c-4822-8f0e-5c6e5080c3f6" />

- Next enter the command to plan terraform project. In below screenshot you can see ami id, instance type, region and subnet id is shown.

  ```
  terraform plan
  ```
  <img width="1097" height="626" alt="image" src="https://github.com/user-attachments/assets/5b10d12f-c567-4b18-ac87-6970cb05133f" />
  <img width="653" height="283" alt="image" src="https://github.com/user-attachments/assets/2ae0cf4d-9898-46b4-9554-8a62f9fadaac" />
  <img width="661" height="212" alt="image" src="https://github.com/user-attachments/assets/bb2a40b1-06b8-4728-b7d0-91bbe1f3003a" />


 - Now finally enter command to apply the terraform project with command.
   ```
   terraform apply
   ```
 - it will ask you to confirm the terraform apply type "yes" to proceed.
   <img width="718" height="124" alt="image" src="https://github.com/user-attachments/assets/83f455ce-3cbb-4689-995d-8d87d70d4bba" />

- Now you can see the EC2 instance created in terminal as well as in AWS console.
  <img width="922" height="228" alt="image" src="https://github.com/user-attachments/assets/87f33a50-6fe8-4405-a82b-0eedfbe0bf47" />
  <img width="1570" height="182" alt="image" src="https://github.com/user-attachments/assets/137d7ef5-8a11-4752-a213-73da249e7489" />

- Now you can destroy the project with command & it will ask you to confirm by typing "yes" to proceed.
  ```
  terraform destroy
  ```
  <img width="1104" height="298" alt="image" src="https://github.com/user-attachments/assets/ffb94f7c-014b-4cad-b635-097f97ae8611" />
  
  <img width="870" height="169" alt="image" src="https://github.com/user-attachments/assets/77c69bd5-c384-4954-adad-1fd43162232d" />
  
  <img width="1254" height="172" alt="image" src="https://github.com/user-attachments/assets/d4e122b2-0eb4-45b0-9b73-98b30641e932" />


## Printing public ip of ec2 instance:

- In order to perform and initiate Terraform  module, you need 3 files in a specific forlder i,e main.tf, variables.tf and output.tf. Now we are creating output.tf and printing public ip of the instance.

<img width="894" height="275" alt="image" src="https://github.com/user-attachments/assets/fa6e1f87-6e90-47cd-a48d-08e5cb9b0e6b" />

- Enter similar commands to create EC2 instance.
  ```
  terraform init
  terraform plan
  terraform apply
  ```
  <img width="867" height="276" alt="image" src="https://github.com/user-attachments/assets/fc2a6ee3-4a84-4704-92e0-10bdcb6a88ee" />
  
  <img width="1234" height="272" alt="image" src="https://github.com/user-attachments/assets/54fb39ab-da9c-4d74-82dd-39a520a4acdf" />




## Creating variables by Terraform modules:
- Create a new folder and move all 3 terraform files (main.tf, variables.tf and output.tf) in to folder and we don't require terraform.tfvars file here.
- Here I have created folder called "modules/ec2_instance". Instead of writing code for multiple times we have created modules (main.tf, variables.tf and output.tf) and calling those modules with "main.tf" file and the source path of modules is "./modules/ec2_instance" which shown below.
  
<img width="1072" height="359" alt="image" src="https://github.com/user-attachments/assets/03b0da72-33bb-43c7-a65e-6c8b7b361d70" />

- Now initializing and planning the peoject:

  <img width="1006" height="222" alt="image" src="https://github.com/user-attachments/assets/13ce3924-49cd-4ea2-9e2b-a9cd27dd14f5" />

  <img width="1072" height="297" alt="image" src="https://github.com/user-attachments/assets/75eca633-2c2f-40e9-ba64-2df9784a7e23" />

- Now we can see EC2 instance created in terminal and AWS console by utilizing terraform modules.

  <img width="899" height="231" alt="image" src="https://github.com/user-attachments/assets/b26db5d1-9fd4-4197-97af-19b5dc0ce452" />

  <img width="1399" height="197" alt="image" src="https://github.com/user-attachments/assets/666cc6ec-b8d9-4861-883d-e686d5dc4455" />


- This is how we can setup modules, if we need more resources like VPC, EKS or S3 then we have to write separate modules for each resouces. Multiple members can execute this project without writing main.tf, output.tf and variable.tf files they just need to write modular "main.tf" code.

<img width="703" height="330" alt="image" src="https://github.com/user-attachments/assets/4401fecd-6c3c-40f3-8e34-b4f7ca6453d0" />

