using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Behaviour_Single : MonoBehaviour
	{
		public SteamVR_Action_Single singleAction;
		public SteamVR_Input_Sources inputSource;
		public SteamVR_Behaviour_SingleEvent onChange;
		public SteamVR_Behaviour_SingleEvent onUpdate;
		public SteamVR_Behaviour_SingleEvent onAxis;
	}
}
