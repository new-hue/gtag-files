using UnityEngine;
using UnityEngine.Events;

namespace Valve.VR.InteractionSystem
{
	public class HapticRack : MonoBehaviour
	{
		public LinearMapping linearMapping;
		public int teethCount;
		public int minimumPulseDuration;
		public int maximumPulseDuration;
		public UnityEvent onPulse;
	}
}
