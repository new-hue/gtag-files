using UnityEngine;

namespace OVR
{
	public class MinMaxAttribute : PropertyAttribute
	{
		public MinMaxAttribute(float minDefaultVal, float maxDefaultVal, float min, float max)
		{
		}

		public float minDefaultVal;
		public float maxDefaultVal;
		public float min;
		public float max;
	}
}
