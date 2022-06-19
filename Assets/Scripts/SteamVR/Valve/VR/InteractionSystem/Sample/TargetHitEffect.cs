using UnityEngine;

namespace Valve.VR.InteractionSystem.Sample
{
	public class TargetHitEffect : MonoBehaviour
	{
		public Collider targetCollider;
		public GameObject spawnObjectOnCollision;
		public bool colorSpawnedObject;
		public bool destroyOnTargetCollision;
	}
}
