-- Create a new plugin button
local toolbar = plugin:CreateToolbar("Script Checker")
local button = toolbar:CreateButton("Check TrackMe Scripts", "Check for TrackMe scripts in Workspace", "rbxassetid://4458901886")

-- Function to check for TrackMe scripts
local function checkForTrackMeScripts()
	local workspace = game:GetService("Workspace")

	-- Function to recursively check all descendants of a given parent
	local function checkDescendants(parent)
		for _, child in ipairs(parent:GetChildren()) do
			if child:IsA("Script") and child.Name == "TrackMe" then
				print("Found 'TrackMe' script in:", child.Parent.Name)
			end
			-- Recurse into child
			checkDescendants(child)
		end
	end

	-- Start the recursive checking from Workspace
	checkDescendants(workspace)
end

-- Connect the button click to the function
button.Click:Connect(checkForTrackMeScripts)


---- Create a toolbar
--local toolbar = plugin:CreateToolbar("Part Tracker")

---- Create a button in the toolbar
--local button = toolbar:CreateButton("TrackParts", "Track Parts with 'TrackMe' Script", "")

---- Define what happens when the button is clicked
--button.Click:Connect(function()
--	-- Function to check if a part has a script named "TrackMe"
--	local function hasTrackMeScript(part)
--		for _, child in ipairs(part:GetChildren()) do
--			if child:IsA("Script") and child.Name == "TrackMe" then
--				return true
--			end
--		end
--		return false
--	end

--	-- Iterate over all parts in the workspace
--	for _, part in ipairs(workspace:GetDescendants()) do
--		if part:IsA("BasePart") and hasTrackMeScript(part) then
--			print("Part with 'TrackMe' script: " .. part:GetFullName())
--		end
--	end
--end)
