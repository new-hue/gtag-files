using UnityEngine;
using UnityEngine.UI;

namespace Valve.VR.InteractionSystem.Sample
{
	public class TargetMeasurement : MonoBehaviour
	{
		public GameObject visualWrapper;
		public Transform measurementTape;
		public Transform endPoint;
		public Text measurementTextM;
		public Text measurementTextFT;
		public float maxDistanceToDraw;
		public bool drawTape;
	}
}
