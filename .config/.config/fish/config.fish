# Hide fish welcome message 
set fish_greeting ""   

# Include git branch or mercurial bookmark in the prompt 
function fish_prompt 
  if not set -q __git_cb 
    set __git_cb (set_color magenta)\((git branch ^/dev/null | grep \* | awk '{print $2}')\)(set_color normal) 
  end   
  if not set -q __hg_cb 
    set __hg_cb (set_color magenta)\((hg bookmarks ^/dev/null | grep \* | awk '{print $2}')\)(set_color normal) 
  end   
  
  set_color yellow 
  printf '%s' (whoami) 
  set_color normal 
  printf '@'   
  
  set_color cyan 
  printf '%s' (hostname|cut -d . -f 1)  
  set_color normal 
  printf ' '   
  
  set_color $fish_color_cwd 
  printf '%s %s%s > ' (prompt_pwd) $__git_cb $__hg_cb 
  set_color normal 

end

set -x EDITOR vim 
alias vi=vimx
alias ffn='find . | grep'
alias ffs='find . | grep -v __tests__| grep -v package.php | grep'
set -x JAVA_HOME /usr/local/jdk-7u10-64

