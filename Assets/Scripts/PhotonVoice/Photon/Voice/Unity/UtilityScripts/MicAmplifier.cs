using Photon.Voice.Unity;
using UnityEngine;

namespace Photon.Voice.Unity.UtilityScripts
{
	public class MicAmplifier : VoiceComponent
	{
		[SerializeField]
		private float boostValue;
		[SerializeField]
		private float amplificationFactor;
	}
}
