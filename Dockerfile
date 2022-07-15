FROM centos:centos7.9.2009
RUN yum install -y gcc gcc-c++ make wget zsh git 
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#RUN THEME="agnoster"; sed -i s/^ZSH_THEME=".\+"$/ZSH_THEME=\"$THEME\"/g ~/.zshrc && source ~/.zshrc && echo "Edited line in ~/zshrc :" && cat ~/.zshrc | grep -m 1 ZSH_THEME
RUN THEME="agnoster"; sed -i s/^ZSH_THEME=".\+"$/ZSH_THEME=\"$THEME\"/g ~/.zshrc  && echo "Edited line in ~/zshrc :" && cat ~/.zshrc | grep -m 1 ZSH_THEME
RUN yum install -y gdb-gdbserver.x86_64
ENTRYPOINT ["tail", "-f", "/dev/null"]