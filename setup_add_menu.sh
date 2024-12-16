#!/bin/bash

# Nome do diretório principal
REPO_NAME="./"

# Caminho da pasta docs
DOCS_DIR="$REPO_NAME/docs"

# Conteúdo do menu padrão
MENU_CONTENT="## 📚 Conteúdo da Jornada\n\n\
1. [Página Inicial](index.md)\n\
\n\
### 🧩 Conceitos Gerais\n\
- [Código Limpo](conceitos/clean_code.md)\n\
- [Arquitetura de Software](conceitos/arquitetura_software.md)\n\
- [DDD - Domain-Driven Design](conceitos/ddd.md)\n\
- [Testes de Software](conceitos/testes_software.md)\n\
- [Monorepo](conceitos/monorepo.md)\n\
\n\
### ⚙️ Ferramentas\n\
- [Git](ferramentas/git.md)\n\
- [GitHub](ferramentas/github.md)\n\
- [Ferramentas Gerais](ferramentas/ferramentas_gerais.md)\n\
\n\
### 🚀 Tecnologias\n\
- [JavaScript](tecnologias/javascript.md)\n\
- [TypeScript](tecnologias/typescript.md)\n\
- [Node.js](tecnologias/nodejs.md)\n\
- [React.js](tecnologias/react.md)\n\
- [Next.js](tecnologias/nextjs.md)\n\
- [Nest.js](tecnologias/nestjs.md)\n\
- [MongoDB](tecnologias/mongodb.md)\n\
- [PostgreSQL](tecnologias/postgresql.md)\n\
\n\
### 💻 Projetos\n\
- [Projeto 1](projetos/projeto_1.md)\n\
- [Projeto 2](projetos/projeto_2.md)\n\
- [Mini Projetos](projetos/mini_projetos.md)\n\
\n\
### 🔗 Recursos\n\
- [Links Úteis e Referências](recursos.md)\n"

# Adicionar o menu no início de cada arquivo .md
echo "Adicionando menu de navegação a todos os arquivos Markdown..."

# Encontrar todos os arquivos .md dentro do diretório docs
find $DOCS_DIR -type f -name "*.md" | while read -r FILE; do
    # Verificar se o menu já existe no arquivo
    if ! grep -q "## 📚 Conteúdo da Jornada" "$FILE"; then
        # Criar uma cópia temporária com o menu no início
        echo -e "$MENU_CONTENT\n$(cat "$FILE")" > temp.md
        mv temp.md "$FILE"
        echo "Menu adicionado em: $FILE"
    else
        echo "Menu já existe em: $FILE"
    fi
done

echo "Todos os arquivos foram atualizados com o menu de navegação!"
