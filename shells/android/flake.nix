{
  description = "Android Tooling Environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          android-tools # Contains adb, fastboot, mke2fs.android, etc.
          
          # Optional common tools (uncomment if desired):
          scrcpy      # Display and control Android devices over USB
          apktool     # Tool for reverse engineering APK files
          payload-dumper-go # For extracting Android OTA payloads
        ];

        shellHook = ''
          echo "🤖 Android Tools Environment Loaded"
          echo "adb: $(adb --version | head -n 1)"
        '';
      };
    };
}
