modded class DayZTool : WorkbenchPlugin {
	/**
	 * Run PowerShell script.
	 *
	 * @param {string}  filepath
	 * @param {bool}    wait
	 * @param {string}  powershellExec - `powershell` (version 5) or `pwsh` (version 7 or latest)
	 */
	void RunDayZPS1Script(string filepath, bool wait = false, string powershellExec = "powershell") {
		filepath.Replace("\\", "/");

		string commandToRun = string.Format("%2 %1", filepath, powershellExec);

		Workbench.RunCmd(commandToRun, wait);
	}

	/**
	 * Run PowerShell inline script.
	 *
	 * @param {string}  powershell command
	 * @param {bool}    wait
	 * @param {string}  powershellExec - `powershell` (version 5) or `pwsh` (version 7 or latest)
	 */
	void RunDayZPS1Inline(string command, bool wait = false, string powershellExec = "powershell") {
		string commandToRun = string.Format("%2 -Command '%1'", command, powershellExec);

		Workbench.RunCmd(commandToRun, wait);
	}
}
