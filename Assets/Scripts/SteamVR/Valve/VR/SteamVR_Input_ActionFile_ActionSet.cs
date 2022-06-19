using System;
using System.Collections.Generic;

namespace Valve.VR
{
	[Serializable]
	public class SteamVR_Input_ActionFile_ActionSet
	{
		public string name;
		public string usage;
		public List<SteamVR_Input_ActionFile_Action> actionsInList;
		public List<SteamVR_Input_ActionFile_Action> actionsOutList;
		public List<SteamVR_Input_ActionFile_Action> actionsList;
	}
}
