{inputs, ...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
    };

    overlays = [
      inputs.hyprpanel.overlay
    #  inputs.nix-vscode-extensions.overlays.default
    #  inputs.rust-overlay.overlays.default
    ];
  };
}
