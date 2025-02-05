//made by steamer10 and nikoheart
state("Greylock-Win64-Shipping") {}

startup
{
	Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Basic");
	vars.Helper.GameName = "Echo Point Nova";
	vars.Helper.AlertLoadless();
	
	//add all zones for later use and what type they are
	
	//zone name as key, tuple ,<display name, zone type> 
	//zone types: 0 regular zone, 1 scan zone, 2 boss zone
	vars.zoneDictionary = new Dictionary<string,Tuple<string,int>>();
	vars.zoneDictionary.Add("deserthelper", new Tuple<string,int>("???",0 ));
	vars.zoneDictionary.Add("findboard", new Tuple<string,int>("ARCHES",0 ));
	vars.zoneDictionary.Add("dahq", new Tuple<string,int>("ARTIC HQ",1 ));
	vars.zoneDictionary.Add("Zone_44", new Tuple<string,int>("ARCTIC PASS",0 ));
	vars.zoneDictionary.Add("NewPath1", new Tuple<string,int>("ARENA",1 ));
	vars.zoneDictionary.Add("ocity2", new Tuple<string,int>("OUT OF BOUNDS",0 ));
	vars.zoneDictionary.Add("Zone_46", new Tuple<string,int>("ARRAY",1 ));
	vars.zoneDictionary.Add("sURFER ENEMY 2", new Tuple<string,int>("ASCENSION",1 ));
	vars.zoneDictionary.Add("bigtree", new Tuple<string,int>("BANGALORE LABS",0 ));
	vars.zoneDictionary.Add("betweenlab", new Tuple<string,int>("betweenlab",0 ));
	vars.zoneDictionary.Add("ourolavaquest", new Tuple<string,int>("BLACK FORGE",0 ));
	vars.zoneDictionary.Add("LAVACONNECT9", new Tuple<string,int>("BLACK TOWER",0 ));
	vars.zoneDictionary.Add("blastsite", new Tuple<string,int>("BLAST SITE",0 ));
	vars.zoneDictionary.Add("lavapath3", new Tuple<string,int>("BOILING RUINS",0 ));
	vars.zoneDictionary.Add("Big Island Extension", new Tuple<string,int>("BRIDGE",1 ));
	vars.zoneDictionary.Add("Desert 2", new Tuple<string,int>("BRIDGEHEAD",1 ));
	vars.zoneDictionary.Add("Grasslands 1", new Tuple<string,int>("BUNKER",1 ));
	vars.zoneDictionary.Add("lavaconnect17", new Tuple<string,int>("BURNING BASIN",0 ));
	vars.zoneDictionary.Add("IceZone01", new Tuple<string,int>("CATACOMBS",1 ));
	vars.zoneDictionary.Add("charredo", new Tuple<string,int>("CHARRED OLYMPUS",1 ));
	vars.zoneDictionary.Add("lavazone15", new Tuple<string,int>("CINDER PASS",0 ));
	vars.zoneDictionary.Add("very big surf", new Tuple<string,int>("CLEARING",0 ));
	vars.zoneDictionary.Add("CANYON", new Tuple<string,int>("CLIFFSIDE",0 ));
	vars.zoneDictionary.Add("lavaconnect99", new Tuple<string,int>("CLIMB",0 ));
	vars.zoneDictionary.Add("LAVACONNECT8", new Tuple<string,int>("CONDUCTION",0 ));
	vars.zoneDictionary.Add("crashsite", new Tuple<string,int>("CRASH SITE",0 ));
	vars.zoneDictionary.Add("lava13", new Tuple<string,int>("CURSED DIVET",0 ));
	vars.zoneDictionary.Add("Grasslands 4", new Tuple<string,int>("CURVES",0 ));
	vars.zoneDictionary.Add("assault", new Tuple<string,int>("DEPOT",0 ));
	vars.zoneDictionary.Add("desert", new Tuple<string,int>("DESERT RUINS",1 ));
	vars.zoneDictionary.Add("Farmslands 2", new Tuple<string,int>("DESPERADO",1 ));
	vars.zoneDictionary.Add("lava15", new Tuple<string,int>("DOOM TOWER",0 ));
	vars.zoneDictionary.Add("ColossusDemo", new Tuple<string,int>("DRAGONFLY",2 ));
	vars.zoneDictionary.Add("Drift", new Tuple<string,int>("DRIFT",0 ));
	vars.zoneDictionary.Add("elevator", new Tuple<string,int>("ELEVATOR",0 ));
	vars.zoneDictionary.Add("lavaconnect10", new Tuple<string,int>("ERUPTIONS",0 ));
	vars.zoneDictionary.Add("Zone_20", new Tuple<string,int>("FALL CAVES",0 ));
	vars.zoneDictionary.Add("lavaconnect1", new Tuple<string,int>("FALLEN TREE",0 ));
	vars.zoneDictionary.Add("bhead2", new Tuple<string,int>("FAUST",0 ));
	vars.zoneDictionary.Add("finalclimb", new Tuple<string,int>("FINAL CLIMB",0 ));
	vars.zoneDictionary.Add("finalzone2", new Tuple<string,int>("finalzone2",0 ));
	vars.zoneDictionary.Add("finalzone3", new Tuple<string,int>("finalzone3",0 ));
	vars.zoneDictionary.Add("Lava1", new Tuple<string,int>("FIRE GYM",0 ));
	vars.zoneDictionary.Add("lava5", new Tuple<string,int>("FIREBALLS",0 ));
	vars.zoneDictionary.Add("fARMLANDS 1", new Tuple<string,int>("FOUNDATION",0 ));
	vars.zoneDictionary.Add("RAMP", new Tuple<string,int>("FREEZEPOINT",0 ));
	vars.zoneDictionary.Add("New Vertical Island", new Tuple<string,int>("FUEL DEPOT",1 ));
	vars.zoneDictionary.Add("Forest2", new Tuple<string,int>("GREEN FORREST",1 ));
	vars.zoneDictionary.Add("lava14", new Tuple<string,int>("HALLOWED SANCTUM",0 ));
	vars.zoneDictionary.Add("lava12", new Tuple<string,int>("HEADFIRE",0 ));
	vars.zoneDictionary.Add("Zone_10", new Tuple<string,int>("HIGHWAY",0 ));
	vars.zoneDictionary.Add("New Ramp Area", new Tuple<string,int>("HIGHWAY ONE",0 ));
	vars.zoneDictionary.Add("Zone_19", new Tuple<string,int>("HIGHWAY TWO",0 ));
	vars.zoneDictionary.Add("HUGEHUGEDESERT", new Tuple<string,int>("HUGE HUGE DESERT",0 ));
	vars.zoneDictionary.Add("hugeevolcano", new Tuple<string,int>("HUGE VOLCANO",2 ));
	vars.zoneDictionary.Add("ICICLES", new Tuple<string,int>("ICE CASTLE",1 ));
	vars.zoneDictionary.Add("Ice 1", new Tuple<string,int>("ICE TOWER",1 ));
	vars.zoneDictionary.Add("Zone_42", new Tuple<string,int>("ICE TRAY",0 ));
	vars.zoneDictionary.Add("lavapath5", new Tuple<string,int>("iceramp1",0 ));
	vars.zoneDictionary.Add("Big Island Test", new Tuple<string,int>("INCOMING",1 ));
	vars.zoneDictionary.Add("NewPath2", new Tuple<string,int>("INCREMENTAL",0 ));
	vars.zoneDictionary.Add("Zone_48", new Tuple<string,int>("INFERNAL ROUNDS",0 ));
	vars.zoneDictionary.Add("lava8", new Tuple<string,int>("INFERNAL VORTEX",1 ));
	vars.zoneDictionary.Add("lava10", new Tuple<string,int>("JILTED HIGHWAY",0 ));
	vars.zoneDictionary.Add("massiveicicle", new Tuple<string,int>("KING ICICLE",0 ));
	vars.zoneDictionary.Add("Zone_55", new Tuple<string,int>("KING'S BANKS",0 ));
	vars.zoneDictionary.Add("Zone_56", new Tuple<string,int>("KING'S LEAPS",0 ));
	vars.zoneDictionary.Add("Zone_43", new Tuple<string,int>("KING'S PATH",0 ));
	vars.zoneDictionary.Add("labconnect", new Tuple<string,int>("PARTICLE ACCELERATOR",0 ));
	vars.zoneDictionary.Add("Ice 3", new Tuple<string,int>("LIGHTHOUSE",1 ));
	vars.zoneDictionary.Add("lava3", new Tuple<string,int>("MAGMA BALL",0 ));
	vars.zoneDictionary.Add("SurfZoneTop", new Tuple<string,int>("MARKET",1 ));
	vars.zoneDictionary.Add("VolcanoTestQUEST", new Tuple<string,int>("MENACED CALDERA",0 ));
	vars.zoneDictionary.Add("lavaconnect2", new Tuple<string,int>("MOLTEN CHAINS",0 ));
	vars.zoneDictionary.Add("lava4", new Tuple<string,int>("MOLTEN FOREST",1 ));
	vars.zoneDictionary.Add("LAVACONNECT29", new Tuple<string,int>("MOLTEN HIGHWAY",0 ));
	vars.zoneDictionary.Add("lava2", new Tuple<string,int>("MOLTEN TOWER",0 ));
	vars.zoneDictionary.Add("icemtn", new Tuple<string,int>("MOUNTAIN LAB",0 ));
	vars.zoneDictionary.Add("MOUNTAINRANGE", new Tuple<string,int>("MOUNTAIN RANGE",0 ));
	vars.zoneDictionary.Add("TonyGlock", new Tuple<string,int>("MOUNTAINTOP",0 ));
	vars.zoneDictionary.Add("lab", new Tuple<string,int>("MUSHROOM GARDEN",1 ));
	vars.zoneDictionary.Add("lava7", new Tuple<string,int>("OBSERVATORY",1 ));
	vars.zoneDictionary.Add("Last Ice Zone", new Tuple<string,int>("OFFSHOOT",0 ));
	vars.zoneDictionary.Add("Desert 1", new Tuple<string,int>("OLD CITY",1 ));
	vars.zoneDictionary.Add("Surfer enemy", new Tuple<string,int>("OUTPOST",1 ));
	vars.zoneDictionary.Add("Zone_7", new Tuple<string,int>("PILLARS",0 ));
	vars.zoneDictionary.Add("lava6", new Tuple<string,int>("PLATFORMS",1 ));
	vars.zoneDictionary.Add("lavaconnect14", new Tuple<string,int>("PRECISION",0 ));
	vars.zoneDictionary.Add("PYRAMIDDUNGEON", new Tuple<string,int>("PYRAMID DUNGEON",0 ));
	vars.zoneDictionary.Add("Zone_21", new Tuple<string,int>("PYRAMIDS",0 ));
	vars.zoneDictionary.Add("Zone_6", new Tuple<string,int>("RAISED CHAINS",0 ));
	vars.zoneDictionary.Add("uppert", new Tuple<string,int>("RECKONER",0 ));
	vars.zoneDictionary.Add("Grasslands 3", new Tuple<string,int>("REST STOP",0 ));
	vars.zoneDictionary.Add("split2", new Tuple<string,int>("RIBCAGE",1 ));
	vars.zoneDictionary.Add("PYRAMIDS", new Tuple<string,int>("RIFLE RANGE",0 ));
	vars.zoneDictionary.Add("asctravel", new Tuple<string,int>("ROOK",0 ));
	vars.zoneDictionary.Add("Sandworm", new Tuple<string,int>("SANDWORM",2 ));
	vars.zoneDictionary.Add("Desert 3", new Tuple<string,int>("SCAFFOLDS",1 ));
	vars.zoneDictionary.Add("SENTRY", new Tuple<string,int>("SENTRY",1 ));
	vars.zoneDictionary.Add("DESPO2", new Tuple<string,int>("SEVERED",0 ));
	vars.zoneDictionary.Add("nadezone", new Tuple<string,int>("SHACK",0 ));
	vars.zoneDictionary.Add("Zone_34", new Tuple<string,int>("SHADED FORK",0 ));
	vars.zoneDictionary.Add("Zone_36", new Tuple<string,int>("SHATTERED WASTES",0 ));
	vars.zoneDictionary.Add("space", new Tuple<string,int>("SPACE",2 ));
	vars.zoneDictionary.Add("fallzone", new Tuple<string,int>("SPARSE",1 ));
	vars.zoneDictionary.Add("lavazoneidfk", new Tuple<string,int>("SPIRAL",0 ));
	vars.zoneDictionary.Add("bunderground", new Tuple<string,int>("STEP",0 ));
	vars.zoneDictionary.Add("LAVACONNECT7", new Tuple<string,int>("STEPLADDER",0 ));
	vars.zoneDictionary.Add("lavaconnect15", new Tuple<string,int>("STEPPING STONES",0 ));
	vars.zoneDictionary.Add("Summon", new Tuple<string,int>("SUMMON",0 ));
	vars.zoneDictionary.Add("mountaintest", new Tuple<string,int>("SURFS UP",1 ));
	vars.zoneDictionary.Add("scaffconnect", new Tuple<string,int>("SUSPENSION",0 ));
	vars.zoneDictionary.Add("tutorial", new Tuple<string,int>("THE WALL",0 ));
	vars.zoneDictionary.Add("mtntolava", new Tuple<string,int>("THERMAL SHOCK",0 ));
	vars.zoneDictionary.Add("desertsecret", new Tuple<string,int>("TOMB",0 ));
	vars.zoneDictionary.Add("Grasslands 2", new Tuple<string,int>("TRAINSTATION",0 ));
	vars.zoneDictionary.Add("treebridge", new Tuple<string,int>("TREEBRIDGE",0 ));
	vars.zoneDictionary.Add("Ice 2", new Tuple<string,int>("TWIN ICE",0 ));
	vars.zoneDictionary.Add("surfzone1", new Tuple<string,int>("UNDERPASS",0 ));
	vars.zoneDictionary.Add("village3", new Tuple<string,int>("VILLAGE",0 ));
	vars.zoneDictionary.Add("volcanotest", new Tuple<string,int>("VOLCANIC LAIR",0 ));
	vars.zoneDictionary.Add("SurfTestArea", new Tuple<string,int>("WAR CANNONS",0 ));
	vars.zoneDictionary.Add("OUTPOST", new Tuple<string,int>("WATCHTOWER",0 ));
	vars.zoneDictionary.Add("Zone_47", new Tuple<string,int>("WIND CHIMES",0 ));
	vars.zoneDictionary.Add("WindTemple", new Tuple<string,int>("WIND TEMPLE",1 ));
	vars.zoneDictionary.Add("fOREST1", new Tuple<string,int>("YELLOW FOREST",0 ));
	vars.zoneDictionary.Add("Zone_18", new Tuple<string,int>("Zone_18",0 ));
	vars.zoneDictionary.Add("Zone_35", new Tuple<string,int>("Zone_35",0 ));
	vars.zoneDictionary.Add("Zone_5", new Tuple<string,int>("Zone_5",0 ));
	vars.zoneDictionary.Add("Zone_58", new Tuple<string,int>("Zone_58",0 ));
	vars.zoneDictionary.Add("Zone_61", new Tuple<string,int>("Zone_61",0 ));

	vars.settingCount = 0;
	//add setting catagories
	settings.Add( "ZoneSplits", false, "Zone Splits", null);
	settings.Add( "ScanSplits", false, " Scan Endings", null);
	settings.Add( "BossSplits", true, " Boss Endings", null);
	settings.Add( "MiscSplits", true, " various bits (1.1.12 and below only)", null);
	//add custom settings
	settings.Add( "final area", true, "final area rising", "MiscSplits");
	settings.Add( "credits_start", true, "credits start", "MiscSplits");
	settings.Add( "credits_end", true, "credits end", "MiscSplits");

	//add settings based on zone database
	foreach (KeyValuePair<string, Tuple<string,int>> item in vars.zoneDictionary)
	{
		//add all zones as zone options
		settings.Add(item.Key, false, item.Value.Item1, "ZoneSplits");
		vars.settingCount+=1;
		//check if the area contains a scan and add settings for them
		if(item.Value.Item2 == 1){
			settings.Add(item.Key+"_scan_1", false, item.Value.Item1+" scan 1", "ScanSplits");
			settings.Add(item.Key+"_scan_2", false, item.Value.Item1+" scan 2", "ScanSplits");
			vars.settingCount+=2;
		}
		else if(item.Value.Item2 == 2){
			settings.Add(item.Key+"_Boss", true, item.Value.Item1+" Boss", "BossSplits");
			vars.settingCount+=1;
		}
	}
	//hash set for objective completions
	vars.ReachedZones = new HashSet<string>();
	vars.FightSplitList = new HashSet<string>();
	//vars.Log("settings loaded: "+vars.settingCount);
	
}

