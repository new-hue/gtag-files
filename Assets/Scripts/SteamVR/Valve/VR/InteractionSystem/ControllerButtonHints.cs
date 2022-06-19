using UnityEngine;
using Valve.VR;

namespace Valve.VR.InteractionSystem
{
	public class ControllerButtonHints : MonoBehaviour
	{
		public Material controllerMaterial;
		public Material urpControllerMaterial;
		public Color flashColor;
		public GameObject textHintPrefab;
		public SteamVR_Action_Vibration hapticFlash;
		public bool autoSetWithControllerRangeOfMotion;
		public bool debugHints;
	}
}
