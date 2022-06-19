using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_ActivateActionSetOnLoad : MonoBehaviour
	{
		public SteamVR_ActionSet actionSet;
		public SteamVR_Input_Sources forSources;
		public bool disableAllOtherActionSets;
		public bool activateOnStart;
		public bool deactivateOnDestroy;
		public int initialPriority;
	}
}
