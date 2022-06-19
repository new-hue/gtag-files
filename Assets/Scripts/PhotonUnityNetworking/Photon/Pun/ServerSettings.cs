using System;
using UnityEngine;
using Photon.Realtime;
using System.Collections.Generic;

namespace Photon.Pun
{
	[Serializable]
	public class ServerSettings : ScriptableObject
	{
		public AppSettings AppSettings;
		public string DevRegion;
		public PunLogLevel PunLogging;
		public bool EnableSupportLogger;
		public bool RunInBackground;
		public bool StartInOfflineMode;
		public List<string> RpcList;
	}
}
