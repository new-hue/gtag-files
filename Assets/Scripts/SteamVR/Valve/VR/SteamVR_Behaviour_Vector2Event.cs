using System;
using UnityEngine.Events;
using UnityEngine;

namespace Valve.VR
{
	[Serializable]
	public class SteamVR_Behaviour_Vector2Event : UnityEvent<SteamVR_Behaviour_Vector2, SteamVR_Input_Sources, Vector2, Vector2>
	{
	}
}
