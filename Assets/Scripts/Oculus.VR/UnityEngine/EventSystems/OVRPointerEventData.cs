using UnityEngine;

namespace UnityEngine.EventSystems
{
	public class OVRPointerEventData : PointerEventData
	{
		public OVRPointerEventData(EventSystem eventSystem) : base(default(EventSystem))
		{
		}

		public Vector2 swipeStart;
	}
}
