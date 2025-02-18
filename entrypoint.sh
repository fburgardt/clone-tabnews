#!/bin/sh

# Se a pasta "pages" não existir, assume que o projeto ainda não foi criado
if [ ! -d "pages" ]; then
  echo "⚡ Inicializando um novo projeto Next.js..."
  npx create-next-app@13.1.6 . --use-npm --no-install
fi

# Inicia o servidor normalmente
exec "$@"
