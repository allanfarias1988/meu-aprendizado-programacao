#!/bin/bash

# Nome do diretório principal
REPO_NAME="meu-aprendizado-programacao"

# Criar diretório principal
mkdir -p $REPO_NAME

# Entrar no diretório principal
cd $REPO_NAME

# Criar arquivos iniciais
touch README.md
touch _config.yml

# Criar estrutura de pastas
mkdir -p docs/conceitos
mkdir -p docs/ferramentas
mkdir -p docs/tecnologias
mkdir -p docs/projetos
mkdir -p assets/css

# Criar arquivos em "docs/conceitos"
touch docs/conceitos/clean_code.md
touch docs/conceitos/arquitetura_software.md
touch docs/conceitos/ddd.md
touch docs/conceitos/testes_software.md
touch docs/conceitos/monorepo.md

# Criar arquivos em "docs/ferramentas"
touch docs/ferramentas/git.md
touch docs/ferramentas/github.md
touch docs/ferramentas/ferramentas_gerais.md

# Criar arquivos em "docs/tecnologias"
touch docs/tecnologias/javascript.md
touch docs/tecnologias/typescript.md
touch docs/tecnologias/nodejs.md
touch docs/tecnologias/react.md
touch docs/tecnologias/nextjs.md
touch docs/tecnologias/nestjs.md
touch docs/tecnologias/mongodb.md
touch docs/tecnologias/postgresql.md

# Criar arquivos em "docs/projetos"
touch docs/projetos/projeto_1.md
touch docs/projetos/projeto_2.md
touch docs/projetos/mini_projetos.md

# Criar página inicial e recursos gerais
touch docs/index.md
touch docs/recursos.md

# Criar arquivo CSS personalizado
touch assets/css/custom.css

# Adicionar configuração básica para GitHub Pages
cat <<EOL > _config.yml
theme: minima
title: "Minha Jornada de Programação"
description: "Documentando meu aprendizado em desenvolvimento fullstack."
EOL

# Mensagem final
echo "Estrutura de pastas criada com sucesso em $REPO_NAME!"
echo "Agora você pode começar a documentar sua jornada."
