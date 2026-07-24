local repo = 'https://raw.githubusercontent.com/j1scxxz-sketch/kimika-haxx-/refs/heads/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'OK',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local Tabs = {
    Main = Window:AddTab('main'),
    ['ui settings'] = Window:AddTab('ui settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('aim utility')

LeftGroupBox:AddToggle('aimbot', {
    Text = 'aimbot',
    Default = false,
    Tooltip = 'toggle aimbot',
    Callback = function(Value)
        print('[cb] aimbot changed to:', Value)
    end
}):AddKeyPicker('aimbot_keybind', {
    Default = 'None',
    SyncToggleState = true,
    Mode = 'Toggle',
    Text = 'aimbot keybind',
    NoUI = false,
    Callback = function(Value)
        print('[cb] aimbot keybind clicked!', Value)
    end,
    ChangedCallback = function(New)
        print('[cb] aimbot keybind changed!', New)
    end
})

LeftGroupBox:AddToggle('show_fov', {
    Text = 'show fov',
    Default = false,
    Tooltip = 'show fov toggle',
    Callback = function(Value)
        print('[cb] show fov changed to:', Value)
    end
}):AddColorPicker('show_fov_color1', {
    Default = Color3.new(1, 0, 0),
    Title = 'color 1',
    Transparency = 0,
    Callback = function(Value)
        print('[cb] show fov color1 changed!', Value)
    end
}):AddColorPicker('show_fov_color2', {
    Default = Color3.new(0, 1, 0),
    Title = 'color 2',
    Transparency = 0,
    Callback = function(Value)
        print('[cb] show fov color2 changed!', Value)
    end
}):AddColorPicker('show_fov_color3', {
    Default = Color3.new(0, 0, 1),
    Title = 'color 3',
    Transparency = 0,
    Callback = function(Value)
        print('[cb] show fov color3 changed!', Value)
    end
})

LeftGroupBox:AddToggle('fov_fill', {
    Text = 'fov fill',
    Default = false,
    Tooltip = 'fov fill toggle',
    Callback = function(Value)
        print('[cb] fov fill changed to:', Value)
    end
}):AddColorPicker('fov_fill_color1', {
    Default = Color3.new(1, 0, 0),
    Title = 'color 1',
    Transparency = 0.5,
    Callback = function(Value)
        print('[cb] fov fill color1 changed!', Value)
    end
}):AddColorPicker('fov_fill_color2', {
    Default = Color3.new(0, 1, 0),
    Title = 'color 2',
    Transparency = 0.5,
    Callback = function(Value)
        print('[cb] fov fill color2 changed!', Value)
    end
}):AddColorPicker('fov_fill_color3', {
    Default = Color3.new(0, 0, 1),
    Title = 'color 3',
    Transparency = 0.5,
    Callback = function(Value)
        print('[cb] fov fill color3 changed!', Value)
    end
})

LeftGroupBox:AddToggle('fov_fill_spin', {
    Text = 'fov fill spin',
    Default = false,
    Tooltip = 'fov fill spin toggle',
    Callback = function(Value)
        print('[cb] fov fill spin changed to:', Value)
    end
})

LeftGroupBox:AddDropdown('hit_part', {
    Values = { 'head', 'torso', 'left arm', 'right arm', 'left leg', 'right leg' },
    Default = 1,
    Multi = false,
    Text = 'hit part',
    Tooltip = 'select hit part',
    Callback = function(Value)
        print('[cb] hit part changed to:', Value)
    end
})

LeftGroupBox:AddToggle('random', {
    Text = 'random',
    Default = false,
    Tooltip = 'random toggle',
    Callback = function(Value)
        print('[cb] random changed to:', Value)
    end
})

LeftGroupBox:AddSlider('prediction', {
    Text = 'prediction',
    Default = 0.5,
    Min = 0.1,
    Max = 1,
    Rounding = 1,
    HideMax = true,
    Compact = false,
    Callback = function(Value)
        print('[cb] prediction changed to:', Value)
    end
})

LeftGroupBox:AddSlider('smoothness', {
    Text = 'smoothness',
    Default = 0.5,
    Min = 0.1,
    Max = 1,
    Rounding = 1,
    HideMax = true,
    Compact = false,
    Callback = function(Value)
        print('[cb] smoothness changed to:', Value)
    end
})

LeftGroupBox:AddSlider('fov_fill_speed', {
    Text = 'fov fill speed',
    Default = 5,
    Min = 1,
    Max = 10,
    Rounding = 0,
    HideMax = true,
    Compact = false,
    Callback = function(Value)
        print('[cb] fov fill speed changed to:', Value)
    end
})

local RightGroupBox = Tabs.Main:AddRightGroupbox('testing stuff')

local MainButton = RightGroupBox:AddButton({
    Text = 'button',
    Func = function()
        print('you clicked the main button!')
    end,
    DoubleClick = false,
    Tooltip = 'main button'
})

MainButton:AddButton({
    Text = 'sub button 1',
    Func = function()
        print('you clicked sub button 1!')
    end,
    DoubleClick = false,
    Tooltip = 'sub button 1'
})

MainButton:AddButton({
    Text = 'sub button 2',
    Func = function()
        print('you clicked sub button 2!')
    end,
    DoubleClick = false,
    Tooltip = 'sub button 2'
})

RightGroupBox:AddToggle('dependency_toggle', {
    Text = 'dependency toggle',
    Default = false,
    Tooltip = 'dependency toggle',
    Callback = function(Value)
        print('[cb] dependency toggle changed to:', Value)
    end
})

local Depbox = RightGroupBox:AddDependencyBox()
Depbox:AddSlider('dependency_slider', {
    Text = 'dependency slider',
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 0,
    HideMax = true,
    Compact = false,
    Callback = function(Value)
        print('[cb] dependency slider changed to:', Value)
    end
})
Depbox:AddDropdown('dependency_dropdown', {
    Values = { 'option 1', 'option 2', 'option 3' },
    Default = 1,
    Multi = false,
    Text = 'dependency dropdown',
    Tooltip = 'dependency dropdown',
    Callback = function(Value)
        print('[cb] dependency dropdown changed to:', Value)
    end
})

Depbox:SetupDependencies({
    { Toggles.dependency_toggle, true }
})

Library:SetWatermarkVisibility(true)

local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local LocalPlayer = game:GetService('Players').LocalPlayer;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:UpdateWatermark({
        Name = 'OK';
        FPS = math.floor(FPS);
        Ping = math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue());
        Username = LocalPlayer.Name;
        DisplayName = LocalPlayer.DisplayName;
    });
