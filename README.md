# nixos-config

nixos configuration and home manager setup


## installation

```
git clone https://github.com/DeRosa/nixos-config.git
cd nixos-config
sudo nixos-rebuild switch --flake .#hostname
```
where `#hostname` is defined in `flake.nix`, e.g. `#pentagon`
