[WorkbenchPluginAttribute("HMT DayZ Tester", "Just for testing", "Ctrl+Shift+T", "", {"ScriptEditor"})]
class TesterTool : DayZTool {
	override void Run() {
		RunDayZPS1Script("P:\\HubModdingTools\\test.ps1", true);
	}
}
