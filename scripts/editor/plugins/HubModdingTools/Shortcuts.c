// General

[WorkbenchPluginAttribute("HMT Open Mod Folder", "Opens current mod folder", "ctrl+shift+a", "", {"ScriptEditor", "ResourceManager"})]
class OpenModFolder : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\scripts\\OpenModFolder.ps1", true);
	}
}

[WorkbenchPluginAttribute("HMT Open Server Folder", "Opens current server folder", "ctrl+shift+s", "", {"ScriptEditor", "ResourceManager"})]
class OpenServerFolder : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\scripts\\OpenServerFolder.ps1", true);
	}
}

[WorkbenchPluginAttribute("HMT Open HMT Folder", "Opens Hub Modding Tools folder", "ctrl+shift+d", "", {"ScriptEditor", "ResourceManager"})]
class OpenHMTFolder : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\scripts\\OpenHMTFolder.ps1", true);
	}
}


// Start & Stop

[WorkbenchPluginAttribute("HMT DayZ Start", "Starts server and client", "alt+1", "", {"ScriptEditor", "ResourceManager"})]
class Start : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\scripts\\Start.ps1", true);
	}
}

[WorkbenchPluginAttribute("HMT DayZ Stop All", "Stops server and client", "alt+9", "", {"ScriptEditor", "ResourceManager"})]
class StopAll : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\scripts\\StopAll.ps1", true);
	}
}

// Cleanup

[WorkbenchPluginAttribute("HMT DayZ Stop All and Clean", "Stops server and client and clean", "alt+8", "", {"ScriptEditor", "ResourceManager"})]
class StopAllAndClean : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\scripts\\StopAllAndClean.ps1", true);
	}
}

[WorkbenchPluginAttribute("HMT DayZ Clear Logs", "Removes all logs", "alt+7", "", {"ScriptEditor", "ResourceManager"})]
class ClearLogs : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\scripts\\ClearLogs.ps1", true);
	}
}

[WorkbenchPluginAttribute("HMT DayZ Wipe", "Wipes server", "alt+6", "", {"ScriptEditor", "ResourceManager"})]
class WipeServer : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\scripts\\WipeServer.ps1", true);
	}
}
