
# XDG shims for unsupported apps
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc 

# For pass
if command -v pass &> /dev/null; then
  export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass 
fi

# For Rust cargo package manager
if command -v cargo &> /dev/null; then
  export CARGO_HOME="$XDG_DATA_HOME"/cargo
fi

# For weget
if command -v wget &> /dev/null; then
  export WGETRC="$XDG_CONFIG_HOME/wgetrc"
fi

	
# For ansible
if command -v ansible &> /dev/null; then
  export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
  export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
  export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
fi

