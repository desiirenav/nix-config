_: prev: {
  pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
    (_: _: { python-fabric = prev.callPackage ./default.nix { }; })
  ];
}
