using UnityEngine;
using System;

namespace Valve.VR.InteractionSystem.Sample
{
	public class CustomSkeletonHelper : MonoBehaviour
	{
		[Serializable]
		public class Retargetable
		{
			public Retargetable(Transform source, Transform destination)
			{
			}

			public Transform source;
			public Transform destination;
		}

		[Serializable]
		public class Finger
		{
			public Finger(CustomSkeletonHelper.Retargetable metacarpal, CustomSkeletonHelper.Retargetable proximal, CustomSkeletonHelper.Retargetable middle, CustomSkeletonHelper.Retargetable distal, Transform aux)
			{
			}

			public CustomSkeletonHelper.Retargetable metacarpal;
			public CustomSkeletonHelper.Retargetable proximal;
			public CustomSkeletonHelper.Retargetable middle;
			public CustomSkeletonHelper.Retargetable distal;
			public Transform aux;
		}

		[Serializable]
		public class Thumb
		{
			public Thumb(CustomSkeletonHelper.Retargetable metacarpal, CustomSkeletonHelper.Retargetable middle, CustomSkeletonHelper.Retargetable distal, Transform aux)
			{
			}

			public CustomSkeletonHelper.Retargetable metacarpal;
			public CustomSkeletonHelper.Retargetable middle;
			public CustomSkeletonHelper.Retargetable distal;
			public Transform aux;
		}

		public Retargetable wrist;
		public Finger[] fingers;
		public Thumb[] thumbs;
	}
}
