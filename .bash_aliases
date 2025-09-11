# Bash aliases
# ============
# .bashrc file should automatically import these

# Function to create aliases with automatic warnings.
# Bash aliases are looked up before the PATH lookups, so warning
# would help debug if something from the PATH gets shadowed by
# an alias (maybe I am overthinking this, LOL).

make_alias_tz() { # tz is my intials so less chances to conflict
    local name="$1"
    local command="$2"
    alias "$name=echo '⚠️  Using alias: $name' >&2; echo '' >&2; $command"
}

make_alias_tz rm-trail-ws "sed -i 's/[[:space:]]*$//'"
make_alias_tz fast-hlint "git diff --name-only --diff-filter=AM | grep '\.hs$' | xargs hlint -j -X QuasiQuotes -X NoPatternSynonyms"
make_alias_tz battery "acpi"
make_alias_tz wifi-connect "nmcli c up id"
make_alias_tz wifi-list "nmcli d wifi list"
