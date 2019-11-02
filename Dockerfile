#################################################
## Configuração do servidor NGINX ##
#################################################

# Pega a ultima versão do NGINX
FROM nginx:latest

# Atualizando os pacotes e instalando o vim
RUN apt-get update && apt-get install -y vim

# Remove os arquivos de configuração padrão do nginx
RUN rm -rf /etc/nginx/conf.d/*

# Copia o nginx.conf para a pasta do nginx dentro do docker
COPY ./nginx.conf /etc/nginx/nginx.conf

# Remove as páginas defaults do nginx
RUN rm -rf /usr/share/nginx/html/*

# Insere os arquivos estáticos e insere no NGINX
COPY ./staticfiles /usr/share/nginx/html

# Expoe a porta 80
EXPOSE 80

# Roda o nginx
CMD ["nginx", "-g", "daemon off;"]