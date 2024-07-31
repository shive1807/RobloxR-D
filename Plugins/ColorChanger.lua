-- Create a toolbar
local toolbar = plugin:CreateToolbar("Color Changer")

-- Create a button in the toolbar
local button = toolbar:CreateButton("ChangeColor", "Change the color of selected parts", "")

-- Define what happens when the button is clicked
button.Click:Connect(function()
	local selection = game.Selection:Get()
	for _, part in ipairs(selection) do
		if part:IsA("BasePart") then
			local newColor = BrickColor.Random()
			part.BrickColor = newColor
			print("Changed " .. part:GetFullName() .. " to color " .. newColor.Name)
		end
	end
end)
