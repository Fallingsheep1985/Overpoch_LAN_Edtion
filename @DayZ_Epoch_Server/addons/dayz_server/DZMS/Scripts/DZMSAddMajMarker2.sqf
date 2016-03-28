/*
	Adds a marker for Major Missions. Only runs once.
	DZMSMarkerLoop.sqf keeps this marker updated.
	Usage: [coordinates,missionname]
*/
private["_nul","_nil"];
DZMSMajCoords2 = _this select 0;
DZMSMajName2 = _this select 1;

_nul = createMarker ["DZMSMajMarker2", DZMSMajCoords2];
"DZMSMajMarker2" setMarkerColor "ColorRed";
"DZMSMajMarker2" setMarkerShape "ELLIPSE";
"DZMSMajMarker2" setMarkerBrush "Grid";
"DZMSMajMarker2" setMarkerSize [175,175];
_nil = createMarker ["DZMSMajDot2", DZMSMajCoords2];
"DZMSMajDot2" setMarkerColor "ColorBlack";
"DZMSMajDot2" setMarkerType "Vehicle";
"DZMSMajDot2" setMarkerText DZMSMajName2;