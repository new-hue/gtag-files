using System;
using System.Collections.Generic;

namespace Valve.VR
{
	[Serializable]
	public class SteamVR_Input_ActionFile
	{
		public List<SteamVR_Input_ActionFile_Action> actions;
		public List<SteamVR_Input_ActionFile_ActionSet> action_sets;
		public List<SteamVR_Input_ActionFile_DefaultBinding> default_bindings;
		public string filePath;
	}
}
