using System.Collections.Generic;
using UnityEngine;

namespace UnityEngine.EventSystems
{
	public class OVRPhysicsRaycaster : BaseRaycaster
	{
		public override void Raycast(PointerEventData eventData, List<RaycastResult> resultAppendList)
		{
		}

		public override Camera eventCamera
		{
			get { return default(Camera); }
		}

		[SerializeField]
		protected LayerMask m_EventMask;
		public int sortOrder;
	}
}
