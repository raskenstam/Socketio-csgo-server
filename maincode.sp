#include <sourcemod>
#include <cstrike.inc>



public Plugin myinfo =
{
	name = "My First Plugin",
	author = "Me",
	description = "My first plugin ever",
	version = "1.0",
	url = "http://www.sourcemod.net/"
};
public void OnPluginStart()
{
	PrintToServer("Hello worldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworld!");
}

public OnClientPostAdminCheck(client)
{	
	
	char auth[32];
	GetClientAuthId(client, AuthId_SteamID64, auth, sizeof(auth));
    PrintToServer("Hello world1");
	PrintToServer(auth);
	CS_SwitchTeam(client, 1)
	
}
