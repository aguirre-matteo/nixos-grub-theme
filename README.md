# Nixos Minimal GRUB Theme

> [!WARNING]
> This GRUB theme only has icons for NixOS. Other Linux distribution or Operating System is not 
> supported. Behavior under other circumstances that a NixOS only setup is untested.

This repository offers a flake that a exposes a `theme` output that points to a minimal GRUB theme. 

# Installation

## First step

Add this flake to your `flake.nix`'s inputs that contains your NixOS config.

```flake.nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # ...

    nixos-grub-theme.url = "github:aguirre-matteo/nixos-grub-theme";
  };
}
```

## Second step

Set the following configurations somewhere in your NixOS config.
Make sure the `inputs` variable is available in the context.

```configuration.nix
{ inputs, pkgs, ... }:

{
  boot.loader.grub.theme = "${pkgs.callPackage inputs.nixos-grub-theme.theme {}}";
  boot.loader.grub.splashImage = "${pkgs.callPackage inputs.nixos-grub-theme.theme {}}/background.png";
}
```
