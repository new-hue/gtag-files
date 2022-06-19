using UnityEngine;
using System.Collections.Generic;

public class OVRCustomSkeleton : OVRSkeleton
{
	[SerializeField]
	private bool _applyBoneTranslations;
	[SerializeField]
	private List<Transform> _customBones_V2;
}
