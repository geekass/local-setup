function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1 /'
}

# function git_unadded_new {
# if git rev-parse --is-inside-work-tree &> /dev/null
# then
# if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]]
# then
# echo ""
# else
# echo "N "
# fi
# fi
# }

# function git_needs_commit {
# if [[ "git rev-parse --is-inside-work-tree &> /dev/null)" != 'true' ]] && git rev-parse --quiet --verify HEAD &> /dev/null
# then
# # Default: off - these are potentially expensive on big repositories
# git diff-index --cached --quiet --ignore-submodules HEAD 2> /dev/null
# (( $? && $? != 128 )) && echo "C "
# fi
# }

# function git_modified_files {
#         if [[ "git rev-parse --is-inside-work-tree &> /dev/null)" != 'true' ]] && git rev-parse --quiet --verify HEAD &> /dev/null
#         then
#                 # Default: off - these are potentially expensive on big repositories
#                 git diff --no-ext-diff --ignore-submodules --quiet --exit-code || echo "M "
#         fi
# }
