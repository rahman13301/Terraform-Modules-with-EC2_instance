## Creating EC2 instance by using Variables:
- Initially we have to create "**main.tf**" file and write the code to create EC2 instance. Later we can segregate the terraform files as per requirements.
<img width="707" height="587" alt="image" src="https://github.com/user-attachments/assets/70dff06c-8bfc-4bfc-9c31-58a3bb0514da" />


- Now create **variables.tf** file inside ec2 forlder.
 <img width="1164" height="390" alt="image" src="https://github.com/user-attachments/assets/448170f5-a68b-42e1-b52c-593a9782f1e0" />


- Creating "**terraform.tfvars**" file to store the variable values.
  <img width="1130" height="268" alt="image" src="https://github.com/user-attachments/assets/3aefd4f4-61c1-4889-81b7-5711fe26a0d8" />


- Now switch to the directory where terraform files exists & run the command to initialize the terraform project.
  ```
  terraform init
  ```
  <img width="771" height="334" alt="image" src="https://github.com/user-attachments/assets/2438745a-40d2-4399-93ac-3b9323fba293" />


- Next enter the command to plan terraform project. In below screenshot you can see ami id, instance type, region and subnet id is shown.

  ```
  terraform plan
  ```
  <img width="1073" height="340" alt="image" src="https://github.com/user-attachments/assets/8155d2b3-1185-4bba-87fb-eebd4e740e64" />

  <img width="1380" height="427" alt="image" src="https://github.com/user-attachments/assets/a8f1abb5-cf47-4400-8dd7-0bb8b7b7fd93" />



 - Now finally enter command to apply the terraform project with command.
   ```
   terraform apply
   ```
 - it will ask you to confirm the terraform apply type "yes" to proceed.
   <img width="849" height="336" alt="image" src="https://github.com/user-attachments/assets/ed197e6f-4a68-4ff6-9e90-ad33986a8b8a" />


- Now you can see the EC2 instance created in VS Code terminal as well as in AWS console.
  <img width="834" height="216" alt="image" src="https://github.com/user-attachments/assets/c4f9fe90-d48c-4e67-9003-49780274e8a1" />

  <img width="1226" height="178" alt="image" src="https://github.com/user-attachments/assets/781027f6-7654-477f-9048-2827c26a8c68" />


- Now you can destroy the project with command & it will ask you to confirm by typing "yes" to proceed.
  ```
  terraform destroy
  ```
  <img width="878" height="218" alt="image" src="https://github.com/user-attachments/assets/c2658654-bc90-41b5-8c11-1fd71e7ad8e4" />

  
  <img width="913" height="228" alt="image" src="https://github.com/user-attachments/assets/7674a609-d42e-4bae-ac1b-6a56c545feeb" />

  
  <img width="1100" height="185" alt="image" src="https://github.com/user-attachments/assets/2c4b9fc9-1232-40cb-923a-6d53f81c2f7d" />



## Printing public ip of ec2 instance:

- In order to perform and initiate Terraform  module, you need 3 files in a specific forlder i,e main.tf, variables.tf and output.tf. Now we are creating output.tf and printing public ip of the instance.

<img width="1124" height="312" alt="image" src="https://github.com/user-attachments/assets/163e35c3-1d36-41c1-9e37-5573e45dec0e" />


- Enter similar commands to create EC2 instance.
  ```
  terraform init
  terraform plan
  terraform apply
  ```
  <img width="873" height="328" alt="image" src="https://github.com/user-attachments/assets/b49e8a47-cff6-4fe1-a3eb-e48504f32660" />

  
  <<img width="949" height="279" alt="image" src="https://github.com/user-attachments/assets/8df2ff8a-dfcf-48c1-9009-e378767687c5" />

  <img width="1117" height="462" alt="image" src="https://github.com/user-attachments/assets/45d7184b-0b49-4404-b9d9-0ece381fbbbe" />



## Creating variables by Terraform modules:
- Create a new folder and move all 3 terraform files (main.tf, variables.tf and output.tf) in to folder and we don't require terraform.tfvars file here.
- Here I have created folder called "modules/ec2_instance". Instead of writing code for multiple times we have created modules (main.tf, variables.tf and output.tf) and calling those modules with "main.tf" file and the source path of modules is "./modules/ec2_instance" which shown below.
  
<img width="1072" height="359" alt="image" src="https://github.com/user-attachments/assets/03b0da72-33bb-43c7-a65e-6c8b7b361d70" />

- Now initializing and planning the peoject:

 <img width="781" height="337" alt="image" src="https://github.com/user-attachments/assets/9b3a2219-4e71-445e-9766-d34534646250" />


  ![Uploading image.png…]()


- Now we can see EC2 instance created in terminal and AWS console by utilizing terraform modules.

  <img width="899" height="231" alt="image" src="https://github.com/user-attachments/assets/b26db5d1-9fd4-4197-97af-19b5dc0ce452" />

  <img width="1399" height="197" alt="image" src="https://github.com/user-attachments/assets/666cc6ec-b8d9-4861-883d-e686d5dc4455" />


- This is how we can setup modules, if we need more resources like VPC, EKS or S3 then we have to write separate modules for each resouces. Multiple members can execute this project without writing main.tf, output.tf and variable.tf files they just need to write modular "main.tf" code.

<img width="703" height="330" alt="image" src="https://github.com/user-attachments/assets/4401fecd-6c3c-40f3-8e34-b4f7ca6453d0" />

