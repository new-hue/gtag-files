using UnityEngine;
using System.Collections.Generic;

namespace UnityEngine.XR.Interaction.Toolkit
{
	public class GorillaSnapTurn : LocomotionProvider
	{
		public enum InputAxes
		{
			Primary2DAxis = 0,
			Secondary2DAxis = 1,
		}

		[SerializeField]
		private InputAxes m_TurnUsage;
		[SerializeField]
		private List<XRController> m_Controllers;
		[SerializeField]
		private float m_TurnAmount;
		[SerializeField]
		private float m_DebounceTime;
		[SerializeField]
		private float m_DeadZone;
		public float turnSpeed;
	}
}
