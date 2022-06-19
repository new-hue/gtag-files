using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class VelocityEstimator : MonoBehaviour
	{
		public int velocityAverageFrames;
		public int angularVelocityAverageFrames;
		public bool estimateOnAwake;
	}
}