end);

Library.KeybindFrame.Visible = true;

Library:OnUnload(function()
    WatermarkConnection:Disconnect()
    print('unloaded!')
    Library.Unloaded = true
end)



local UIElementsGroup = Tabs['ui settings']:AddLeftGroupbox('ui elements')

UIElementsGroup:AddToggle('watermark_enabled', {
    Text = 'watermark',
    Default = true,
    Tooltip = 'toggle the watermark',
    Callback = function(Value)
        Library:SetWatermarkVisibility(Value)
    end
})

UIElementsGroup:AddToggle('keybind_list_enabled', {
    Text = 'keybind list',
    Default = true,
    Tooltip = 'toggle the keybind list',
    Callback = function(Value)
        Library:SetKeybindListVisibility(Value)
    end
})

UIElementsGroup:AddDropdown('watermark_options', {
    Values = { 'Name', 'FPS', 'Ping', 'Username', 'Display Name' },
    Default = { 'Name', 'FPS', 'Ping' },
    Multi = true,
    Text = 'watermark options',
    Tooltip = 'choose what shows on the watermark',
    Callback = function(Value)
        Library:SetWatermarkOptions({
            Name = Value['Name'] or false;
            FPS = Value['FPS'] or false;
            Ping = Value['Ping'] or false;
            Username = Value['Username'] or false;
            DisplayName = Value['Display Name'] or false;
        })
    end
})

local MenuGroup = Tabs['ui settings']:AddLeftGroupbox('menu')

MenuGroup:AddButton('unload', function() Library:Unload() end)
MenuGroup:AddLabel('menu bind'):AddKeyPicker('menukeybind', { Default = 'End', NoUI = true, Text = 'menu keybind' })

Library.ToggleKeybind = Options.menukeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'menukeybind' })

ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

SaveManager:BuildConfigSection(Tabs['ui settings'])
ThemeManager:ApplyToTab(Tabs['ui settings'])

SaveManager:LoadAutoloadConfig()
