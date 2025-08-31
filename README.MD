# Projeto: Exportador de Estrutura e Código do Projeto

Este repositório contém um script de shell (.sh) que gera um arquivo consolidado com a estrutura de pastas e o conteúdo dos arquivos de código de um projeto.

O objetivo é criar uma visão completa do projeto, útil para:

- Revisão de código.
- Backup rápido.
- Compartilhamento com colaboradores.
- Migração de projetos para outras tecnologias (ex.: React/TypeScript).

---

## 📁 Estrutura

- gerarArquivoComTodoOCodigo.sh → Script principal que gera o arquivo projeto.txt.
- projeto.txt → Arquivo de saída contendo a árvore de diretórios e o conteúdo dos arquivos do projeto.

---

## ⚡ Como funciona

O script faz o seguinte:

1. Mostra a pasta raiz do projeto.
2. Lista a estrutura do projeto ignorando pastas e arquivos desnecessários:
- node_modules
- dist
- build
- .git
- projeto.txt (arquivo de saída)
- .DS_Store (arquivos binários do macOS)
3. Exporta o conteúdo de arquivos de código (exceto pelos listados acima) com codificação UTF-8, ignorando caracteres inválidos.
4. Salva tudo em um único arquivo chamado projeto.txt.

---

## 🛠 Uso

1. Clone este repositório ou baixe o script.
2. Navegue até a pasta do seu projeto:
bash cd /caminho/para/o/projeto 
3. Execute o script:
bash ./gerarArquivoComTodoOCodigo.sh 
4. O arquivo projeto.txt será gerado na mesma pasta, contendo a estrutura e os arquivos de código.

---

## 💡 Observações

- Certifique-se de que o script tem permissão de execução:
bash chmod +x gerarArquivoComTodoOCodigo.sh 
- O script ignora arquivos binários e pastas grandes para evitar arquivos de saída enormes.
- projeto.txt pode ser aberto em qualquer editor de texto com suporte a UTF-8, como Sublime Text ou VS Code.

---

## 📝 Licença

Este projeto é open-source e pode ser usado, modificado e distribuído livremente.
