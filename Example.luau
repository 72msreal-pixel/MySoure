local Rayfield = loadstring(readfile("Rayfield-Plus.luau"))()

local translations = {
    fr = {
        ["Gameplay"] = "Jeu",
        ["Interface"] = "Interface",
        ["Auto Sprint"] = "Sprint auto",
        ["Reduced Motion"] = "Animations réduites",
        ["Field of View"] = "Champ de vision",
        ["Player Name"] = "Nom du joueur",
    },
    es = {
        ["Gameplay"] = "Juego",
        ["Interface"] = "Interfaz",
        ["Auto Sprint"] = "Sprint automático",
        ["Reduced Motion"] = "Movimiento reducido",
        ["Field of View"] = "Campo de visión",
        ["Player Name"] = "Nombre del jugador",
    },
}

Rayfield:AddTheme({
    Name = "Sakura Dusk",

    CornerRoundness     = UDim.new(0, 24),
    ElementCornerRadius = UDim.new(0, 14),
    PillCornerRadius    = UDim.new(1, 0),

    WindowColor = ColorSequence.new({
        ColorSequenceKeypoint.new(0,      Color3.fromRGB(255, 248, 250)),
        ColorSequenceKeypoint.new(0.5,    Color3.fromRGB(252, 240, 245)),
        ColorSequenceKeypoint.new(0.9999, Color3.fromRGB(250, 232, 240)),
        ColorSequenceKeypoint.new(1,      Color3.fromRGB(248, 225, 236)),
    }),
    ShadowColor = Color3.fromRGB(210, 175, 190),

    ElementGradient                = Color3.fromRGB(255, 252, 254),
    ElementStroke                  = Color3.fromRGB(240, 200, 218),
    ElementStrokeGradient          = Color3.fromRGB(230, 185, 205),
    ElementStrokeHover             = Color3.fromRGB(220, 90, 130),
    ElementTransparency            = 0,
    ElementStrokeTransparency      = 0,
    ElementStrokeHoverTransparency = 0,
    ElementTextHoverColor          = Color3.fromRGB(100, 30, 55),

    TabColor      = Color3.fromRGB(130, 40, 70),
    TabBackground = Color3.fromRGB(248, 232, 240),
    TabStroke     = Color3.fromRGB(210, 130, 160),

    SliderBackground      = Color3.fromRGB(252, 238, 245),
    SliderBackgroundHover = Color3.fromRGB(248, 228, 238),
    SliderProgress        = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(215, 80, 120)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 140, 170)),
    }),
    SliderStroke          = Color3.fromRGB(210, 160, 180),
    SliderHandle          = Color3.fromRGB(215, 80, 120),

    ToggleTrack               = Color3.fromRGB(215, 80, 120),
    ToggleTrackTransparency   = 0.6,
    ToggleKnobOff             = Color3.fromRGB(195, 150, 170),
    ToggleKnobOffTransparency = 0.3,
    DarkToggleOverlay         = false,

    FieldBackground   = Color3.fromRGB(255, 255, 255),
    FieldTransparency = 0.0,
    FieldGlow         = Color3.fromRGB(215, 80, 120),
    PlaceholderColor  = Color3.fromRGB(185, 145, 162),
    SurfaceStroke     = Color3.fromRGB(220, 185, 200),

    NeutralButton       = Color3.fromRGB(245, 228, 236),
    NeutralButtonHover  = Color3.fromRGB(238, 215, 226),
    NeutralButtonStroke = Color3.fromRGB(210, 165, 185),

    ContentColor = Color3.fromRGB(130, 85, 105),
    TitlingColor = Color3.fromRGB(90, 30, 55),
    ActionColor  = Color3.fromRGB(180, 70, 105),

    AccentColor  = Color3.fromRGB(215, 80, 120),
    AccentStroke = Color3.fromRGB(240, 130, 162),
    AccentGlow   = 0.3,

    StatBackground    = Color3.fromRGB(250, 235, 242),
    DropdownHighlight = Color3.fromRGB(215, 80, 120),

    ErrorColor       = Color3.fromRGB(200, 50, 50),
    ErrorStrokeColor = Color3.fromRGB(230, 85, 85),

    Font      = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
    TitleFont = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold,   Enum.FontStyle.Normal),

    LiveAnimation = true,
})

