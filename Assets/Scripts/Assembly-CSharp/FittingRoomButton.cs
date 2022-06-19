using GorillaNetworking;
using UnityEngine.UI;
using UnityEngine;

public class FittingRoomButton : GorillaPressableButton
{
	public CosmeticsController.CosmeticItem currentCosmeticItem;
	public Image currentImage;
	public MeshRenderer button;
	public Material blank;
	public string noCosmeticText;
	public Text buttonText;
}
