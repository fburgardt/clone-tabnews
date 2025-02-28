# Usa a versão LTS do Node.js Hydrogen (corresponde ao Node 18)
FROM node:18

# Cria o diretório da aplicação e define as permissões
RUN mkdir -p /app && chown -R node:node /app

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Alterna para o usuário "node"
USER node

# Copia o restante dos arquivos do projeto
COPY --chown=node:node . .

# Expõe a porta padrão do Next.js
EXPOSE 3000

# Mantém o container rodando
CMD ["tail", "-f", "/dev/null"]
# Executa o aplicativo
#CMD ["node", "app.js"]