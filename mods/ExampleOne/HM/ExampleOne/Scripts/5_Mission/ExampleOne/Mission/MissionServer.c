modded class MissionServer {
	ref TestGame m_TestGame;

	void MissionServer() {
		m_TestGame = new ref TestGame();

		Print("Loaded Server Mission");
	}

	void ~MissionServer() {}
}
