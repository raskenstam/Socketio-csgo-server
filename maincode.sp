#include <sourcemod>
#include <cstrike>
#include <sdktools_functions>
#include <adt_array>
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
	AddCommandListener(Command_JoinTeam, "jointeam");
	PrintToServer("Hello worldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworldworld!");
}

public OnClientPostAdminCheck(client)
{	
	
	char auth[32];
	
	GetClientAuthId(client, AuthId_SteamID64, auth, sizeof(auth));
    PrintToServer("Hello world1");
	PrintToServer(auth);
	
	
	
	

	
	
}

public Action Command_JoinTeam(int client, const char[] command, int argc) {
	new old_team = GetClientTeam(client);

	
	if(old_team != CS_TEAM_SPECTATOR) {
		if(IsPlayerAlive(client) != CS_TEAM_SPECTATOR && old_team != CS_TEAM_SPECTATOR) {
			ForcePlayerSuicide(client);
			CS_SwitchTeam(client, CS_TEAM_CT);
		} 
		 else {
			ChangeClientTeam(client, CS_TEAM_CT);
		}
		return Plugin_Handled;
	} else {
		return Plugin_Continue;
	}
	PrintToServer("teamchanged");
}
