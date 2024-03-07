# Example for .bash_profile
if [ -s "$HOME/.rbenv/bin/rbenv" ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init --no-rehash -)"
fi
