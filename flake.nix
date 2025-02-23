{
  description = "home-ops development environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    # pinned to this for talosctl v1.6.1
    nixpkgs-7a339d.url = "github:nixos/nixpkgs/7a339d87931bba829f68e94621536cad9132971a";

    utils.url = "github:numtide/flake-utils";
    talhelper.url = "github:budimanjojo/talhelper";
    krew2nix = {
      url = "github:SabreOSS/krew2nix/inputs-krew-index";
      inputs.krewIndex.url = "github:kubernetes-sigs/krew-index/59b9a22e16dd9a4892f97207d7e33b644d069369";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-7a339d,
    utils,
    talhelper,
    krew2nix,
    ...
  }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      pkgs-7a339d = import nixpkgs-7a339d { inherit system; };

      kubectl = krew2nix.packages.${system}.kubectl;
    in {
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
          _1password-cli
          age
          cloudflared
          fluxcd
          go-task
          gum
          kubernetes-helm
          helmfile
          jq
          k9s
          kubecolor
          kubeconform
          kustomize
          minijinja
          mise
          moreutils
          # talosctl
          sops
          stern
          viddy
          yq
        ]
        ++ (with pkgs-7a339d; [
          talosctl #v1.6.1
        ])
        ++ [talhelper.packages.${system}.default]
        ++ [
          (kubectl.withKrewPlugins (plugins: with plugins; [
            node-shell
            cert-manager
            cnpg
            browse-pvc
            rook-ceph
            view-secret
          ]))
        ];

        shellHook = '''';
      };
    });
}