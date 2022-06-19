using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Behaviour_Boolean : MonoBehaviour
	{
		public SteamVR_Action_Boolean booleanAction;
		public SteamVR_Input_Sources inputSource;
		public SteamVR_Behaviour_BooleanEvent onChange;
		public SteamVR_Behaviour_BooleanEvent onUpdate;
		public SteamVR_Behaviour_BooleanEvent onPress;
		public SteamVR_Behaviour_BooleanEvent onPressDown;
		public SteamVR_Behaviour_BooleanEvent onPressUp;
	}
}
