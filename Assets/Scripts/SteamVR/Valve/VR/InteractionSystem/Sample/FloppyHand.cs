using UnityEngine;
using System;
using Valve.VR;

namespace Valve.VR.InteractionSystem.Sample
{
	public class FloppyHand : MonoBehaviour
	{
		[Serializable]
		public class Finger
		{
			public enum eulerAxis
			{
				X = 0,
				Y = 1,
				Z = 2,
			}

			public float mass;
			public float pos;
			public Vector3 forwardAxis;
			public SkinnedMeshRenderer renderer;
			public SteamVR_Action_Single squeezyAction;
			public SteamVR_Input_Sources inputSource;
			public Transform[] bones;
			public Transform referenceBone;
			public Vector2 referenceAngles;
			public eulerAxis referenceAxis;
			public float flexAngle;
		}

		public SteamVR_Action_Single squeezyAction;
		public SteamVR_Input_Sources inputSource;
		public Finger[] fingers;
		public Vector3 constforce;
	}
}
