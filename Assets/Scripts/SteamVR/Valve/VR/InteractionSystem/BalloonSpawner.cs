using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class BalloonSpawner : MonoBehaviour
	{
		public float minSpawnTime;
		public float maxSpawnTime;
		public GameObject balloonPrefab;
		public bool autoSpawn;
		public bool spawnAtStartup;
		public bool playSounds;
		public SoundPlayOneshot inflateSound;
		public SoundPlayOneshot stretchSound;
		public bool sendSpawnMessageToParent;
		public float scale;
		public Transform spawnDirectionTransform;
		public float spawnForce;
		public bool attachBalloon;
		public Balloon.BalloonColor color;
	}
}
