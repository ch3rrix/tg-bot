{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShell = pkgs.mkShell {
	nativeBuildInputs = with pkgs; [
          clang_16
          clang-tools_16
          gnumake
	  cmake
	];
        buildInputs = with pkgs; [
	  telegram-bot-api
        ];
      };
    }
  );
}

