if
    game.PlaceId == 6403373529
    or game.PlaceId == 136802962479827
    or game.PlaceId == 127174121130060
    or game.PlaceId == 11520107397
    or game.PlaceId == 124596094333302
    or game.PlaceId == 2380077519
then
    Window:ChangeTitle("Slap Battles 👏")
    Tabs = {
        Tab = Window:AddTab("Info", SolarIcon.Info),
        Tab1 = Window:AddTab("Script", SolarIcon.Script),
        Tab2 = Window:AddTab("Anti", SolarIcon.Anti),
        Tab3 = Window:AddTab("Badges", SolarIcon.Badges),
        Tab4 = Window:AddTab("Local", SolarIcon.Local),
        Tab5 = Window:AddTab("Misc", SolarIcon.Misc),
        Tab6 = Window:AddTab("Gloves Optional", SolarIcon.GlovesOptional),
        ["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings),
    }

