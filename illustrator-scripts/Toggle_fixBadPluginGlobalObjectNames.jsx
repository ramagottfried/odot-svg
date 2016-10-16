/**********************************************************

ADOBE SYSTEMS INCORPORATED 
Copyright 2012 Adobe Systems Incorporated 
All Rights Reserved 

NOTICE:  Adobe permits you to use, modify, and 
distribute this file in accordance with the terms
of the Adobe license agreement accompanying it.  
If you have received this file from a source 
other than Adobe, then your use, modification,
or distribution of it requires the prior 
written permission of Adobe. 

*********************************************************/

/**********************************************************
 
Toggle_fixBadPluginGlobalObjectNames.jsx

DESCRIPTION

Toggles the value of fixBadPluginGlobalObjectNames preference.
Refer: http://helpx.adobe.com/illustrator/kb/copy-paste-artwork-slow-or.html

**********************************************************/

var prefKey = 'aiFileFormat/fixBadPluginGlobalObjectNames';

// Retrieve the current value of the preference
var prefVal = app.preferences.getBooleanPreference(prefKey);

// Toggle and set the new value
prefVal = !prefVal;
app.preferences.setBooleanPreference(prefKey, prefVal);

// Display the changed value
var message = "fixBadPluginGlobalObjectNames preference has been turned " + (prefVal ? "ON" : "OFF") + ".";
alert(message, "Adobe Illustrator");
