public class GorillaTagManager : GorillaGameManager
{
	public float tagDistanceThreshold;
	public float tagCoolDown;
	public int infectedModeThreshold;
	public int[] currentInfectedArray;
	public double lastTag;
	public double timeInfectedGameEnded;
	public bool waitingToStartNextInfectionGame;
	public bool isCurrentlyTag;
	public bool isCasual;
	public float[] inspectorLocalPlayerSpeed;
}
