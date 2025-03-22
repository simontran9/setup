# setup

remote development setup

## Steps

### macOS (host OS)

1. Install [Visual Studio Code](https://code.visualstudio.com/), [Jetbrains Mono](https://www.jetbrains.com/lp/mono/), `code` command, and set the config in `settings.json`

2. Install [Remote SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

3. Setup ssh keys to the remote box

   ```sh
   mv <private ssh key> ~/.ssh/<private ssh key>
   cd ~/.ssh/
   chmod 400 <private ssh key>
   ssh -i <private ssh key> <username>@<public ip address>  
   ```

> [!note]
> Run the following to move local files to the remote box:
> 
> `scp -r -i ~/.ssh/<private ssh key> <local folder of file> opc@<public ip address>:~/<new destination>`

### Linux (dev OS)

1. Copy contents from the repo `.bashrc` to `~/.bashrc`

2. Update and upgrade

   ```sh
   sudo dnf update
   sudo dnf update --security
   ```

4. Install core tools

   ```sh
   sudo dnf groupinstall 'Development Tools'
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
   ssh-add ~/.ssh/id_ed25519
   cat ~/.ssh/id_ed25519.pub 
   
   # COPY and ADD THE ABOVE TO SSH AND GPG KEYS ON GITHUB

   ssh -T git@github.com
   ```

6. Install rust and [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)

   ```sh
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

7. Install ripgrep

   ```sh
   sudo dnf config-manager --set-enabled ol8_codeready_builder
   
   sudo dnf config-manager --set-enabled ol8_appstream
   
   sudo dnf install -y oracle-epel-release-el8
   
   sudo dnf config-manager --set-enabled ol8_developer_EPEL
   
   sudo dnf clean all
   sudo dnf makecache
   
   sudo dnf install -y ripgrep
   ```

8. Install hyperfine

   ```sh
   sudo dnf install hyperfine
   ```





