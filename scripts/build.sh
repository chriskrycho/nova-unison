#!/bin/zsh

$(pwd)/scripts/compile_parser.sh $(pwd) /Applications/Nova.app

mv libtree-sitter-unison.dylib ./Syntaxes

# `--sign -` performs "ad hoc code signing".
codesign --sign - ./Syntaxes/libtree-sitter-unison.dylib