init
{
	IntPtr gWorld = vars.Helper.ScanRel(3, "48 8B 05 ?? ?? ?? ?? 48 3B C? 48 0F 44 C? 48 89 05 ?? ?? ?? ?? E8");
	IntPtr gEngine = vars.Helper.ScanRel(3, "48 8B 0D ???????? 66 0F 5A C9 E8");
	IntPtr fNames = vars.Helper.ScanRel(0xD, "89 5C 24 ?? 89 44 24 ?? 74 ?? 48 8D 15");

	if (gWorld == IntPtr.Zero || gEngine == IntPtr.Zero || fNames == IntPtr.Zero)
	{
		const string Msg = "Not all required addresses could be found by scanning.";
		throw new Exception(Msg);
	}
	vars.Log("Found GWorld: 0x" + gWorld.ToString("X"));
	vars.Log("Found GEngine: 0x" + gEngine.ToString("X"));
	vars.Log("Found fNames: 0x" + fNames.ToString("X"));

	vars.FNameToString = (Func<ulong, string>)(fName =>
	{
		var nameIdx = (fName & 0x000000000000FFFF) >> 0x00;
		var chunkIdx = (fName & 0x00000000FFFF0000) >> 0x10;
		var number = (fName & 0xFFFFFFFF00000000) >> 0x20;

		// IntPtr chunk = vars.Helper.Read<IntPtr>(fNames + 0x10 + (int)chunkIdx * 0x8);
		IntPtr chunk = vars.Helper.Read<IntPtr>(fNames + 0x10 + (int)chunkIdx * 0x8);
		IntPtr entry = chunk + (int)nameIdx * sizeof(short);

		int length = vars.Helper.Read<short>(entry) >> 6;
		string name = vars.Helper.ReadString(length, ReadStringType.UTF8, entry + sizeof(short));

		return number == 0 ? name : name + "_" + number;
	});

	vars.Helper["GWorldName"] = vars.Helper.Make<ulong>(gWorld, 0x18);
	vars.Helper["ZoneFName"] = vars.Helper.Make<ulong>(gWorld, 0x120, 0x420, 0x18);
	vars.Helper["SpawnCount"] = vars.Helper.Make<int>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x664);
	vars.Helper["BattleCountForUI"] = vars.Helper.Make<int>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x66C);
	vars.Helper["HideLoadingScreen"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0xB10);
	vars.Helper["bForceShowFinalArea"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x1971);
	
	vars.Helper["bIsFinalZone"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0xA12);
	vars.Helper["AgilityOrbCount"] = vars.Helper.Make<int>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x9D0);
	vars.Helper["GunCount"] = vars.Helper.Make<int>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x9D4);
	vars.Helper["ModuleCount"] = vars.Helper.Make<int>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x9D8);
	vars.Helper["HatCount"] = vars.Helper.Make<int>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x9DC);


	//bRunningFinalAnim is set at the start of the final climb rising
	vars.Helper["bRunningFinalAnim"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x1972);
	//bIsRunningCredits while the credits run = true
	vars.Helper["bIsRunningCredits"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x1970);

	//starting and loading stuff
	vars.Helper["bIsMoving"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x2A0, 0x564);
	vars.Helper["MyLastZone"] = vars.Helper.Make<ulong>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x18);
	vars.Helper["bGameplayStarted"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x2A0, 0x1968);
	vars.Helper["ServerState"] = vars.Helper.Make<byte>(gWorld, 0x120, 0x270);

	//bHasBeenCleared triggers on scan 1 end and boss defeat
    vars.Helper["bHasBeenCleared"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x380);
    //second scan completion
	vars.Helper["bChallenge1Cleared"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x381);
	//potential third scan expansion?
    vars.Helper["bChallenge2Cleared"] = vars.Helper.Make<bool>(gEngine, 0xD28, 0x38, 0x0, 0x30, 0x570, 0x382);
	
	current.World = "";
	current.Zone = "";
	current.LastZone = "";
	vars.startFight = false;
	vars.Loading = false;
}

