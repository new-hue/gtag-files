using UnityEngine;

public class MoviePlayerSample : MonoBehaviour
{
	public enum VideoShape
	{
		_360 = 0,
		_180 = 1,
		Quad = 2,
	}

	public enum VideoStereo
	{
		Mono = 0,
		TopBottom = 1,
		LeftRight = 2,
		BottomTop = 3,
	}

	public string MovieName;
	public string DrmLicenseUrl;
	public bool LoopVideo;
	public VideoShape Shape;
	public VideoStereo Stereo;
	public bool DisplayMono;
}
