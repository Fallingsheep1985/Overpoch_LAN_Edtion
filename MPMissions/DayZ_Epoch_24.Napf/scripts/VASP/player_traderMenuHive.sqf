/*------------------------------------*/
/* VASP v1.3                          */
/* Vehicle and Skin Preview           */
/* OtterNas3                          */
/* 06/17/2014                         */
/* Last update: 06/22/2014            */
/*------------------------------------*/

// trader menu gui by maca134
TraderDialogCatList = 12000;
TraderDialogItemList = 12001;
TraderDialogBuyPrice = 12002;
TraderDialogSellPrice = 12003;
TraderDialogBuyBtn = 12004;
TraderDialogSellBtn = 12005;
TraderDialogCurrency = 12006;

TraderCurrentCatIndex = -1;
TraderCatList = -1;
TraderItemList = -1;


TraderDialogLoadItemList = {
	private ["_index","_trader_id","_activatingPlayer","_distance","_objclass","_item_list"];
	
	//close debug
	if (debugMonitor) then {
		debugMonitor = false;
		hintSilent "";
	};
	
	TraderItemList = -1;
	_index = _this select 0;

	LastTraderSelectCategory = _index;

	if (_index < 0 or TraderCurrentCatIndex == _index) exitWith {};
	TraderCurrentCatIndex = _index;

	_trader_id = TraderCatList select _index;
	_activatingPlayer = player;

	lbClear TraderDialogItemList;
	ctrlSetText [TraderDialogBuyPrice, ""];
	ctrlSetText [TraderDialogSellPrice, ""];

	lbAdd [TraderDialogItemList, "Loading items..."];

	//PVDZE_plr_TradeMenuResult = call compile format["tcacheBuy_%1;",_trader_id];
	PVDZE_plr_TradeMenuResult = missionNamespace getVariable (format["tcacheBuy_%1;",_trader_id]);

	//[[5969,["Ikarus",2],10003,[5,"ItemGoldBar",1],[3,"ItemGoldBar",1],0,588,"trade_any_vehicle"],[5970,["Ikarus_TK_CIV_EP1",2],10006,[5,"ItemGoldBar",1],[3,"ItemGoldBar",1],0,588,"trade_any_vehicle"],[5971,["S1203_TK_CIV_EP1",2],10004,[4,"ItemGoldBar",1],[2,"ItemGoldBar",1],0,588,"trade_any_vehicle"],[5972,["S1203_ambulance_EP1",2],10002,[4,"ItemGoldBar",1],[2,"ItemGoldBar",1],0,588,"trade_any_vehicle"]]

	if(isNil "PVDZE_plr_TradeMenuResult") then {
		PVDZE_plr_TradeMenu = [_activatingPlayer,_trader_id];
		publicVariableServer  "PVDZE_plr_TradeMenu";
		waitUntil {!isNil "PVDZE_plr_TradeMenuResult"};
		if (count PVDZE_plr_TradeMenuResult > 0) then {
			missionNamespace setVariable [(format["tcacheBuy_%1;",_trader_id]),PVDZE_plr_TradeMenuResult];
		};
	};

	lbClear TraderDialogItemList;
	_item_list = [];
	{
		private ["_header", "_item", "_name", "_type", "_textPart", "_qty", "_buy", "_bqty", "_bname", "_btype", "_btextCurrency", "_sell", "_sqty", "_sname", "_stype", "_stextCurrency", "_order", "_order", "_afile", "_File", "_count", "_bag", "_bagclass", "_index", "_image"];
		_header = _x select 0; // "TRD"
		_item = _x select 1;
		_name = _item select 0;
		_type = _item select 1;
		switch (true) do {
			case (_type == 1): {
				_type = "CfgMagazines";
			}; 
			case (_type == 2): {
				_type = "CfgVehicles";
			}; 
			case (_type == 3): {
				_type = "CfgWeapons";
			};
		};
		// Display Name of item
		_textPart =	getText(configFile >> _type >> _name >> "displayName");

		// Total in stock
		_qty = _x select 2;

		// Buy Data from array
		_buy = _x select 3;
		_bqty = _buy select 0;
		_bname = _buy select 1;
		_btype = _buy select 2;
		switch(true)do{ 
			case (_btype == 1): {
				_btype = "CfgMagazines";
			}; 
			case (_btype == 2): {
				_btype = "CfgVehicles";
			}; 
			case (_btype == 3): {
				_btype = "CfgWeapons";
			}; 
		}; 

		// Display Name of buy item
		_btextCurrency = getText(configFile >> _btype >> _bname >> "displayName");

		_sell = _x select 4;
		_sqty = _sell select 0;
		_sname = _sell select 1;
		_stype = _sell select 2;
		switch(true)do{ 
			case (_stype == 1): { 
				_stype = "CfgMagazines";
			}; 
			case (_stype == 2): { 
				_stype = "CfgVehicles";
			}; 
			case (_stype == 3): { 
				_stype = "CfgWeapons";
			}; 
		}; 
		// Display Name of sell item
		_stextCurrency =	getText(configFile >> _stype >> _sname >> "displayName");

		// Menu sort order
		_order = _x select 5;

		// Action file to use for trade
		_afile = _x select 7;
		_File = "ZSC\actions\" + _afile + ".sqf";
			
		_count = 0;
		if(_type == "CfgVehicles") then {
			if (_afile == "trade_backpacks") then {
				_bag = unitBackpack player;
				_bagclass = typeOf _bag;
				if(_name == _bagclass) then {
					_count = 1;
				};
			} else {
				if (isClass(configFile >> "CfgVehicles" >> _name)) then {
					_distance = dayz_sellDistance_vehicle;
					if (_name isKindOf "Air") then {
						_distance = dayz_sellDistance_air;
					};
					if (_name isKindOf "Ship") then {
						_distance = dayz_sellDistance_boat;
					};
					_count = {(typeOf _x) == _name} count (nearestObjects [(getPosATL player), [_name], _distance]);
				};
			};
		};

		if(_type == "CfgMagazines") then {
			_count = {_x == _name} count magazines player;
		};

		if(_type == "CfgWeapons") then {
			_count = {_x == _name} count weapons player;
		};

		_index = lbAdd [TraderDialogItemList, format["%1 (%2)", _textPart, _name]];

		if (_count > 0) then {
			lbSetColor [TraderDialogItemList, _index, [0, 1, 0, 1]];
		};

		_image = getText(configFile >> _type >> _name >> "picture");
		lbSetPicture [TraderDialogItemList, _index, _image];

		_item_list set [count _item_list, [
			_name,
			_textPart,
			_bqty,
			_bname,
			_btextCurrency,
			_sqty,
			_sname,
			_stextCurrency,
			_header,
			_File
		]];
	} forEach PVDZE_plr_TradeMenuResult;
	TraderItemList = _item_list;
	TraderCategoryLoadFinished = true;
};

