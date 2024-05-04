# Use a imagem oficial do Nginx como base
FROM nginx:alpine

# Remova o arquivo de configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copie os arquivos HTML/CSS para o diretório de documentos padrão do Nginx
COPY . /usr/share/nginx/html

# Exponha a porta 80 para permitir o acesso ao servidor web
EXPOSE 80

# Comando padrão para iniciar o servidor web quando o contêiner for iniciado
CMD ["nginx", "-g", "daemon off;"]
