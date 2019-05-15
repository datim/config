# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Proxy settings
export http_proxy=http://web-proxy.corp.hpecorp.net:8080
export https_proxy=http://web-proxy.corp.hpecorp.net:8080


# custom tools
TOOL_PATH=/home/jroecks/gitpersonal/tools
export PATH=$PATH:$TOOL_PATH

# Java path
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk  

# Maven path
export PATH=$PATH:/home/jroecks/tools/apache-maven-3.3.9/bin

# do not perform these options if this is a remote scp connection

# interactive shell commands. Disabled during scp
if [ -n "$PS1" ]; then
	# setup passwordless key generation
	source ~/scripts/start_ssh_agent.sh
fi


