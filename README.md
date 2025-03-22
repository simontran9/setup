# setup

remote development setup

## Steps

### macOS (host OS)

1. Install [Visual Studio Code](https://code.visualstudio.com/), [Jetbrains Mono](https://www.jetbrains.com/lp/mono/), `code` command, and set the config in `settings.json`

2. Install [Remote SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

4. Setup`   

### Linux (dev OS)

1. Copy contents from the repo `.bashrc` to `~/.bashrc`

2. Update and upgrade

   ```sh
   sudo yum update
   sudo yum update --security
   ```

4. Install core tools

   ```sh
   sudo yum groupinstall 'Development Tools'
   ```

5. Set up the git config, and set up an SSH key

   ```sh
   git config --global user.name "Simon Tran"
   git config --global user.email <MY EMAIL>
   git config --global init.defaultBranch main
   git config --global core.editor "code --wait"
   ```

   ```
   ssh-keygen -t ed25519 -C "<YOUR EMAIL>"
   eval "$(ssh-agent -s)"
   echo  "Host github.com
   AddKeysToAgent yes
   IdentityFile ~/.ssh/id_ed25519" > ~/.ssh/config
   ssh-add ~/.ssh/id_ed25519
   pbcopy < ~/.ssh/id_ed25519.pub
   
   # ADD THE ABOVE TO SSH AND GPG KEYS ON GITHUB

   ssh -T git@github.com
   ```

6. Install rust and [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)

   ```sh
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

7. Install ripgrep

   ```sh
   sudo yum install -y yum-utils
   sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
   sudo yum install ripgrep
   ```




