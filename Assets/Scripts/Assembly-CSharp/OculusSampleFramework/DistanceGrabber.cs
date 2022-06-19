using UnityEngine;

namespace OculusSampleFramework
{
	public class DistanceGrabber : OVRGrabber
	{
		[SerializeField]
		private float m_spherecastRadius;
		[SerializeField]
		private float m_noSnapThreshhold;
		[SerializeField]
		private bool m_useSpherecast;
		[SerializeField]
		public bool m_preventGrabThroughWalls;
		[SerializeField]
		private float m_objectPullVelocity;
		[SerializeField]
		private float m_maxGrabDistance;
		[SerializeField]
		private int m_grabObjectsInLayer;
		[SerializeField]
		private int m_obstructionLayer;
	}
}
