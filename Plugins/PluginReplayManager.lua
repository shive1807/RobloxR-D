-- Create a toolbar
local toolbar = plugin:CreateToolbar("Replay Manager")

-- Create a button in the toolbar
local button = toolbar:CreateButton("TrackObjects", "Say Hello", "")

-- Define what happens when the button is clicked
button.Click:Connect(function()
	print("Hello, world!")
end)

--local toolbar = plugin:CreateToolbar("Replay Manager")


--local pluginButton = toolbar:CreateButton(
--	"Insert Script", --Text that will appear below button
--	"Button to insert a script", --Text that will appear if you hover your mouse on button
--	"rbxassetid://8740888472") --Button icon


--pluginButton.Click:Connect(function()
--	print("Button has been clicked.")
--end)

----pluginButton.Click:Connect(function()
----	local scrp = Instance.new("Script")
----	scrp.Source = ""
----	scrp.Name = "EmptyScript"
----	scrp.Parent = game.ServerScriptService
----end)