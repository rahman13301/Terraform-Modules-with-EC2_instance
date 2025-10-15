## Creating EC2 instance by using Variables and Terraform modules.
- Initially we have to create "**main.tf**" file and write the code to create EC2 instance. Later we can segregate the terraform files as per requirements.
<img width="1052" height="544" alt="image" src="https://github.com/user-attachments/assets/b0cb667c-380a-4ffc-b05b-881cad64c83c" />

- Now create **variable.tf** file inside ec2_instance forlder.
 <img width="930" height="342" alt="image" src="https://github.com/user-attachments/assets/b6931320-ec66-41ff-9888-a722de1317b0" />


- Creating "**terraform.tfvars**" file to store the variable values.
  <img width="1156" height="245" alt="image" src="https://github.com/user-attachments/assets/7b41d2c5-8cdb-43ac-84f0-bb957b324227" />

- Now switch to the directory where terraform files exists & run the command to initialize the terraform project.
  ```
  terraform init
  ```
  <img width="1028" height="160" alt="image" src="https://github.com/user-attachments/assets/f4c758a0-6042-4fc0-8d7f-e2475371641d" />
  <img width="894" height="234" alt="image" src="https://github.com/user-attachments/assets/3fa94e87-8a7c-4822-8f0e-5c6e5080c3f6" />

- Next enter the command to plan terraform project.
  ```
  terraform plan
  ```
  

 
  






