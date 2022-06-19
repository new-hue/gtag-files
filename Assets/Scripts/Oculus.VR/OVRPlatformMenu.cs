using UnityEngine;

public class OVRPlatformMenu : MonoBehaviour
{
	public enum eHandler
	{
		ShowConfirmQuit = 0,
		RetreatOneLevel = 1,
	}

	public eHandler shortPressHandler;
}
