using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Behaviour_Vector3 : MonoBehaviour
	{
		public SteamVR_Action_Vector3 vector3Action;
		public SteamVR_Input_Sources inputSource;
		public SteamVR_Behaviour_Vector3Event onChange;
		public SteamVR_Behaviour_Vector3Event onUpdate;
		public SteamVR_Behaviour_Vector3Event onAxis;
	}
}
