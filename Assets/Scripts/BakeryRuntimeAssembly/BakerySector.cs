using UnityEngine;
using System.Collections.Generic;

public class BakerySector : MonoBehaviour
{
	public enum CaptureMode
	{
		None = -1,
		CaptureInPlace = 0,
		CaptureToAsset = 1,
		LoadCaptured = 2,
	}

	public CaptureMode captureMode;
	public string captureAssetName;
	public BakerySectorCapture captureAsset;
	public bool allowUVPaddingAdjustment;
	public List<Transform> tforms;
	public List<Transform> cpoints;
}
