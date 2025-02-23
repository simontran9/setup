# setup

1. Install [visual studio code](https://code.visualstudio.com/) and jetbrains mono, install `code` command, and set the `settings.json` config

2. Change to old bash temporarily

   ```sh
   chsh -s /bin/bash
   ```
   
3. Create a `.bashrc` and a `.bash_profile`

4. Install homebrew, then turn off analytics

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   eval "$(/opt/homebrew/bin/brew shellenv)"
   brew analytics off
   ```

5. Install bash

   ```sh
   brew install bash
   ```
   
6. Add a line containing the homebrew bash from `which -a bash` into `etc/shells`

7. Change to the new homebrew bash

   ```sh
   chsh -s /opt/homebrew/bin/bash
   sudo chsh -s /opt/homebrew/bin/bash
   ```

8. Install homebrew git, add a global `~/.config/git/ignore` file, set up the git config, and set up an SSH key

   ```sh
   brew install git
   ```
   
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

9. Install rust

   ```sh
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```
   