TraderDialogShowPrices = {
	private ["_index", "_item"];
	_index = _this select 0;
	LastTraderSelectItem = _index;
	if (_index < 0) exitWith {};
	while {count TraderItemList < 1} do { sleep 1; };
	_item = TraderItemList select _index;

	_qty = {_x == (_item select 3)} count magazines player;

	ctrlSetText [TraderDialogBuyPrice, format["%1 %2", _item select 2, _item select 4]];

	/*
	if(_qty == 0) then {
		ctrlEnable [TraderDialogBuyBtn, false];
	} else {
		ctrlEnable [TraderDialogBuyBtn, true];
	};
	*/

	ctrlSetText [TraderDialogSellPrice, format["%1 %2", _item select 5, _item select 7]];

	/* If Vehicle-Preview is enabled in the config */
	if (VASP_VehiclePreview) then {
	
		/* Fail-Safe check if Hotkey is set and if remove it */
		if (!isNil "VehiclePreviewHotkey") then {
			
			/* Reset the VehiclePreviewList variable */
			VehiclePreviewList = nil;
			
			/* Remove the Preview-Hotkey */
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", VehiclePreviewHotkey];
			
			/* Reset the VehiclePreviewHotkey variable */
			VehiclePreviewHotkey = nil;
		};
		
		/* If the Item that clicked on in the Traderdialog is a Vehicle */
		if (["trade_any_",_item select 9] call fnc_inString) then {
			
			/* Store the Traderdialog Item information in VehiclePreviewList */
			VehiclePreviewList = _item;
			
			/* Add the Preview-Hotkey */
			VehiclePreviewHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "
				_handled = false;
				if ((_this select 1) == VASP_HotKey) then {
					[VehiclePreviewList,LastTraderSelectCategory,LastTraderSelectItem] spawn ON_fnc_VehiclePreview;
					_handled = true;
				};
				_handled
			"];
			
			/* If Infistar is running we override his Debug-Monitor */
			if (debugMonitor) then {
				debugMonitor = false;
				hintSilent "";
			};
			
			/* Show the Preview-Hint to the Player */
			hint parseText format ["
				<t size='1.3'font='Bitstream'align='center'color='#00FF00'>! PREVIEW !</t><br/>
				<t></t><br/>
				<t size='1'font='Bitstream'align='center'color='#FFFFFF'>For preview of</t><br/>
				<t></t><br/>
				<t size='1.2'font='Bitstream'align='center'color='#0000FF'>%1</t><br/>
				<t></t><br/>
				<t size='1'font='Bitstream'align='center'color='#FFFFFF'>Press F5 now</t><br/>",
				(_item select 1)
			];

			/* Spawn check for Dialog close */
			[] spawn {
				
				/* Wait until the Tradermenu is closes either by Preview-Hotkey or by closing the Traderdialog normal */
				waitUntil {sleep 0.1;!dialog};
				
					if (debugMonitor) then {
						debugMonitor = false;
						hintSilent "";
					};
				
				/* Remove the Preview-Hotkey */
				(findDisplay 46) displayRemoveEventHandler ["KeyDown", VehiclePreviewHotkey];
				
				/* Reset the VehiclePreviewHotkey variable */
				VehiclePreviewHotkey = nil;
				
				//show debug again
				debugMonitor = true;
				[] spawn fnc_debug;
			};
		};
	};
	
	/* If Skin-Preview is enabled in the config */
	if (VASP_SkinPreview) then {
	//close debug
		if (debugMonitor) then {
			debugMonitor = false;
			hintSilent "";
		};
	
		
		/* Fail-Safe check if Hotkey is set and if remove it */
		if (!isNil "SkinPreviewHotkey") then {

			/* Reset the SkinPreviewList variable */
			SkinPreviewList = nil;

			/* Remove the Preview-Hotkey */
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", SkinPreviewHotkey];

			/* Reset the SkinPreviewHotkey variable */
			SkinPreviewHotkey = nil;
		};

		/* If the Item that clicked on in the Traderdialog is a Skin */
		if ((_item select 9) == "\z\addons\dayz_code\actions\trade_items.sqf" && (_item select 0) in AllAllowedSkins) then {
			
			/* Store the Traderdialog Item information in VehiclePreviewList */
			SkinPreviewList = _item;
			
			/* Add the Preview-Hotkey */
			SkinPreviewHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "
				_handled = false;
				if ((_this select 1) == VASP_HotKey) then {
					[SkinPreviewList,LastTraderSelectCategory,LastTraderSelectItem] spawn ON_fnc_SkinPreview;
					_handled = true;
				};
				_handled
			"];

			/* If Infistar is running we override his Debug-Monitor */
				if (debugMonitor) then {
					debugMonitor = false;
					hintSilent "";
				};
			/* Show the Preview-Hint to the Player */
			hint parseText format ["
				<t size='1.3'font='Bitstream'align='center'color='#00FF00'>! PREVIEW !</t><br/>
				<t></t><br/>
				<t size='1'font='Bitstream'align='center'color='#FFFFFF'>For preview of</t><br/>
				<t></t><br/>
				<t size='1.2'font='Bitstream'align='center'color='#0000FF'>%1</t><br/>
				<t></t><br/>
				<t size='1'font='Bitstream'align='center'color='#FFFFFF'>Press F5 now</t><br/>",
				(_item select 1)
			];

			/* Spawn check for Dialog close */
			[] spawn {

				/* Wait until the Tradermenu is closes either by Preview-Hotkey or by closing the Traderdialog normal */
				waitUntil {sleep 0.1;!dialog};
				
				/* If Infistar is running we remove the override of his Debug-Monitor */
					if (debugMonitor) then {
						debugMonitor = false;
						hintSilent "";
					};
				
				/* Remove the Preview-Hotkey */
				(findDisplay 46) displayRemoveEventHandler ["KeyDown", SkinPreviewHotkey];

				/* Reset the VehiclePreviewHotkey variable */
				SkinPreviewHotkey = nil;
			};
		};
	};
};

TraderDialogBuy = {
	private ["_index", "_item", "_data"];
	_index = _this select 0;
	if (_index < 0) exitWith {
		cutText [(localize "str_epoch_player_6"), "PLAIN DOWN"];
	};
	_item = TraderItemList select _index;
	_data = [_item select 0, _item select 3, 1, _item select 2, "buy", _item select 4, _item select 1, _item select 8];
	[0, player, '', _data] execVM (_item select 9);
	TraderItemList = -1;
};

TraderDialogSell = {
	private ["_index", "_item", "_data"];
	_index = _this select 0;
	if (_index < 0) exitWith {
		cutText [(localize "str_epoch_player_6"), "PLAIN DOWN"];
	};
	_item = TraderItemList select _index;
	_data = [_item select 6, _item select 0, _item select 5, 1, "sell", _item select 1, _item select 7, _item select 8];
	[0, player, '', _data] execVM (_item select 9);
	TraderItemList = -1;
};
