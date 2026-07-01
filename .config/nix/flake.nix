{
  description = "this laptop is adachi rei! :3";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs-old.url = "github:nixos/nixpkgs/nixos-25.11";

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nixpkgs-old, nix-homebrew }:
  let
    configuration = { pkgs, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = with pkgs; [
          neovim
          starship
          zoxide
          fastfetch
          zsh-vi-mode
          stow
          fzf
          nodejs
          pnpm
          lua
          yt-dlp
          mpd
          rmpc
          cava
        ]; # ++ [(import nixpkgs-old { inherit (pkgs) system; }).neovim];

      fonts.packages = with pkgs; [
        nerd-fonts.jetbrains-mono
      ];

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Enable alternative shell support in nix-darwin.
      # programs.fish.enable = true;
      programs.zsh.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#zshleyp
    darwinConfigurations."rei" = nix-darwin.lib.darwinSystem {
      modules = [ 
        configuration
        ./modules
        
        nix-homebrew.darwinModules.nix-homebrew
        {
            nix-homebrew = {
                enable = true;
                enableRosetta = true;
                user = "zshleyp";
                autoMigrate = true;
            };
        }
      ];
    };
  };
}
