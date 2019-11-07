#!/bin/bash

vim +qa

# Install YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer --ts-completer --java-completer
