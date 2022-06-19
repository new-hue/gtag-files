using UnityEngine;

namespace Valve.VR.InteractionSystem.Sample
{
	public class BuggyBuddy : MonoBehaviour
	{
		public Transform turret;
		public float maxAngle;
		public float maxTurnTorque;
		public float maxTorque;
		public float brakeTorque;
		public GameObject[] wheelRenders;
		public float criticalSpeed;
		public int stepsBelow;
		public int stepsAbove;
		public AudioSource au_motor;
		public float mvol;
		public AudioSource au_skid;
		public WheelDust skidsample;
		public Vector3 localGravity;
		public Rigidbody body;
		public float rapidfireTime;
		public Vector2 steer;
		public float throttle;
		public float handBrake;
		public Transform controllerReference;
		public float speed;
		public Transform centerOfMass;
	}
}
