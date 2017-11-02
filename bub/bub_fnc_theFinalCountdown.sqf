
// Maintain 4 vehicles at all times.
[] spawn 
{
	_vehicleDefs = 
	[
		[["crew","crew","crew"],"taki_veh_1","feruz_area","LOP_IA_BMP2","ind_f",independent],
		[["crew","crew","crew"],"taki_veh_2","feruz_area","LOP_IA_BMP1","ind_f",independent],
		[["crew","crew","crew","crew"],"taki_veh_3","feruz_area","LOP_IA_M1A1_AIM_D","ind_f",independent]
	];
	
	_groupsActive = [];	
	
	while {true} do 
	{
		{
			_vehDef = _x;
			_group = _vehDef call ca_fnc_spawnvehicleattack;
			_groupsActive pushBack (_group select 0);
			hint format ["powwww %1", count _groupsActive];
			
			_wasd = 0;
			waitUntil 
			{
				sleep 1;
			
				_newActive = [];
				
				{
					_curGroup = _x;
					diag_log format ["curgroup is %1, %2", typeName _curGroup, _curGroup];
					if ({alive _x} count (units _curGroup) > 0) then
					{
						_newActive pushBack _x;
					}
					
				} forEach _groupsActive;
				
				_groupsActive = _newActive;
				
				_wasd = _wasd + 1;
				hint format ["boop %1, %2", _wasd, _groupsActive];
				
				count _groupsActive < 4;
			};
			
		} forEach _vehicleDefs;
		
	}
	
}
