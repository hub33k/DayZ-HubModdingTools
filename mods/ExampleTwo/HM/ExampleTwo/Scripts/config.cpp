class CfgPatches {
	class HM_EM_Scripts {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {
			"DZ_Data",
		};
	};
};

class CfgMods {
	class HM_ExampleTwo {
		dir = "HM/ExampleTwo";
		picture = "";
		action = "";
		hideName = 0;
		hidePicture = 1;
		name = "Example Mod";
		credits = "hub33k";
		creditsJson = "HM/ExampleTwo/Scripts/Data/Credits.json";
		version = "0.0.0";
		versionPath = "HM/ExampleTwo/Scripts/Data/Version.hpp";
		author = "hub33k";
		authorID = "76561197968510850";
		extra = 0;
		type = "mod";

		dependencies[] = {
			"Core",
			"Game",
			"World",
			"Mission",
		};

		class defs {
			class gameScriptModule {
				value = "";
				files[] = {
					"HM/ExampleTwo/Defines",
					"HM/ExampleTwo/Scripts/3_Game",
				};
			};
			class worldScriptModule {
				value = "";
				files[] = {
					"HM/ExampleTwo/Defines",
					"HM/ExampleTwo/Scripts/4_World",
				};
			};
			class missionScriptModule {
				value = "";
				files[] = {
					"HM/ExampleTwo/Defines",
					"HM/ExampleTwo/Scripts/5_Mission",
				};
			};
		};
	};
};
