using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class MoviePlayerSampleControls : MonoBehaviour
{
	public MoviePlayerSample Player;
	public OVRInputModule InputModule;
	public OVRGazePointer GazePointer;
	public GameObject LeftHand;
	public GameObject RightHand;
	public Canvas Canvas;
	public ButtonDownListener PlayPause;
	public MediaPlayerImage PlayPauseImage;
	public Slider ProgressBar;
	public ButtonDownListener FastForward;
	public MediaPlayerImage FastForwardImage;
	public ButtonDownListener Rewind;
	public MediaPlayerImage RewindImage;
	public float TimeoutTime;
}
