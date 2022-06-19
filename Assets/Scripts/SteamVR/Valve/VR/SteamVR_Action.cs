using System;
using UnityEngine;

namespace Valve.VR
{
	[Serializable]
	public class SteamVR_Action
	{
		[SerializeField]
		protected string actionPath;
		[SerializeField]
		protected bool needsReinit;
	}
}
