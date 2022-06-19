using UnityEngine;

public class SynchedMusicController : MonoBehaviour
{
	public int mySeed;
	public long minimumWait;
	public int randomInterval;
	public long[] songStartTimes;
	public int[] audioSourcesForPlaying;
	public int[] audioClipsForPlaying;
	public AudioSource audioSource;
	public AudioSource[] audioSourceArray;
	public AudioClip[] songsArray;
	public int lastPlayIndex;
	public long currentTime;
	public bool isMuted;
	public long totalLoopTime;
	public GorillaPressableButton muteButton;
	public bool usingMultipleSongs;
	public bool usingMultipleSources;
	public bool isPlayingCurrently;
	public bool testPlay;
	public bool twoLayer;
	public string locationName;
}
