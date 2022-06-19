using System.Collections.Generic;
using UnityEngine;

public class MB3_MeshBakerCommon : MB3_MeshBakerRoot
{
	public List<GameObject> objsToMesh;
	public bool useObjsToMeshFromTexBaker;
	public bool clearBuffersAfterBake;
	public string bakeAssetsInPlaceFolderPath;
	public GameObject resultPrefab;
	public bool resultPrefabLeaveInstanceInSceneAfterBake;
	public Transform parentSceneObject;
}
