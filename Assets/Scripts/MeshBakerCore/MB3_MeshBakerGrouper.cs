using UnityEngine;
using DigitalOpus.MB.Core;

public class MB3_MeshBakerGrouper : MonoBehaviour
{
	public enum ClusterType
	{
		none = 0,
		grid = 1,
		pie = 2,
		agglomerative = 3,
	}

	public ClusterType clusterType;
	public Transform parentSceneObject;
	public GrouperData data;
	public Bounds sourceObjectBounds;
	public string prefabOptions_outputFolder;
	public bool prefabOptions_autoGeneratePrefabs;
	public bool prefabOptions_mergeOutputIntoSinglePrefab;
	public MB3_MeshCombinerSettings meshBakerSettingsAsset;
	public MB3_MeshCombinerSettingsData meshBakerSettings;
}
