using UnityEngine;
using PlayFab;

public class PlayFabSharedSettings : ScriptableObject
{
	public string TitleId;
	public string ProductionEnvironmentUrl;
	public WebRequestType RequestType;
	public string AdvertisingIdType;
	public string AdvertisingIdValue;
	public bool DisableAdvertising;
	public bool DisableDeviceInfo;
	public bool DisableFocusTimeCollection;
	public int RequestTimeout;
	public bool RequestKeepAlive;
	public bool CompressApiData;
	public PlayFabLogLevel LogLevel;
	public string LoggerHost;
	public int LoggerPort;
	public bool EnableRealTimeLogging;
	public int LogCapLimit;
}
