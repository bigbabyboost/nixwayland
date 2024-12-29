{pkgs, ...}: {
  programs.mpv = {
    enable = true;
    scripts = with pkgs.mpvScripts; [
      mpris
      sponsorblock
      thumbnail
    ];
    config = {
      gpu-context = "wayland";
      hwdec = "auto-safe";
      osc = "no";
      profile = "faster";
      vo = "gpu";
    };
  };
}
