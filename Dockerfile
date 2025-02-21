# Usa a versão LTS do Node.js Hydrogen (corresponde ao Node 18)
FROM node:18

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o restante dos arquivos do projeto
COPY . .

# Altera as permissões para o usuário "node"
RUN chown -R node:node /app

# Alterna para o usuário "node"
USER node

# Expõe a porta padrão do Next.js
EXPOSE 3000

CMD ["tail", "-f", "/dev/null"]