using UnityEngine;

public class OVRMesh : MonoBehaviour
{
	public enum MeshType
	{
		None = -1,
		HandLeft = 0,
		HandRight = 1,
	}

	[SerializeField]
	private MeshType _meshType;
}
