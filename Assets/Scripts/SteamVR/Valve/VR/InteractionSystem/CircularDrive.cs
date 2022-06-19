using UnityEngine;
using UnityEngine.Events;

namespace Valve.VR.InteractionSystem
{
	public class CircularDrive : MonoBehaviour
	{
		public enum Axis_t
		{
			XAxis = 0,
			YAxis = 1,
			ZAxis = 2,
		}

		public Axis_t axisOfRotation;
		public Collider childCollider;
		public LinearMapping linearMapping;
		public bool hoverLock;
		public bool limited;
		public Vector2 frozenDistanceMinMaxThreshold;
		public UnityEvent onFrozenDistanceThreshold;
		public float minAngle;
		public bool freezeOnMin;
		public UnityEvent onMinAngle;
		public float maxAngle;
		public bool freezeOnMax;
		public UnityEvent onMaxAngle;
		public bool forceStart;
		public float startAngle;
		public bool rotateGameObject;
		public bool debugPath;
		public int dbgPathLimit;
		public TextMesh debugText;
		public float outAngle;
	}
}
