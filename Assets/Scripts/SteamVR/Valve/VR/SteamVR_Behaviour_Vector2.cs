using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Behaviour_Vector2 : MonoBehaviour
	{
		public SteamVR_Action_Vector2 vector2Action;
		public SteamVR_Input_Sources inputSource;
		public SteamVR_Behaviour_Vector2Event onChange;
		public SteamVR_Behaviour_Vector2Event onUpdate;
		public SteamVR_Behaviour_Vector2Event onAxis;
	}
}
