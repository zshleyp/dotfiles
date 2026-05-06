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
        sudo /run/current-system/sw/bin/darwin-rebuild switch --flake ~/.config/nix
      }

      alias nixup="pushd ~/.config/snowflake; nix flake update; nixswitch; popd"
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
