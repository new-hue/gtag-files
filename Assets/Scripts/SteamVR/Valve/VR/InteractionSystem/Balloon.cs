using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class Balloon : MonoBehaviour
	{
		public enum BalloonColor
		{
			Red = 0,
			OrangeRed = 1,
			Orange = 2,
			YellowOrange = 3,
			Yellow = 4,
			GreenYellow = 5,
			Green = 6,
			BlueGreen = 7,
			Blue = 8,
			VioletBlue = 9,
			Violet = 10,
			RedViolet = 11,
			LightGray = 12,
			DarkGray = 13,
			Random = 14,
		}

		public GameObject popPrefab;
		public float maxVelocity;
		public float lifetime;
		public bool burstOnLifetimeEnd;
		public GameObject lifetimeEndParticlePrefab;
		public SoundPlayOneshot lifetimeEndSound;
		public SoundPlayOneshot collisionSound;
	}
}
