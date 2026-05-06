{ pkgs, config, ... }: {
  # here go the darwin preferences and config items
  nixpkgs.config.allowUnfree = true;
  programs.zsh.enable = true;
  # users.users.guto.home = "/Users/guto";
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  imports = [
    ./settings/zsh.nix
  ];
}
