#!/bin/zsh
$(pwd)/scripts/compile_parser.sh $(pwd) /Applications/Nova.app
mv libtree-sitter-unison.dylib ./Syntaxes
cp node_modules/tree-sitter-unison/queries/* Queries
