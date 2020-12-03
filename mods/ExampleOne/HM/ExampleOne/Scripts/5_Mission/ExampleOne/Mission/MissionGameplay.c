modded class MissionGameplay {
	ref TestGame m_TestGame;

	void MissionGameplay() {
		m_TestGame = new ref TestGame();

        Print("Loaded Client Mission");
	}

	void ~MissionGameplay() {}

 	override void OnKeyPress(int key) {
        super.OnKeyPress(key);

        m_TestGame.OnKeyPress(key);
    }

	override void OnUpdate(float timeslice)	{
		super.OnUpdate(timeslice);
	}
}
