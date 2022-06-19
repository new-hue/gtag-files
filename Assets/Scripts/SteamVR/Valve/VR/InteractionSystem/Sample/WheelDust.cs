using UnityEngine;

namespace Valve.VR.InteractionSystem.Sample
{
	public class WheelDust : MonoBehaviour
	{
		public ParticleSystem p;
		public float EmissionMul;
		public float velocityMul;
		public float maxEmission;
		public float minSlip;
		public float amt;
		public Vector3 slip;
	}
}