onStart
{
	//clear all variables
    vars.ReachedZones.Clear();
    vars.FightSplitList.Clear();
    vars.startFight = false;
	vars.Loading = false;
}

start
{
	//start livesplit on move
	return current.World == "Universe" && old.bIsMoving == false && current.bIsMoving == true;
}

update
{
	vars.Helper.Update();
	vars.Helper.MapPointers();

	var world = vars.FNameToString(current.GWorldName);
	if (!string.IsNullOrEmpty(world) && world != "None") current.World = world;
	if (old.World != current.World) vars.Log("World: " + current.World);

	var mlz = vars.FNameToString(current.MyLastZone);
	if (!string.IsNullOrEmpty(mlz) && mlz != "None") current.LastZone = mlz;
	if (old.LastZone != current.LastZone) vars.Log("LastZone: " + current.LastZone);

	var zone = vars.FNameToString(current.ZoneFName);
	if (!string.IsNullOrEmpty(zone) && zone != "None") current.Zone = zone;
	if (old.Zone != current.Zone) vars.Log("Zone: " + current.Zone);

	//if (old.SpawnCount != current.SpawnCount) vars.Log("Spawn Count: " + current.SpawnCount);
	//if (old.BattleCountForUI != current.BattleCountForUI) vars.Log("BattleCountForUI: " + current.BattleCountForUI);
	//if (old.onRunCredits != current.onRunCredits) vars.Log("onRunCredits: " + current.onRunCredits);
	//if (old.HideLoadingScreen != current.HideLoadingScreen) vars.Log("HideLoadingScreen: " + current.HideLoadingScreen);
	//if (old.bIsRunningCredits != current.bIsRunningCredits) vars.Log("bIsRunningCredits: " + current.bIsRunningCredits);
	//if (old.bForceShowFinalArea != current.bForceShowFinalArea) vars.Log("bForceShowFinalArea: " + current.bForceShowFinalArea);
	//if (old.bGameplayStarted != current.bGameplayStarted) vars.Log("bGameplayStarted: " + current.bGameplayStarted);
	//if (old.BattleCountForUI != current.BattleCountForUI) vars.Log("Current Battle Count: " + current.BattleCountForUI);


	//if (old.bIsFinalZone != current.bIsFinalZone) vars.Log("bIsFinalZone: " + current.bIsFinalZone);
	//if (old.AgilityOrbCount != current.AgilityOrbCount) vars.Log("AgilityOrbCount: " + current.AgilityOrbCount);
	//if (old.GunCount != current.GunCount) vars.Log("GunCount: " + current.GunCount);
	//if (old.ModuleCount != current.ModuleCount) vars.Log("ModuleCount: " + current.ModuleCount);
	//if (old.HatCount != current.HatCount) vars.Log("HatCount: " + current.HatCount);

	// hasbeencleared is primary scan cleared
	//if (old.bHasBeenCleared != current.bHasBeenCleared) vars.Log("bHasBeenCleared: " + current.bHasBeenCleared);
	//if (old.bChallenge1Cleared != current.bChallenge1Cleared) vars.Log("bChallenge1Cleared: " + current.bChallenge1Cleared);
	//if (old.bChallenge2Cleared != current.bChallenge2Cleared) vars.Log("bChallenge2Cleared: " + current.bChallenge2Cleared);

}

