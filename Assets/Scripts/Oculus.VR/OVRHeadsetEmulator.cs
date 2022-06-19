using UnityEngine;

public class OVRHeadsetEmulator : MonoBehaviour
{
	public enum OpMode
	{
		Off = 0,
		EditorOnly = 1,
		AlwaysOn = 2,
	}

	public OpMode opMode;
	public bool resetHmdPoseOnRelease;
	public bool resetHmdPoseByMiddleMouseButton;
	public KeyCode[] activateKeys;
	public KeyCode[] pitchKeys;
}
