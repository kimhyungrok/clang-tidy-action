FROM nugulinux/devenv:bionic

LABEL version="1.0.0"
LABEL "com.github.actions.name"="clang-tidy-action"  
LABEL "com.github.actions.description"="execute static analysis on repository using by clang-tidy"  
LABEL "com.github.actions.icon"="check-square"  
LABEL "com.github.actions.color"="orange"  

COPY run_clang_tidy.sh /run_clang_tidy.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
