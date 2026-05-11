{
  description = "Kubernetes and Talos development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            talosctl
            kubernetes-helm
            kubectl
            kubeseal
            argocd
            calicoctl
            k9s
            curl
            jq
            yq-go

            kustomize
            fluxcd
            kubectx
            stern
          ];

        shellHook = ''
          echo "--- [ Kubernetes Dev Shell Loaded ] ---"
          echo "Tools available: talosctl, kubernetes-helm, kubectl, kubeseal, argocd, calicoctl, k9s, curl, jq, yq-go, kustomize, fluxcd, kubectx, kubens, stern"
          kubectl version --client
        '';
        };
      });
}
