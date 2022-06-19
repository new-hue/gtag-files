using UnityEngine;
using Valve.VR.InteractionSystem;

namespace Valve.VR.InteractionSystem.Sample
{
	public class JoeJeff : MonoBehaviour
	{
		public float animationSpeed;
		public float jumpVelocity;
		[SerializeField]
		private float m_MovingTurnSpeed;
		[SerializeField]
		private float m_StationaryTurnSpeed;
		public float airControl;
		public float frictionTime;
		[SerializeField]
		private float footHeight;
		[SerializeField]
		private float footRadius;
		public FireSource fire;
	}
}
