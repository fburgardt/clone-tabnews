# Usa a versão LTS do Node.js Hydrogen (corresponde ao Node 18)
FROM node:18

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta padrão do Next.js
EXPOSE 3000
