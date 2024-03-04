
# XDG shims for unsupported apps
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc 

mkdir -p "$XDG_STATE_HOME"/bash
export HISTFILE="$XDG_STATE_HOME"/bash/history 

# For pass
if command -v pass &> /dev/null; then
  export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass 
fi

# For Rust cargo package manager
export CARGO_HOME="$XDG_DATA_HOME"/cargo

# For Rust rustup installation manager
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# For weget
if command -v wget &> /dev/null; then
  export WGETRC="$XDG_CONFIG_HOME/wgetrc"
fi

# For java
if command -v java &> /dev/null; then
  export JAVA_TOOL_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java 
fi

	
# For ansible
if command -v ansible &> /dev/null; then
  export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
  export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
  export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
fi

# For npm
if command -v npm &> /dev/null; then
  export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
fi

# For Golang
if command -v go &> /dev/null; then
  export GOPATH="$XDG_DATA_HOME"/go
  export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
fi


