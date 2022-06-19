using UnityEngine;
using System;

namespace Valve.VR
{
	public class SteamVR_ExternalCamera : MonoBehaviour
	{
		[Serializable]
		public struct Config
		{
			public float x;
			public float y;
			public float z;
			public float rx;
			public float ry;
			public float rz;
			public float fov;
			public float near;
			public float far;
			public float sceneResolutionScale;
			public float frameSkip;
			public float nearOffset;
			public float farOffset;
			public float hmdOffset;
			public float r;
			public float g;
			public float b;
			public float a;
			public bool disableStandardAssets;
		}

		public Config config;
		public string configPath;
		public bool autoEnableDisableActionSet;
	}
}
