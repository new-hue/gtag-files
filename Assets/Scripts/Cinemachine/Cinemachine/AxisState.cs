using System;
using UnityEngine;

namespace Cinemachine
{
	[Serializable]
	public struct AxisState
	{
		[Serializable]
		public struct Recentering
		{
			public Recentering(bool enabled, float waitTime, float recenteringTime) : this()
			{
			}

			public bool m_enabled;
			public float m_WaitTime;
			public float m_RecenteringTime;
			[SerializeField]
			private int m_LegacyHeadingDefinition;
			[SerializeField]
			private int m_LegacyVelocityFilterStrength;
		}

		public enum SpeedMode
		{
			MaxSpeed = 0,
			InputValueGain = 1,
		}

		public AxisState(float minValue, float maxValue, bool wrap, bool rangeLocked, float maxSpeed, float accelTime, float decelTime, string name, bool invert) : this()
		{
		}

		public float Value;
		public SpeedMode m_SpeedMode;
		public float m_MaxSpeed;
		public float m_AccelTime;
		public float m_DecelTime;
		public string m_InputAxisName;
		public float m_InputAxisValue;
		public bool m_InvertInput;
		public float m_MinValue;
		public float m_MaxValue;
		public bool m_Wrap;
		public Recentering m_Recentering;
	}
}
