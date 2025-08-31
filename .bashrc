# Bash run commands

# Clean trailing whitespace in a file
alias rm-trail-ws="sed -i 's/[[:space:]]*$//'"

# Lint untracked haskell files in a repository. I use it when working on PostgREST.
alias fast-hlint="git diff --name-only --diff-filter=AM | grep '\.hs$' | xargs hlint -j -X QuasiQuotes -X NoPatternSynonyms"
