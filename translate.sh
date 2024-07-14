#!/bin/bash

default_dir="."
default_ext="asciidoc"

llm_model="llama3-ko"

while getopts ":d:e:" opt; do
  case $opt in
  d) dir=$OPTARG ;;
  e) ext=$OPTARG ;;
  \?) echo "Invalid option: -$OPTARG" >&2 ;;
  esac
done

if [ -z "$dir" ]; then
  dir="$default_dir"
fi

if [ -z "$ext" ]; then
  ext="$default_ext"
fi

read -r -d '' llm_prompt <<EOF
  아래에 $ext 파일 형식의 영어 문서를 한국어로 번역해줘.

EOF

for f in "$dir"*."$ext"; do
  echo $f
  # TODO: 한국어 llm 모델이 동작하도록 수정
  ollama run $llm_model <"$f" | tee "${f%.*}.ko.$ext"
done
