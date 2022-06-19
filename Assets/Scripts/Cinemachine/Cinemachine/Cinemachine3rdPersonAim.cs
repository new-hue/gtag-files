using UnityEngine;

namespace Cinemachine
{
	public class Cinemachine3rdPersonAim : CinemachineExtension
	{
		public LayerMask AimCollisionFilter;
		public string IgnoreTag;
		public float AimDistance;
		public RectTransform AimTargetReticle;
	}
}
