touch logScript.txt
sudo yum -y update && sudo yum -y upgrade
echo "Pacotes atualizados." >> logScript.txt
sudo yum -y install httpd
echo "Apache Instalado" >> logScript.txt
sudo systemctl start httpd
echo "Apache iniciado com sucesso" >> logScript.txt
sudo systemctl enable httpd
echo "O Apache será sempre inicializado" >> logScript.txt
curl -X POST -d "nome=Gabriel Schmidt" https://difusaotech.com.br/lab/aws/index.php
echo "Solicitação POST realizada com sucesso."