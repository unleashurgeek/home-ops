{
  description = "home-ops development environment";

  inputs = {
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
          moreutils
          talosctl
          sops
          stern
          viddy
          yq
        ]
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

        shellHook = ''
          export FLAKE_ROOT="$(git rev-parse --show-toplevel)"

          # Directory Paths
          export ROOT_DIR=$FLAKE_ROOT
          export KUBERNETES_DIR=$FLAKE_ROOT/kubernetes
          export BOOTSTRAP_DIR=$KUBERNETES_DIR/bootstrap
          export TALOS_DIR=$KUBERNETES_DIR/talos

          # File Paths
          export KUBECONFIG=$KUBERNETES_DIR/kubeconfig
          export TALOSCONFIG=$TALOS_DIR/clusterconfig/talosconfig
          export SOPS_AGE_KEY_FILE=$FLAKE_ROOT/age.key
        '';
      };
    });
}
