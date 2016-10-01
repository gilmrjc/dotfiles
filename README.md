# DotFiles

This are my dotfiles. The focus is on the shell. My programing preferences lean
towards Python.

## Dependencies

* ZSH

* NeoVIM

* xmodmap

* Python 3

* Git

* Nerd Fonts (included with the files: Anonymice, Inconsolata, Knack)

## Installation

Install the dependencies before copying the files. Just run `sh install` and
all the files will installed. Run `:PlugInstall` inside NeoVim to install the
plugins. That' all the needed steps.

## Cheatsheet

This is some information about what it is installed in my dots.

|Command   |Function                                     |
|----------|---------------------------------------------|
|take      |Create a dir (and its parents) and cd to it  |
|..        |cd ..                                        |
|...       |cd ../..                                     |
|....      |cd ../../..                                  |
|.....     |cd ../../../..                               |
|......    |cd ../../../../..                            |
|/         |cd /                                         |
|d         |Display dirs stack                           |
|cd +n     |Go to n dir                                  |
|1         |Go to 1 dir                                  |
|2         |Go to 2 dir                                  |
|3         |Go to 3 dir                                  |
|4         |Go to 4 dir                                  |
|5         |Go to 5 dir                                  |
|6         |Go to 6 dir                                  |
|7         |Go to 7 dir                                  |
|8         |Go to 8 dir                                  |
|9         |Go to 9 dir                                  |
|md        |mkdir -p                                     |
|rd        |rmdir                                        |
|lsa       |ls -lah                                      |
|l         |ls -lah                                      |
|ll        |ls -lh                                       |
|la        |ls -lAh                                      |
|pu        |push directory                               |
|po        |pop directory                                |
|clipcopy  |copy output                                  |
|clippaste |paste to input                               |
|zsh_stats |show zsh stats                               |

|Keys     |Action                             |
|---------|-----------------------------------|
|Esc-w    |Clear prompt                       |
|Esc-l    |ls                                 |
|Ctrl-r   |search in the history backwards    |

| Alias                  | Command                                                                           |
|:-----------------------|:----------------------------------------------------------------------------------|
| _g_                    | git                                                                               |
| _ga_                   | git add                                                                           |
| _gaa_                  | git add --all                                                                     |
| _gapa_                 | git add --patch                                                                   |
| _gb_                   | git branch                                                                        |
| _gba_                  | git branch -a                                                                     |
| _gbr_                  | git branch --remote                                                               |
| _gc_                   | git commit -v                                                                     |
| _gc!_                  | git commit -v --amend                                                             |
| _gca_                  | git commit -v -a                                                                  |
| _gca!_                 | git commit -v -a --amend                                                          |
| _gcl_                  | git config --list                                                                 |
| _gclean_               | git clean -fd                                                                     |
| _gpristine_            | git reset --hard && git clean -dfx                                                |
| _gcm_                  | git checkout master                                                               |
| _gcmsg_                | git commit -m                                                                     |
| _gco_                  | git checkout                                                                      |
| _gcount_               | git shortlog -sn                                                                  |
| _gcp_                  | git cherry-pick                                                                   |
| _gcs_                  | git commit -S                                                                     |
| _gd_                   | git diff                                                                          |
| _gdca_                 | git diff --cached                                                                 |
| _gdt_                  | git diff-tree --no-commit-id --name-only -r                                       |
| _gdt_                  | git difftool                                                                      |
| _gfa_                  | git fetch --all --prune                                                           |
| _gg_                   | git gui citool                                                                    |
| _gga_                  | git gui citool --amend                                                            |
| _ggpnp_                | git pull origin $(current_branch) && git push origin $(current_branch)            |
| _ggpull_               | git pull origin $(current_branch)                                                 |
| _ggl_                  | git pull origin $(current_branch)                                                 |
| _ggpur_                | git pull --rebase origin $(current_branch)                                        |
| _glum_                 | git pull upstream master                                                          |
| _ggpush_               | git push origin $(current_branch)                                                 |
| _ggp_                  | git push origin $(current_branch)                                                 |
| _ggsup_                | git branch --set-upstream-to=origin/$(current_branch)                             |
| _gignore_              | git update-index --assume-unchanged                                               |
| _gignored_             | git ls-files -v &#124; grep "^\[\[:lower:\]\]"                                    |
| _git-svn-dcommit-push_ | git svn dcommit && git push github master:svntrunk                                |
| _gk_                   | gitk --all --branches                                                             |
| _gl_                   | git pull                                                                          |
| _glg_                  | git log --stat --max-count = 10                                                   |
| _glgg_                 | git log --graph --max-count = 10                                                  |
| _glgga_                | git log --graph --decorate --all                                                  |
| _glo_                  | git log --oneline --decorate --color                                              |
| _glog_                 | git log --oneline --decorate --color --graph                                      |
| _glp_                  | _git_log_prettily (git log --pretty=$1)                                           |
| _gm_                   | git merge                                                                         |
| _gmt_                  | git mergetool --no-prompt                                                         |
| _gp_                   | git push                                                                          |
| _gpoat_                | git push origin --all && git push origin --tags                                   |
| _gr_                   | git remote                                                                        |
| _grba_                 | git rebase --abort                                                                |
| _grbc_                 | git rebase --continue                                                             |
| _grbi_                 | git rebase -i                                                                     |
| _grh_                  | git reset HEAD                                                                    |
| _grhh_                 | git reset HEAD --hard                                                             |
| _grmv_                 | git remote rename                                                                 |
| _grrm_                 | git remote remove                                                                 |
| _grset_                | git remote set-url                                                                |
| _grt_                  | cd $(git rev-parse --show-toplevel &#124;&#124; echo ".")                         |
| _grup_                 | git remote update                                                                 |
| _grv_                  | git remote -v                                                                     |
| _gsd_                  | git svn dcommit                                                                   |
| _gsps_                 | git show --pretty = short --show-signature                                        |
| _gsr_                  | git svn rebase                                                                    |
| _gss_                  | git status -s                                                                     |
| _gst_                  | git status                                                                        |
| _gsta_                 | git stash save                                                                    |
| _gstaa_                | git stash apply                                                                   |
| _gstd_                 | git stash drop                                                                    |
| _gstl_                 | git stash list                                                                    |
| _gstp_                 | git stash pop                                                                     |
| _gsts_                 | git stash show --text                                                             |
| _gts_                  | git tag -s                                                                        |
| _gunignore_            | git update-index --no-assume-unchanged                                            |
| _gunwip_               | git log -n 1 &#124; grep -q -c "\-\-wip\-\-" && git reset HEAD~1                  |
| _gup_                  | git pull --rebase                                                                 |
| _gvt_                  | git verify-tag                                                                    |
| _gwch_                 | git whatchanged -p --abbrev-commit --pretty = medium                              |
| _gwip_                 | git add -A; git ls-files --deleted -z &#124; xargs -r0 git rm; git commit -m "--wip--" |
