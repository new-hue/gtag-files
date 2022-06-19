public class GorillaHuntManager : GorillaGameManager
{
	public float tagDistanceThreshold;
	public float tagCoolDown;
	public int[] currentHuntedArray;
	public int[] currentTargetArray;
	public bool huntStarted;
	public bool waitingToStartNextHuntGame;
	public bool inStartCountdown;
	public int countDownTime;
	public double timeHuntGameEnded;
	public float timeLastSlowTagged;
}
