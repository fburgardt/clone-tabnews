# Usa a versão LTS do Node.js Hydrogen (corresponde ao Node 18)
FROM node:18

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas os arquivos essenciais para instalação de dependências
COPY package.json ./

# Instala as dependências
RUN npm install

# Se o projeto ainda não existir, cria o Next.js antes de iniciar
#RUN test -d "pages" || npx create-next-app@13.1.6 . --use-npm --no-install

# Copia o script de entrada e garante permissões de execução
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta padrão do Next.js
EXPOSE 3000

# Define o entrypoint e inicia o servidor
ENTRYPOINT ["/entrypoint.sh"]
CMD ["npm", "run", "dev"]
