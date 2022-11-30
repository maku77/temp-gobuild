#!/bin/bash

# 第 1 引数で出力先ディレクトリ名を指定（デフォルトはカレントディレクトリ）
out_dir=$1

# API ドキュメントを生成
docker run --rm -v $(pwd)/$out_dir:/out -v $(pwd)/proto:/protos pseudomuto/protoc-gen-doc --doc_opt=markdown,API-documents2.md

# Docker が必要
#if ! type -P docker > /dev/null; then
#   echo 'This script requires Docker. Please install Docker first and try again.' >&2
#   exit -1
#fi

