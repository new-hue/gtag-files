using System;
using PlayFab.SharedModels;
using System.Collections.Generic;

namespace PlayFab.ClientModels
{
	[Serializable]
	public class CatalogItemBundleInfo : PlayFabBaseModel
	{
		public List<string> BundledItems;
		public List<string> BundledResultTables;
	}
}
