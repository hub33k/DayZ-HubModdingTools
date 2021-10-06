class CfgPatches {
  class ExampleMod_Scripts {
    units[] = {};
    weapons[] = {};
    requiredVersion = 0.1;
    requiredAddons[] = {
      "DZ_Scripts",
      "DZ_Data",

      // Mods
      // "JM_CF_Scripts",
      // "DF_Scripts",
      // "BaseBuildingPlus",
    };
  };
};

class CfgMods {
  class DZ_ExampleMod {
    name = "Example Mod";
    dir = "HM/ExampleMod";
    credits = "hub33k";
    author = "hub33k";
    overview = "Example Mod. Created by hub33k";
    creditsJson = "HM/ExampleMod/Scripts/Data/Credits.json";
    versionPath = "HM/ExampleMod/Scripts/Data/Version.hpp";
    inputs = "HM/ExampleMod/Scripts/Data/Inputs.xml";
    type = "mod";
    dependencies[] = { "Game", "World", "Mission" };

    class defs {
      class imageSets {
        files[] = {
          // "HM/ExampleMod/GUI/imagesets/prefabs.imageset",
        };
      };

      class widgetStyles {
        files[] = {
          // "HM/ExampleMod/GUI/looknfeel/prefabs.styles",
        };
      };

      class engineScriptModule {
        value = "";
        files[] = {
          "HM/ExampleMod/Scripts/Common",
          "HM/ExampleMod/Scripts/1_Core",
        };
      };

      class gameScriptModule {
        value = "";
        files[] = {
          "HM/ExampleMod/Scripts/Common",
          "HM/ExampleMod/Scripts/3_Game",
        };
      };
      class worldScriptModule {
        value = "";
        files[] = {
          "HM/ExampleMod/Scripts/Common",
          "HM/ExampleMod/Scripts/4_World",
        };
      };

      class missionScriptModule {
        value = "";
        files[] = {
          "HM/ExampleMod/Scripts/Common",
          "HM/ExampleMod/Scripts/5_Mission",
        };
      };
    };
  };
};
