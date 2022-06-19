using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class Longbow : MonoBehaviour
	{
		public enum Handedness
		{
			Left = 0,
			Right = 1,
		}

		public Handedness currentHandGuess;
		public Transform pivotTransform;
		public Transform handleTransform;
		public Transform nockTransform;
		public Transform nockRestTransform;
		public bool autoSpawnArrowHand;
		public ItemPackage arrowHandItemPackage;
		public GameObject arrowHandPrefab;
		public bool nocked;
		public bool pulled;
		public float arrowMinVelocity;
		public float arrowMaxVelocity;
		public float drawOffset;
		public LinearMapping bowDrawLinearMapping;
		public SoundBowClick drawSound;
		public SoundPlayOneshot arrowSlideSound;
		public SoundPlayOneshot releaseSound;
		public SoundPlayOneshot nockSound;
	}
}
