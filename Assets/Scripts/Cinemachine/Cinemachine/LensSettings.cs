using System;
using UnityEngine;

namespace Cinemachine
{
	[Serializable]
	public struct LensSettings
	{
		public enum OverrideModes
		{
			None = 0,
			Orthographic = 1,
			Perspective = 2,
			Physical = 3,
		}

		public LensSettings(float verticalFOV, float orthographicSize, float nearClip, float farClip, float dutch) : this()
		{
		}

		public float FieldOfView;
		public float OrthographicSize;
		public float NearClipPlane;
		public float FarClipPlane;
		public float Dutch;
		public OverrideModes ModeOverride;
		public Vector2 LensShift;
		public Camera.GateFitMode GateFit;
		[SerializeField]
		private Vector2 m_SensorSize;
	}
}
