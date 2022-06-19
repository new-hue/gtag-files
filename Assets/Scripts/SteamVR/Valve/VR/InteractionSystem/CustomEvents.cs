using System;
using UnityEngine.Events;

namespace Valve.VR.InteractionSystem
{
	public class CustomEvents
	{
		[Serializable]
		public class UnityEventHand : UnityEvent<Hand>
		{
		}

	}
}
