customized_zshrc='~/jqz_toolshop/dotfiles/zshrc'
if cat ~/.zshrc | grep "source $customized_zshrc"; then
    echo "zshrc is already configured, skipping."
else
    echo "source $customized_zshrc" >> ~/.zshrc
fi
