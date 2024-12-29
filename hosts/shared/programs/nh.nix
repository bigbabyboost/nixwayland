{
  programs.nh = {
    enable = true;
    flake = "/home/xaolan/.ionia";
    clean = {
      enable = true;
      extraArgs = "--keep-since 1w";
    };
  };
}
