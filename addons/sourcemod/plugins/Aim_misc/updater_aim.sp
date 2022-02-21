#include <updater>
#define UPDATE_URL "https://raw.githubusercontent.com/alix1383/Aim/main/addons/sourcemod/updatefile-Aim.txt"
public Plugin myinfo = 
{
	name = "auto updater",
	author = "alix",
	description = "updater for Aim/Awp[Game MOD] plugins",
	version = "1.0.0",
	url = "https://github.com/alix1383"
};
public void OnPluginStart()
{
    	if (LibraryExists("updater"))
	{
		Updater_AddPlugin(UPDATE_URL);
	}
}
public void OnLibraryAdded(const char[] name)
{
	if (StrEqual(name, "updater"))
	{
		Updater_AddPlugin(UPDATE_URL);
	}
}