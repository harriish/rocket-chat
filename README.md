---
__Aim__

Create a way to automatically deploy RocketChat 3.13.1 **demo** instance to AWS subscription.

---

__Tools used__
- Docker and Docker compose
- Terraform
- AWS

---

__Environmental Setup to run the deployment__

-  Initially clone the repository

    git clone https://github.com/harriish/rocket-chat.git

-  Enter into the directory

    cd rocket-chat

- Before creating the AWS infrastructure make sure to export AWS access key and secret key. 

-  Run the following bash script to create the AWS infrastructure. Terraform has been used to automatically create the AWS infrastructure.

   ./install.sh

-  You can check if the instances has been created using your aws-cli or dashboard. 


---
__Run the deployment__

-  ssh into the AWS instance using its ip address

-  Again clone the repository and enter into the directory which should be done in the remote machine.
  
   git clone https://github.com/harriish/rocket-chat.git
   
   cd rocket-chat
   
-  To install docker and docker-compose and run the rocket-chat application in the remote server run the following bash script:

   ./docker_compose_start.sh

-  And the rocket chat application is available on http://localhost:80  . You can check it on the browser or can use curl.  As an example:

   curl "http://localhost:80"

---
__Remove the deployment and cleanup all resources__


- Complete deployment and cleaning all resources can be done with single click by running the following bash script:

  ./uninstall.sh
 
---
