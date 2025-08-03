# Bash run commands

# Argument = filename
alias clean-whitespace="sed -i 's/^[[:space:]]*//;s/[[:space:]]*$//'"

# No argument
alias fast-hlint="git diff --name-only --diff-filter=AM | grep '\.hs$' | xargs hlint -j -X QuasiQuotes -X NoPatternSynonyms"
