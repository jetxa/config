# Use apple script to change the skim highlight color quickly. 

Move the below script to `~/Library/Application Support/Skim/Scripts/` or use *Automator* to create a workflow.

```applescript
property theRedColor : {65535, 38144, 37376, 65535}
property theBlueColor : {49920, 44288, 65535, 65535}
property theCyanColor : {49408, 60416, 65535, 65535}
property theGreenColor : {49664, 64256, 22784, 65535}
property theYellowColor : {65535, 59904, 47616, 65535}

property theColorList : {"Cyan", "Red", "Blue", "Yellow", "Green"}

tell application "Skim"
	activate
	
	if (count of documents) is 0 then
		beep
		return
	end if
	
	set theTool to the tool of the front document
	
	if theTool is highlight note tool then
		set theColor to (choose from list theColorList default items {"Cyan"} without multiple selections allowed)
		set hcolor to my transColor(theColor as text)
		if hcolor is cyan then
			set default note colors to {highlight note color:theCyanColor}
		else if hcolor is red then
			set default note colors to {highlight note color:theRedColor}
		else if hcolor is blue then
			set default note colors to {highlight note color:theBlueColor}
		else if hcolor is yellow then
			set default note colors to {highlight note color:theYellowColor}
		else if hcolor is green then
			set default note colors to {highlight note color:theGreenColor}
		end if
	end if
	
end tell

on transColor(theColorTypeName)
	tell application "Skim"
		if theColorTypeName is "Cyan" then
			return (cyan)
		else if theColorTypeName is "Red" then
			return (red)
		else if theColorTypeName is "Blue" then
			return (blue)
		else if theColorTypeName is "Yellow" then
			return (yellow)
		else if theColorTypeName is "Green" then
			return (green)
		end if
	end tell
end transColor
```
