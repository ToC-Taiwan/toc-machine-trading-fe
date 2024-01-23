#!/bin/bash
set -e

rm -rf toc-trade-protobuf
git clone git@github.com:ToC-Taiwan/toc-trade-protobuf.git

rm -rf lib/core/pb
mkdir lib/core/pb

protoc_path=$(which protoc)
sdk_tools_dir=$(dirname $(dirname "$protoc_path"))
include_dir="$sdk_tools_dir/include"
echo $include_dir

if [ ! -d "$include_dir" ]; then
    echo "include dir not found"
fi

echo "activate protoc_plugin"
dart pub global activate --overwrite protoc_plugin

protoc \
    --dart_out=./lib/core/pb \
    --proto_path=./toc-trade-protobuf/protos/v3 \
    ./toc-trade-protobuf/protos/v3/*/*.proto \
    $include_dir/google/protobuf/empty.proto

rm -rf toc-trade-protobuf
git add lib/core/pb
