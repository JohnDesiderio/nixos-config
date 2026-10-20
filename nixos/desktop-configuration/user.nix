{ pkgs, ... }:{
  users.users.johnd = {
    isNormalUser = true;
    description = "johnd";
    extraGroups = [ "networkmanager" "wheel" ]; 
    packages = with pkgs; [
      # thunderbird
    ];
  };
}
