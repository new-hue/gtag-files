using UnityEngine;
using System;
using System.Collections.Generic;
using PlayFab.ClientModels;
using UnityEngine.UI;

namespace GorillaNetworking
{
	public class CosmeticsController : MonoBehaviour
	{
		[Serializable]
		public struct CosmeticSet
		{
			public CosmeticsController.CosmeticItem hat;
			public CosmeticsController.CosmeticItem badge;
			public CosmeticsController.CosmeticItem face;
			public CosmeticsController.CosmeticItem leftHandHold;
			public CosmeticsController.CosmeticItem rightHandHold;
		}

		[Serializable]
		public struct Wardrobe
		{
			public WardrobeItemButton[] wardrobeItemButtons;
			public HeadModel selfDoll;
		}

		[Serializable]
		public struct CosmeticItem
		{
			public string itemName;
			public string itemSlot;
			public Sprite itemPicture;
			public string displayName;
			public int cost;
			public string[] bundledItems;
			public bool canTryOn;
			public bool bothHandsHoldable;
		}

		public enum PurchaseItemStages
		{
			Start = 0,
			CheckoutButtonPressed = 1,
			ItemSelected = 2,
			ItemOwned = 3,
			FinalPurchaseAcknowledgement = 4,
			Buying = 5,
			Success = 6,
			Failure = 7,
		}

		public enum ATMStages
		{
			Unavailable = 0,
			Begin = 1,
			Menu = 2,
			Balance = 3,
			Choose = 4,
			Confirm = 5,
			Purchasing = 6,
			Success = 7,
			Failure = 8,
			Locked = 9,
		}

		public List<CosmeticsController.CosmeticItem> allCosmetics;
		public CosmeticItem nullItem;
		public string catalog;
		public GorillaComputer computer;
		public List<CatalogItem> catalogItems;
		public bool tryTwice;
		public CosmeticSet tryOnSet;
		public FittingRoomButton[] fittingRoomButtons;
		public CosmeticStand[] cosmeticStands;
		public List<CosmeticsController.CosmeticItem> currentCart;
		public PurchaseItemStages currentPurchaseItemStage;
		public CheckoutCartButton[] checkoutCartButtons;
		public PurchaseItemButton leftPurchaseButton;
		public PurchaseItemButton rightPurchaseButton;
		public Text purchaseText;
		public CosmeticItem itemToBuy;
		public HeadModel checkoutHeadModel;
		public Wardrobe[] wardrobes;
		public List<CosmeticsController.CosmeticItem> unlockedCosmetics;
		public List<CosmeticsController.CosmeticItem> unlockedHats;
		public List<CosmeticsController.CosmeticItem> unlockedFaces;
		public List<CosmeticsController.CosmeticItem> unlockedBadges;
		public List<CosmeticsController.CosmeticItem> unlockedHoldable;
		public int[] cosmeticsPages;
		public CosmeticSet currentWornSet;
		public string concatStringCosmeticsAllowed;
		public Text atmText;
		public string currentAtmString;
		public Text infoText;
		public Text earlyAccessText;
		public Text[] purchaseButtonText;
		public Text dailyText;
		public ATMStages currentATMStage;
		public Text atmButtonsText;
		public int currencyBalance;
		public string currencyName;
		public PurchaseCurrencyButton[] purchaseCurrencyButtons;
		public Text currencyBoardText;
		public Text currencyBoxText;
		public string startingCurrencyBoxTextString;
		public string successfulCurrencyPurchaseTextString;
		public int numShinyRocksToBuy;
		public float shinyRocksCost;
		public string itemToPurchase;
		public bool confirmedDidntPlayInBeta;
		public bool playedInBeta;
		public bool gotMyDaily;
		public bool checkedDaily;
		public string currentPurchaseID;
		public bool hasPrice;
		public EarlyAccessButton earlyAccessButton;
		public string lastDailyLogin;
		public UserDataRecord userDataRecord;
		public int secondsUntilTomorrow;
		public float secondsToWaitToCheckDaily;
	}
}
