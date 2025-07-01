{
  pkgs,
  inputs,
  ...
}: {
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        line-height = 25;
        fields = "name,generic,comment,categories,filename,keywords";
        terminal = "ghostty";
        prompt = "' ➜  '";
        layer = "overlay";
        lines = 10;
        width = 35;
        horizontal-pad = 25;
        inner-pad = 5;
        dpi-aware = true;
      };
      border = {
        radius = 9;
        width = 2;
      };
    };
  };
}
