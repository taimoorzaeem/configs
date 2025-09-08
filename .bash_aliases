# .bashrc file should automatically import these
alias rm-trail-ws="sed -i 's/[[:space:]]*$//'"
alias fast-hlint="git diff --name-only --diff-filter=AM | grep '\.hs$' | xargs hlint -j -X QuasiQuotes -X NoPatternSynonyms"
alias battery="acpi"
alias wifi-connect="nmcli c up id"
alias wifi-list="nmcli d wifi list"
