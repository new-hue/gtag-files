using UnityEngine;
using Valve.VR;

namespace Valve.VR.InteractionSystem
{
	public class SnapTurn : MonoBehaviour
	{
		public float snapAngle;
		public bool showTurnAnimation;
		public AudioSource snapTurnSource;
		public AudioClip rotateSound;
		public GameObject rotateRightFX;
		public GameObject rotateLeftFX;
		public SteamVR_Action_Boolean snapLeftAction;
		public SteamVR_Action_Boolean snapRightAction;
		public bool fadeScreen;
		public float fadeTime;
		public Color screenFadeColor;
		public float distanceFromFace;
		public Vector3 additionalOffset;
		public float canTurnEverySeconds;
	}
}
