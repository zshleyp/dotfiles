{ pkgs, ... }: {
  # .zshenv
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    # syntaxHighlighting.enable = true;

    interactiveShellInit = ''
      fastfetch

      bindkey -v
      export KEYTIMEOUT=1

      nixswitch() {
        sudo darwin-rebuild switch --flake ~/dotfiles/.config/nix
      }

      alias ls="ls --color=auto"
      alias ll="ls -lahrts"
      alias l="ls -l"
      alias mommy="sudo"
      alias vi="nvim"
      alias vim="nvim"
      alias python="python3"
    '';
  };
}
