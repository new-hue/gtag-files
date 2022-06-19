using System;
using PlayFab.SharedModels;
using System.Collections.Generic;

namespace PlayFab.ClientModels
{
	[Serializable]
	public class CatalogItemContainerInfo : PlayFabBaseModel
	{
		public List<string> ItemContents;
		public string KeyItemId;
		public List<string> ResultTableContents;
	}
}
