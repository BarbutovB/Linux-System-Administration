sudo groupadd -g 3000 projectxyz
getent group projectxyz
sudo useradd -c "Project Developer" developer
sudo useradd -c "Project Manager" manager
sudo passwd developer
sudo passwd manager

sudo usermod -aG projectxyz developer
sudo usermod -aG projectxyz manager
sudo mkdir -p /shared/projects/projectXYZ/Stage{1,2,3}/{DOCUMENTS,BUDGET}
sudo touch /shared/projects/projectXYZ/Stage{1,2,3}/DOCUMENTS/document{1..5}.doc
sudo touch /shared/projects/projectXYZ/Stage{1,2,3}/BUDGET/readme{en,bg,de}.txt

sudo chown -R manager /shared/projects/projectXYZ
sudo chgrp -R projectxyz /shared/projects/projectXYZ
sudo chmod -R u+rwx,g+rwx,o-rwx /shared/projects/projectXYZ
sudo chmod -R g+s /shared/projects/projectXYZ

sudo chmod -x /shared/projects/projectXYZ/Stage{1,2,3}/DOCUMENTS/document{1..5}.doc
sudo chmod -x /shared/projects/projectXYZ/Stage{1,2,3}/BUDGET/readme{en,bg,de}.txt
