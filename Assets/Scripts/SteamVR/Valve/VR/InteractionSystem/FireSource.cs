using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class FireSource : MonoBehaviour
	{
		public GameObject fireParticlePrefab;
		public bool startActive;
		public ParticleSystem customParticles;
		public bool isBurning;
		public float burnTime;
		public float ignitionDelay;
		public AudioSource ignitionSound;
		public bool canSpreadFromThisSource;
	}
}
