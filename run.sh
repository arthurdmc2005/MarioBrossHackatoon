#!/usr/bin/env bash

# Garante que o script rode a partir da pasta do projeto, independente de onde for chamado
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

# Se o ambiente virtual não existir, cria e instala as dependências
if [ ! -d "$DIR/.venv" ]; then
    echo "Ambiente virtual não encontrado. Criando .venv..."
    python3 -m venv "$DIR/.venv"
    echo "Instalando dependências (pygame, pytmx)..."
    "$DIR/.venv/bin/pip" install --upgrade pip
    "$DIR/.venv/bin/pip" install pygame pytmx
fi

# Executa o jogo usando o Python do ambiente virtual
echo "Iniciando Super Mario Bros..."
"$DIR/.venv/bin/python" "$DIR/main.py" "$@"
