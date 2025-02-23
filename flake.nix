{
  description = "home-ops development environment"

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {

  }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          _1password-cli

          talosctl
          kubectl
          go-task
        ];
      }
    });
}