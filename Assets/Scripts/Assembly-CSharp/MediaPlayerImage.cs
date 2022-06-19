using UnityEngine.UI;
using UnityEngine;

public class MediaPlayerImage : Image
{
	public enum ButtonType
	{
		Play = 0,
		Pause = 1,
		FastForward = 2,
		Rewind = 3,
		SkipForward = 4,
		SkipBack = 5,
		Stop = 6,
	}

	[SerializeField]
	private ButtonType m_ButtonType;
}
