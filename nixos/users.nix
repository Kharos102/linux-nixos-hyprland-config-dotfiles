{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kharos = {
    isNormalUser = true;
    description = "kharos";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" "libvirtd" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      youtube-music
      discord
      tdesktop
      vscodium
      brave
    ];
  };

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
