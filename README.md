# Rayfield Plus — Gen 2.1.0

UI library cho Roblox script, fork/nâng cấp từ Rayfield gốc. Code lại phần lớn theo hướng module hóa (lazy-load từng component), thêm mớ tính năng mà bản gốc không có. Không phải bản chính thức của team Rayfield, đây là bản custom riêng.

> Made by **72ms**

## Vì sao lại có bản này

Rayfield gốc dùng ổn nhưng thiếu vài thứ mình cần khi build UI cho script lớn — đa ngôn ngữ, theme tùy biến, toast/tag, group layout ngang dọc... Nên viết lại một bản đầy đủ hơn, giữ style API quen thuộc để ai từng xài Rayfield chuyển qua không bỡ ngỡ.

## Tính năng

- **Window / Tab / Section / Group** — cấu trúc phân cấp rõ ràng, group hỗ trợ layout ngang hoặc dọc.
- **Component đầy đủ**: Button, Toggle, Switch, Slider, Dropdown (multi-select được), Input, Keybind, ColorPicker, Stat, Progress, Console, Text, Divider, Tag.
- **Notify & Toast** — thông báo kiểu popup và toast góc màn hình, tùy chỉnh vị trí, avatar, thời gian hiển thị.
- **Popup box** — hộp thoại xác nhận dạng modal.
- **Save/Load config** — lưu trạng thái các flag ra file, load lại được, quản lý nhiều config cùng lúc.
- **Theme system** — theme dựng sẵn + đăng ký theme tùy biến qua `AddTheme`.
- **Đa ngôn ngữ (locale)** — set locale, đăng ký bản dịch riêng hoặc gắn translator custom.
- **Secure mode** — chế độ né phát hiện font/asset, có cache asset và tự thông báo nếu asset nào load fail.
- **Font tự custom** qua `fontManager`, không bắt buộc dùng font mặc định.

Danh sách trên không đủ hết đâu, còn nhiều cái lặt vặt bên trong nữa, dùng thử sẽ thấy.

## Cài đặt

Load qua `loadstring`, dán vào executor:

```lua
local Rayfield = loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/72msreal-pixel/MySoure@main/Rayfield-Plus.luau"))()
```

*(link raw chính thức mình chưa up, để tạm vậy, lát thay vào là chạy)*

### Bản dùng thử

Muốn test trước thì xài tạm link này, load qua jsDelivr từ file example:

```lua
loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/72msreal-pixel/MySoure@main/Example.luau"))()
```

## Dùng nhanh

```lua
local Window = Rayfield:CreateWindow({
    name = "My Script",
    subtitle = "by you",
    icon = 0,
    size = UDim2.fromOffset(600, 400),
})

local Tab = Window:CreateTab({
    name = "Main",
    icon = 0,
})

Tab:CreateButton({
    name = "Click me",
    description = "test button thôi",
    callback = function()
        print("clicked")
    end,
})

Tab:CreateToggle({
    name = "Auto Farm",
    flag = "autoFarm",
    value = false,
    callback = function(value)
        print("Auto farm:", value)
    end,
})

Tab:CreateSlider({
    name = "Speed",
    range = {16, 100},
    increment = 1,
    value = 16,
    suffix = "spd",
    callback = function(value)
        print("Speed set to", value)
    end,
})

Tab:CreateDropdown({
    name = "Mode",
    options = {"Farm", "PvP", "AFK"},
    value = "Farm",
    callback = function(value)
        print("Mode:", value)
    end,
})
```

Cứ thế mà nhân bản ra, mỗi component nhận 1 bảng `props`, có `callback` để bắt sự kiện. Muốn tạo thêm section/group thì gọi `Tab:CreateSection({...})` hoặc `Tab:CreateGroup({...})` rồi gọi tiếp `CreateXxx` trên group đó.

## Notify / Toast

```lua
Window:Notify({
    title = "Thông báo",
    content = "Script đã load xong",
    duration = 5,
})

Window:Toast({
    title = "Update",
    subtitle = "v2.1.0",
    position = "Top",
    duration = 3,
})
```

## Save/Load config

```lua
Window:Save("myconfig")     -- lưu
Window:Load("myconfig")     -- load lại
Window:ListConfigs()        -- xem list config đã lưu
Window:DeleteConfig("myconfig")
```

Flag nào set `flag = "tenFlag"` trong props thì mới được lưu, không đặt flag thì component đó không lưu trạng thái.

## Theme

```lua
Rayfield:AddTheme({
    -- các field màu tùy biến ở đây
})

Window:ChangeTheme(themeName)
```

## Đa ngôn ngữ

```lua
Window:SetLocale("vi")
Window:RegisterTranslations({
    -- key = bản dịch
})
```

## Lưu ý

- Đây là bản không chính thức, tự chỉnh sửa/nâng cấp lại, không đại diện cho Rayfield gốc.
- Đang trong quá trình hoàn thiện, một số phần (link load, doc chi tiết từng field) sẽ update dần.
- Dùng cho mục đích học hỏi/script cá nhân là chính, xài sao cho hợp lý thì tự chịu trách nhiệm nha.

---

Credit: **72ms** — cảm ơn đã ghé xài lib :3
