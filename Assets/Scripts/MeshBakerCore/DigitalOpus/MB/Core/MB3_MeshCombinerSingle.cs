using System;
using UnityEngine;
using System.Collections.Generic;

namespace DigitalOpus.MB.Core
{
	[Serializable]
	public class MB3_MeshCombinerSingle : MB3_MeshCombiner
	{
		[Serializable]
		public class MB_DynamicGameObject
		{
			public int instanceID;
			public GameObject gameObject;
			public string name;
			public int vertIdx;
			public int blendShapeIdx;
			public int numVerts;
			public int numBlendShapes;
			public bool isSkinnedMeshWithBones;
			public int[] indexesOfBonesUsed;
			public int lightmapIndex;
			public Vector4 lightmapTilingOffset;
			public Vector3 meshSize;
			public bool show;
			public bool invertTriangles;
			public int[] submeshTriIdxs;
			public int[] submeshNumTris;
			public int[] targetSubmeshIdxs;
			public Rect[] uvRects;
			public Rect[] encapsulatingRect;
			public Rect[] sourceMaterialTiling;
			public Rect[] obUVRects;
			public int[] textureArraySliceIdx;
			public Material[] sourceSharedMaterials;
			public bool _beingDeleted;
			public int _triangleIdxAdjustment;
		}

		[Serializable]
		public class MBBlendShapeFrame
		{
			public float frameWeight;
			public Vector3[] vertices;
			public Vector3[] normals;
			public Vector3[] tangents;
		}

		[Serializable]
		public class MBBlendShape
		{
			public int gameObjectID;
			public GameObject gameObject;
			public string name;
			public int indexInSource;
			public MB3_MeshCombinerSingle.MBBlendShapeFrame[] frames;
		}

		[Serializable]
		public class SerializableIntArray
		{
			public int[] data;
		}

		public enum MeshCreationConditions
		{
			NoMesh = 0,
			CreatedInEditor = 1,
			CreatedAtRuntime = 2,
			AssignedByUser = 3,
		}

		[SerializeField]
		protected List<GameObject> objectsInCombinedMesh;
		[SerializeField]
		private int lightmapIndex;
		[SerializeField]
		private List<MB3_MeshCombinerSingle.MB_DynamicGameObject> mbDynamicObjectsInCombinedMesh;
		[SerializeField]
		private Vector3[] verts;
		[SerializeField]
		private Vector3[] normals;
		[SerializeField]
		private Vector4[] tangents;
		[SerializeField]
		private Vector2[] uvs;
		[SerializeField]
		private float[] uvsSliceIdx;
		[SerializeField]
		private Vector2[] uv2s;
		[SerializeField]
		private Vector2[] uv3s;
		[SerializeField]
		private Vector2[] uv4s;
		[SerializeField]
		private Vector2[] uv5s;
		[SerializeField]
		private Vector2[] uv6s;
		[SerializeField]
		private Vector2[] uv7s;
		[SerializeField]
		private Vector2[] uv8s;
		[SerializeField]
		private Color[] colors;
		[SerializeField]
		private Matrix4x4[] bindPoses;
		[SerializeField]
		private Transform[] bones;
		[SerializeField]
		internal MBBlendShape[] blendShapes;
		[SerializeField]
		internal MBBlendShape[] blendShapesInCombined;
		[SerializeField]
		private SerializableIntArray[] submeshTris;
		[SerializeField]
		private MeshCreationConditions _meshBirth;
		[SerializeField]
		private Mesh _mesh;
	}
}
