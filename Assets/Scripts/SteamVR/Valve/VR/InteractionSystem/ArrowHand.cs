using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class ArrowHand : MonoBehaviour
	{
		public GameObject arrowPrefab;
		public Transform arrowNockTransform;
		public float nockDistance;
		public float lerpCompleteDistance;
		public float rotationLerpThreshold;
		public float positionLerpThreshold;
		public SoundPlayOneshot arrowSpawnSound;
		public int maxArrowCount;
	}
}
