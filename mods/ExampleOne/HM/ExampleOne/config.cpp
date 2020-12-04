class CfgPatches {
	class HM_ExampleOne_Scripts {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {
			"DZ_Data",
			"JM_CF_Scripts",
		};
	};
};

class CfgMods {
	class HM_ExampleOne {
		dir = "HM/ExampleOne";
		picture = "";
		action = "";
		hideName = 0;
		hidePicture = 1;
		name = "Example One";
		credits = "hub33k";
		// creditsJson = "HM/ExampleOne/Scripts/Data/Credits.json";
		version = "0.0.0";
		// versionPath = "HM/ExampleOne/Scripts/Data/Version.hpp";
		author = "hub33k";
		authorID = "76561197968510850";
		extra = 0;
		type = "mod";

		dependencies[] = { "Game", "World", "Mission" };

		class defs {
			class gameScriptModule {
				value = "";
				files[] = {
					"HM/ExampleOne/Scripts/3_Game",
				};
			};
			class worldScriptModule {
				value = "";
				files[] = {
					"HM/ExampleOne/Scripts/4_World",
				};
			};
			class missionScriptModule {
				value = "";
				files[] = {
					"HM/ExampleOne/Scripts/5_Mission",
				};
			};
		};
	};
};
