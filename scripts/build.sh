#!/bin/zsh

$(pwd)/scripts/compile_parser.sh $(pwd) /Applications/Nova.app

# `--sign -` performs "ad hoc code signing".
codesign --sign - libtree-sitter-unison.dylib

# Once the dylib is ready, drop it straight into the extension for distribution.
mv libtree-sitter-unison.dylib ./unison.novaextension/Syntaxes