Rayfield:AddTheme({
    Name = "Arctic Circuit",

    CornerRoundness     = UDim.new(0, 12),
    ElementCornerRadius = UDim.new(0, 7),
    PillCornerRadius    = UDim.new(1, 0),

    WindowColor = ColorSequence.new({
        ColorSequenceKeypoint.new(0,      Color3.fromRGB(240, 248, 255)),
        ColorSequenceKeypoint.new(0.5,    Color3.fromRGB(232, 242, 252)),
        ColorSequenceKeypoint.new(0.9999, Color3.fromRGB(224, 236, 250)),
        ColorSequenceKeypoint.new(1,      Color3.fromRGB(216, 230, 248)),
    }),
    ShadowColor = Color3.fromRGB(170, 195, 225),

    ElementGradient                = Color3.fromRGB(248, 252, 255),
    ElementStroke                  = Color3.fromRGB(190, 215, 240),
    ElementStrokeGradient          = Color3.fromRGB(170, 200, 232),
    ElementStrokeHover             = Color3.fromRGB(55, 140, 210),
    ElementTransparency            = 0,
    ElementStrokeTransparency      = 0,
    ElementStrokeHoverTransparency = 0,
    ElementTextHoverColor          = Color3.fromRGB(15, 60, 110),

    TabColor      = Color3.fromRGB(20, 75, 140),
    TabBackground = Color3.fromRGB(222, 236, 252),
    TabStroke     = Color3.fromRGB(80, 155, 220),

    SliderBackground      = Color3.fromRGB(232, 244, 255),
    SliderBackgroundHover = Color3.fromRGB(218, 234, 250),
    SliderProgress        = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 120, 200)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 165, 235)),
    }),
    SliderStroke          = Color3.fromRGB(150, 190, 225),
    SliderHandle          = Color3.fromRGB(50, 120, 200),

    ToggleTrack               = Color3.fromRGB(55, 130, 205),
    ToggleTrackTransparency   = 0.6,
    ToggleKnobOff             = Color3.fromRGB(150, 185, 218),
    ToggleKnobOffTransparency = 0.3,
    DarkToggleOverlay         = false,

    FieldBackground   = Color3.fromRGB(255, 255, 255),
    FieldTransparency = 0.0,
    FieldGlow         = Color3.fromRGB(55, 130, 205),
    PlaceholderColor  = Color3.fromRGB(145, 175, 205),
    SurfaceStroke     = Color3.fromRGB(175, 205, 232),

    NeutralButton       = Color3.fromRGB(228, 240, 252),
    NeutralButtonHover  = Color3.fromRGB(212, 228, 248),
    NeutralButtonStroke = Color3.fromRGB(165, 200, 232),

    ContentColor = Color3.fromRGB(65, 100, 145),
    TitlingColor = Color3.fromRGB(18, 55, 105),
    ActionColor  = Color3.fromRGB(45, 110, 185),

    AccentColor  = Color3.fromRGB(50, 120, 200),
    AccentStroke = Color3.fromRGB(90, 158, 228),
    AccentGlow   = 0.25,

    StatBackground    = Color3.fromRGB(225, 238, 252),
    DropdownHighlight = Color3.fromRGB(50, 120, 200),

    ErrorColor       = Color3.fromRGB(205, 50, 50),
    ErrorStrokeColor = Color3.fromRGB(235, 80, 80),

    Font      = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
    TitleFont = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold,   Enum.FontStyle.Normal),

    LiveAnimation = false,
})

Rayfield:AddTheme({
    Name = "Inferno Obsidian",

    CornerRoundness     = UDim.new(0, 14),
    ElementCornerRadius = UDim.new(0, 8),
    PillCornerRadius    = UDim.new(0, 8),

    WindowColor = ColorSequence.new({
        ColorSequenceKeypoint.new(0,      Color3.fromRGB(8,  6,  4)),
        ColorSequenceKeypoint.new(0.5,    Color3.fromRGB(12, 9,  5)),
        ColorSequenceKeypoint.new(0.9999, Color3.fromRGB(16, 11, 6)),
        ColorSequenceKeypoint.new(1,      Color3.fromRGB(20, 14, 7)),
    }),
    ShadowColor = Color3.fromRGB(3, 2, 1),

    ElementGradient                = Color3.fromRGB(24, 16, 8),
    ElementStroke                  = Color3.fromRGB(65, 40, 15),
    ElementStrokeGradient          = Color3.fromRGB(90, 55, 20),
    ElementStrokeHover             = Color3.fromRGB(240, 140, 30),
    ElementTransparency            = 0,
    ElementStrokeTransparency      = 0,
    ElementStrokeHoverTransparency = 0,
    ElementTextHoverColor          = Color3.fromRGB(255, 245, 225),

    TabColor      = Color3.fromRGB(255, 200, 100),
    TabBackground = Color3.fromRGB(18, 12, 5),
    TabStroke     = Color3.fromRGB(180, 95, 15),

    SliderBackground      = Color3.fromRGB(22, 14, 6),
    SliderBackgroundHover = Color3.fromRGB(32, 20, 8),
    SliderProgress        = ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(185, 80,  10)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 120, 15)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(250, 170, 40)),
    }),
    SliderStroke          = Color3.fromRGB(130, 70, 18),
    SliderHandle          = Color3.fromRGB(240, 145, 30),

    ToggleTrack               = Color3.fromRGB(35, 20, 6),
    ToggleTrackTransparency   = 0.4,
    ToggleKnobOff             = Color3.fromRGB(110, 65, 20),
    ToggleKnobOffTransparency = 0.4,
    DarkToggleOverlay         = true,

    FieldBackground   = Color3.fromRGB(240, 160, 60),
    FieldTransparency = 0.92,
    FieldGlow         = Color3.fromRGB(240, 130, 20),
    PlaceholderColor  = Color3.fromRGB(140, 90, 40),
    SurfaceStroke     = Color3.fromRGB(110, 60, 15),

    NeutralButton       = Color3.fromRGB(30, 18, 8),
    NeutralButtonHover  = Color3.fromRGB(44, 26, 10),
    NeutralButtonStroke = Color3.fromRGB(95, 52, 16),

    ContentColor = Color3.fromRGB(185, 140, 85),
    TitlingColor = Color3.fromRGB(245, 200, 115),
    ActionColor  = Color3.fromRGB(240, 155, 50),

    AccentColor  = Color3.fromRGB(230, 120, 20),
    AccentStroke = Color3.fromRGB(250, 168, 60),
    AccentGlow   = 0.5,

    StatBackground    = Color3.fromRGB(14, 8, 3),
    DropdownHighlight = Color3.fromRGB(230, 120, 20),

    ErrorColor       = Color3.fromRGB(240, 55, 55),
    ErrorStrokeColor = Color3.fromRGB(255, 90, 90),

    Font      = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium,    Enum.FontStyle.Normal),
    TitleFont = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal),

    LiveAnimation = true,
})

