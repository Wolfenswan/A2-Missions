private ["_unit","_type","_mkr","_acre","_silenced"];

//loads the different type of crates

waitUntil {scriptDone f_processParamsArray};
_unit = _this select 0;
_type = _this select 1;
clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;

switch (_type) do {

case "usmc": {
_unit addWeaponCargoGlobal ["M16A2", 8];
_unit addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 48];
_unit addMagazineCargoGlobal ["HandGrenade_West", 12]; 
_unit addMagazineCargoGlobal ["SmokeShell", 12];
_unit addMagazineCargoGlobal ["M136", 6];
};

case "ru": {
_unit addWeaponCargoGlobal ["AK_107_kobra", 6];
_unit addMagazineCargoGlobal ["30Rnd_545x39_AK", 60];
_unit addMagazineCargoGlobal ["AT13", 2];  
_unit addMagazineCargoGlobal ["SmokeShell", 20];
_unit addMagazineCargoGlobal ["HandGrenade_East", 20]; 
_unit addMagazineCargoGlobal ["Igla", 2]; 
_unit addMagazineCargoGlobal ["RPG18", 12]; 
_unit addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",20];
_unit addMagazineCargoGlobal ["100Rnd_762x54_PK",4];
};

case "ammo": {
_unit addMagazineCargoGlobal ["30Rnd_545x39_AK", 40];
_unit addMagazineCargoGlobal ["SmokeShell", 20];
_unit addMagazineCargoGlobal ["HandGrenade_East", 20]; 
_unit addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",20];
};

case "cdf": {
_unit addMagazineCargoGlobal ["30Rnd_545x39_AK", 40];
_unit addMagazineCargoGlobal ["AT13", 2]; 
_unit addMagazineCargoGlobal ["1Rnd_HE_GP25", 20]; 
_unit addMagazineCargoGlobal ["1Rnd_Smoke_GP25", 20];
_unit addMagazineCargoGlobal ["RPG18", 10]; 
_unit addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",40];
 _unit addMagazineCargoGlobal ["100Rnd_762x54_PK",20];
 _unit addMagazineCargoGlobal ["HandGrenade_East", 20]; 
 };
 
 case "gue": {
_unit addMagazineCargoGlobal ["30Rnd_545x39_AK", 80];
_unit addMagazineCargoGlobal ["1Rnd_HE_GP25", 20]; 
_unit addMagazineCargoGlobal ["1Rnd_Smoke_GP25", 20]; 
_unit addMagazineCargoGlobal ["AT13", 6];  
_unit addMagazineCargoGlobal ["SmokeShell", 20]; 
_unit addMagazineCargoGlobal ["Igla", 10]; 
_unit addMagazineCargoGlobal ["RPG18", 20]; 
_unit addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",40];
 _unit addMagazineCargoGlobal ["100Rnd_762x54_PK",20];
 _unit addMagazineCargoGlobal ["5Rnd_127x108_KSVK",10]; 
 _unit addMagazineCargoGlobal ["pipebomb",10];
 _unit addMagazineCargoGlobal ["HandGrenade_East", 20];
 };
 

 };