split
{
	//if the zone is known there will be a dictionary entry and we can check the settings if we need to split on it
	if(vars.zoneDictionary.ContainsKey(current.LastZone))
	{
		//check if we need to split on reaching the zone
		if (settings[current.LastZone] && !vars.ReachedZones.Contains(current.LastZone))
		{
			vars.ReachedZones.Add(current.LastZone);
			//vars.Log("area reached for the first time:"+current.LastZone);
			return true;
		}
		//check if it's a scan zone
		else if(vars.zoneDictionary[current.LastZone].Item2 == 1)
		{
			//check settings if we need to split on the first scan
			if(settings[current.LastZone+"_scan_1"])
			{
				//read memory and check if we've already split on it
				if (old.bHasBeenCleared != current.bHasBeenCleared && !vars.FightSplitList.Contains(current.LastZone + "_scan_1"))
				{
					//add split to list of splits we already did
					vars.FightSplitList.Add(current.LastZone + "_scan_1");
					//vars.Log("scan 1 done in:"+current.LastZone);
					return true;
				}
			}
			if(settings[current.LastZone+"_scan_2"]){
				if (old.bChallenge1Cleared != current.bChallenge1Cleared && !vars.FightSplitList.Contains(current.LastZone + "_scan_2"))
				{
					vars.FightSplitList.Add(current.LastZone + "_scan_2");
					//vars.Log("scan 2 done in:"+current.LastZone);
					return true;
				}
			}
		}
		else if(vars.zoneDictionary[current.LastZone].Item2 == 2)
		{
			//check settings if we need to split on the first scan
			if(settings[current.LastZone+"_Boss"])
			{
				//read memory and check if we've already split on it
				if (old.bHasBeenCleared != current.bHasBeenCleared && !vars.FightSplitList.Contains(current.LastZone + "_Boss"))
				{
					//add split to list of splits we already did
					vars.FightSplitList.Add(current.LastZone + "_Boss");
					//vars.Log("boss done in:"+current.LastZone);
					return true;
				}
			}
		}
	}
	//split on credits start
	if (settings["credits_start"])
	{	

		if(old.bIsRunningCredits == false && current.bIsRunningCredits == true) return true;
	}		
	//split on credits end
	if (settings["credits_end"])
	{	
		if(old.bIsRunningCredits == true && current.bIsRunningCredits == false) return true;
	}
	//split on final climb animation start
	if (settings["final area"])
	{	
		if(old.bRunningFinalAnim == false && current.bRunningFinalAnim == true) return true;
	}
	
	
	
	//old code that splits on the actual remaining enemies during a scan
    //if (vars.startFight == false)
    //{
    //  if (settings[current.LastZone + "_start"])
	//	{
	//		if (old.BattleCountForUI < current.BattleCountForUI && !vars.FightSplitList.Contains(current.LastZone + "_start"))
	//		{
	//			vars.FightSplitList.Add(current.LastZone + "_start");
	//			vars.startFight = true;
	//			return true;
	//		}
	//	}
    //}
    //if (vars.startFight == true)
    //{
	//	if (settings[current.LastZone + "_end"])
	//	{
	//		if (old.BattleCountForUI != current.BattleCountForUI && current.BattleCountForUI == 0 && !vars.FightSplitList.Contains(current.LastZone + "_end"))
	//		{
	//			vars.FightSplitList.Add(current.LastZone + "_end");
	//			vars.startFight = false;
	//			return true;
	//		}
	//	}
    //}

	
}

isLoading
{
	if (current.ServerState == 4)
	{
		vars.Loading = true;
	}
	if (current.ServerState == 4 && current.bGameplayStarted == false && vars.Loading == true)
	{
		return true;
	}
	if (current.ServerState == 3 && current.bGameplayStarted == false && vars.Loading == true)
	{
		return true;
	}
	if (current.ServerState == 3 && current.bGameplayStarted == true && vars.Loading == true)
	{
		vars.Loading = false;
		return false;
	}
}
