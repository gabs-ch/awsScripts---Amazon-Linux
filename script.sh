# instalando o git
sudo yum -y install git
echo "git instalado" >> logScript.txt
# clonando repositorio do site
sudo git clone https://github.com/usuario/repositorio.git /tmp/site
echo "repositório clonado" >> logScript.txt
# mover arquivos para a pasta do apache
sudo mv /tmp/site/* /var/www/html/
echo "arquivos movidos com sucesso para o diretório do Apache" >> logScript.txt
# mudando permissões
sudo chown -R apache:apache /var/www/html/
sudo chmod -R 700 /var/www/html/
echo "permissões ajustadas" >> logScript.txt
# reiniciar serviço do apache
sudo systemctl restart httpd
echo "apache reiniciado para aplicar mudanças" >> logScript.txt
