using UnityEngine;

namespace Photon.Pun.UtilityScripts
{
	public class CullArea : MonoBehaviour
	{
		public Vector2 Center;
		public Vector2 Size;
		public Vector2[] Subdivisions;
		public int NumberOfSubdivisions;
		public bool YIsUpAxis;
		public bool RecreateCellHierarchy;
	}
}
