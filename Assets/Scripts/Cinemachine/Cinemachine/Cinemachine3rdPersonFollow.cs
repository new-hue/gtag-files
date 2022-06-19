using UnityEngine;

namespace Cinemachine
{
	public class Cinemachine3rdPersonFollow : CinemachineComponentBase
	{
		public Vector3 Damping;
		public Vector3 ShoulderOffset;
		public float VerticalArmLength;
		public float CameraSide;
		public float CameraDistance;
		public LayerMask CameraCollisionFilter;
		public string IgnoreTag;
		public float CameraRadius;
	}
}
