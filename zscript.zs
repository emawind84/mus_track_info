version "4.5.0"

class mti_MusicInfoHandler: EventHandler
{

	override void PlayerSpawned(PlayerEvent e)
	{
		let player = players[e.PlayerNumber].mo;
		// the order is important
		if (isPlutonia()) player.GiveInventory("mti_isplutonia", 1);
		else if (isTnt()) player.GiveInventory("mti_istnt", 1);
		else if (isChex3()) player.GiveInventory("mti_ischex3", 1);
		else if (isStrife()) player.GiveInventory("mti_isstrife", 1);
		else if (isHexendd()) player.GiveInventory("mti_ishexendd", 1);	
		else if (isHexen()) player.GiveInventory("mti_ishexen", 1);	
		else if (isHeretic()) player.GiveInventory("mti_isheretic", 1);	
		else if (isHarmony()) player.GiveInventory("mti_isharmony", 1);	
		else if (isFinalDoom()) player.GiveInventory("mti_isfinaldoom", 1);
		else if (isDoom2()) player.GiveInventory("mti_isdoom2", 1);
		
		if (isRevolutionMidiPack()) player.GiveInventory("mti_istvrmidipack", 1);
		
// 		if (player.CheckInventory("mti_istvr", 1))
// 		{
// 			console.printf("Revolution!!!");
// 		}
		
		if (level.Music.Left(7) == "D_NRFTL") 
		{
			player.GiveInventory("mti_isnrftlmidi", 1);
		}
		
// 		console.printf("mapname:%s, num:%d, levelname:%s, music:%s",
// 			level.MapName,
// 			level.levelnum,
// 			level.LevelName,
// 			level.Music);
			
	}
   
	bool isFinalDoom()
	{
		if (Wads.CheckNumForName("E1M1", 0) != -1)
		{
			return true;
		}
		return false;
	}
	
	bool isDoom2()
	{
		if (Wads.CheckNumForName("MAP01", 0) != -1)
		{
			return true;
		}
		return false;
	}
	
	bool isTnt()
	{
		if (Wads.CheckNumForName("MAP01", 0) != -1 && Wads.CheckNumForName("REDTNT2", 0) != -1)
		{
			return true;
		}
		return false;
	}
	
	bool isPlutonia()
	{
		if (Wads.CheckNumForName("MAP01", 0) != -1 && Wads.CheckNumForName("CAMO1", 0) != -1)
		{
			return true;
		}
		return false;
	}
	
	bool isHeretic()
	{
		//"E1M1", "E2M1", "TITLE", "MUS_E1M1"
		if ((Wads.CheckNumForName("E1M1", 0) != -1)
		&&  (Wads.CheckNumForName("TITLE", 0) != -1)
		&&  (Wads.CheckNumForName("MUS_E1M1", 0) != -1)
		){
			return true;
		}
		return false;
	}
	
	bool isHexen()
	{
		// "TITLE", "MAP01", "MAP40", "WINNOWR"
		if ((Wads.CheckNumForName("TITLE", 0) != -1)
		&&  (Wads.CheckNumForName("MAP01", 0) != -1)
		&&  (Wads.CheckNumForName("MAP40", 0) != -1)
		&&  (Wads.CheckNumForName("WINNOWR", 0) != -1)
		){
			return true;
		}
		return false;
	}
	
	bool isHexendd()
	{
		//"TITLE", "MAP60", "CLUS1MSG"
		if ((Wads.CheckNumForName("TITLE", 0) != -1)
		&&  (Wads.CheckNumForName("MAP60", 0) != -1)
		&&  (Wads.CheckNumForName("CLUS1MSG", 0) != -1)
		){
			return true;
		}
		return false;
	}
	
	bool isHarmony()
	{
		// "MAP01", "0HAWK01", "0CARA3", "0NOSE1"
		if ((Wads.CheckNumForName("MAP01", 0) != -1)
		&&  (Wads.CheckNumForName("0HAWK01", 0) != -1)
		&&  (Wads.CheckNumForName("0CARA3", 0) != -1)
		&&  (Wads.CheckNumForName("0NOSE1", 0) != -1)
		){
			return true;
		}
		return false;
	}
	
	bool isChex3()
	{
		// "E1M1", "CYCLA1", "FLMBA1", "MAPINFO"
		if ((Wads.CheckNumForName("E1M1", 0) != -1)
		&&  (Wads.CheckNumForName("CYCLA1", 1) != -1)
		&&  (Wads.CheckNumForName("FLMBA1", 1) != -1)
		&&  (Wads.CheckNumForName("MAPINFO", 0) != -1)
		){
			return true;
		}
		return false;
	}
	
	bool isStrife()
	{
		// "MAP01", "MAP33", "ENDSTRF"
		if ((Wads.CheckNumForName("MAP01", 0) != -1)
		&&  (Wads.CheckNumForName("MAP33", 0) != -1)
		&&  (Wads.CheckNumForName("ENDSTRF", 0) != -1)
		){
			return true;
		}
		return false;
	}
	
	bool isRevolution()
	{
		if ((Wads.CheckNumForName("MAP01", 0) != -1)
		&&  (Wads.CheckNumForName("MAP32", 0) != -1)
		&&  (Wads.CheckNumForName("_DEUTEX_", 0) != -1)
		){
			return true;
		}
		return false;
	}
	
	bool isRevolutionMidiPack()
	{
		if ((Wads.CheckNumForName("MAP33", 0) != -1)
		&&  (Wads.CheckNumForName("WADINFO", 0) != -1)
		&&  (Wads.CheckNumForName("MAPINFO", 0) != -1)
		&&  (Wads.CheckNumForName("EMAPINFO", 0) != -1)
		){
			return true;
		}
		return false;
	}
	
}
