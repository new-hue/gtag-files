using UnityEngine;

public class DayNightCycle : MonoBehaviour
{
	public Texture2D _dayMap;
	public Texture2D _sunriseMap;
	public bool isComplete;
	public float timeTakenStartingJob;
	public float timeTakenPostJob;
	public float timeTakenDuringJob;
	public Texture2D newTexture;
	public int textureWidth;
	public int textureHeight;
	public int subTextureSize;
	public Texture2D[] subTextureArray;
	public bool startCoroutine;
	public bool startedCoroutine;
	public bool finishedCoroutine;
	public bool startJob;
	public float switchTimeTaken;
	public bool jobStarted;
	public float lerpAmount;
	public int currentRow;
	public int currentColumn;
	public int currentSubTexture;
	public int currentRowInSubtexture;
}
