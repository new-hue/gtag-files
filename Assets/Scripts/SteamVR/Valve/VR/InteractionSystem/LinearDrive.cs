using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class LinearDrive : MonoBehaviour
	{
		public Transform startPosition;
		public Transform endPosition;
		public LinearMapping linearMapping;
		public bool repositionGameObject;
		public bool maintainMomemntum;
		public float momemtumDampenRate;
	}
}
