using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class Arrow : MonoBehaviour
	{
		public ParticleSystem glintParticle;
		public Rigidbody arrowHeadRB;
		public Rigidbody shaftRB;
		public PhysicMaterial targetPhysMaterial;
		public SoundPlayOneshot fireReleaseSound;
		public SoundPlayOneshot airReleaseSound;
		public SoundPlayOneshot hitTargetSound;
		public PlaySound hitGroundSound;
	}
}