local window = Rayfield:CreateWindow({
    name = "Example",
    subtitle = "Rayfield Gen2.1",
    size = UDim2.fromOffset(600, 450),
    font  = Enum.Font.Ubuntu,
    translations = translations,
    sidebarLayout = true,
    inlineDescription = true,
    theme = "Inferno Obsidian",
    icon = 80387863064905,
    userInfo = {
        Title = "Player",
        Subtitle = "Đang test Rayfield",
    },
    openButton = {
        Title    = "Rayfield",
        Subtitle = "Tap to open",
        Icons    = "rbxassetid://120122773078069",
    },
    configuration = {
        autoSave = true,
        autoLoad = true,
        fileName = "Config",
    },
})

local betaTag = window:CreateTag({ text = "BETA", color = Color3.fromRGB(255, 175, 15) })

window:CreateSection({ name = "Gameplay" })

local mainTab = window:CreateTab({ name = "Main", icon = "house" })

mainTab:CreateSection({ name = "Buttons & Toggle" })

mainTab:CreateButton({
    name = "Say Hello",
    description = "Bấm để in ra chat",
    callback = function()
        print("Hello from Rayfield!")
    end,
})

mainTab:CreateToggle({
    name = "Enable Feature",
    description = "Bật/tắt tính năng demo",
    flag = "EnableFeature",
    value = false,
    callback = function(value)
        print("Toggle:", value)
    end,
})

mainTab:CreateDivider()

mainTab:CreateSlider({
    name = "Speed",
    description = "Chỉnh tốc độ",
    range = { 0, 100 },
    increment = 1,
    flag = "Speed",
    value = 50,
    callback = function(value)
        print("Slider:", value)
    end,
})

local inputTab = window:CreateTab({ name = "Input", icon = "keyboard" })

inputTab:CreateSection({ name = "Cấu hình" })

inputTab:CreateDropdown({
    name = "Weapon",
    description = "Chọn vũ khí",
    options = { "Sword", "Bow", "Staff" },
    flag = "Weapon",
    callback = function(value)
        print("Dropdown:", value)
    end,
})

inputTab:CreateInput({
    name = "Username",
    description = "Nhập tên",
    placeholder = "Nhập vào đây...",
    flag = "Username",
    callback = function(value)
        print("Input:", value)
    end,
})

inputTab:CreateKeybind({
    name = "Toggle UI Key",
    flag = "ToggleKey",
    value = Enum.KeyCode.RightShift,
    callback = function(key)
        print("Keybind pressed:", key)
    end,
})

inputTab:CreateSection({ name = "Nâng cao" })

inputTab:CreateColorPicker({
    name = "ESP Color",
    color = Color3.fromRGB(0, 170, 255),
    flag = "ESPColor",
    callback = function(color, alpha)
        print("Color:", color, "Alpha:", alpha)
    end,
})

window:CreateSection({ name = "Thông tin" })

local infoTab = window:CreateTab({ name = "Info", icon = "info" })

infoTab:CreateSection({ name = "Thống kê" })

infoTab:CreateText({ name = "Về script", text = "Đây là bản test Rayfield-Rework." })

infoTab:CreateStat({
    name = "Ping",
    value = 42,
    suffix = "ms",
})

infoTab:CreateProgress({
    name = "Loading",
    value = 0.65,
})

local group = infoTab:CreateGroup({ direction = "horizontal" })
group:CreateButton({ name = "OK", callback = function() end })
group:CreateButton({ name = "Cancel", callback = function() end })

window:Notify({
    title = "Rayfield",
    content = "Window đã load xong!",
})

window:Navigate("Main")
