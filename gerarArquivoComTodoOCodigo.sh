(
  echo "===== PASTA DO PROJETO ====="
  pwd
  echo "===== ESTRUTURA DO PROJETO ====="
  tree -a -I 'node_modules|dist|build|.git|projeto.txt|.DS_Store' --noreport

  echo
  echo "===== CONTEÚDO DOS ARQUIVOS ====="
  echo

  find . -type f \
    ! -path "*/node_modules/*" \
    ! -path "*/dist/*" \
    ! -path "*/build/*" \
    ! -path "*/.git/*" \
    ! -name "projeto.txt" \
    ! -name ".DS_Store" \
    -size -200k \
  | while read file; do
      echo "----- INÍCIO: $file -----"
      cat "$file" | iconv -f UTF-8 -t UTF-8//IGNORE
      echo
      echo "----- FIM: $file -----"
      echo
  done
) > projeto.txt