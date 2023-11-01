if game.CoreGui:FindFirstChild("Neverlose1") then
    game.CoreGui.Neverlose1:Destroy()
end
for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end
local Neverlose_Main = {
    Settings = {
        CloseBind = "RightControl",
    },
    Flags = {},
    SettingsFlags = {},
    Lib_Sounds = {
        SoundVolume = 0.5,
        HoverSound = "rbxassetid://10066931761",
        ClickSound = "rbxassetid://6895079853",
        PopupSound = "rbxassetid://225320558",
    },
    Targeted_Config = "",
    Theme = {
        Custom = {
            Background = Color3.fromRGB(9, 9, 13),
            Section = Color3.fromRGB(0, 20, 40),
            Element = Color3.fromRGB(61, 133, 224),
            Text = Color3.fromRGB(255,255,255),
            Glow = Color3.fromRGB(14, 191, 255)
        }
    },
        TweenService = game:GetService("TweenService"),
        UIS = game:GetService("UserInputService"),
        RunService = game:GetService("RunService"),
        Market = game:GetService("MarketplaceService"),
        Workspace = game:GetService("Workspace"),
        ReplStorage = game:GetService("ReplicatedStorage"),
        CoreGui = game:GetService("CoreGui"),
        VirtualUser = game:GetService("VirtualUser"),
        VirtualInputManager = game:GetService("VirtualInputManager"),
        Players = game:GetService("Players"),
        Client = game:GetService("Players").LocalPlayer,
        HttpService = game:GetService("HttpService"),
        Mouse = game:GetService("Players").LocalPlayer:GetMouse()
};
local function CheckKey(tab, key)
	for i, v in next, tab do
		if v == key then
			return true
		end
	end
end
local Neverlose = Instance.new("ScreenGui")
Neverlose.Name = "Neverlose1"
Neverlose.Parent = game.CoreGui
Neverlose.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local TweenService = game:GetService("TweenService");
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local req = (syn and syn.request) or (http and http.request) or http_request or nil
local Player = game:GetService("Players").LocalPlayer
local GenerateGUID = Neverlose_Main.HttpService:GenerateGUID(false) 
function Neverlose_Main:PlaySound(SoundID)
    local sound = Instance.new("Sound")
    sound.SoundId = SoundID
    sound.Looped = false
    sound.Parent = workspace
    sound.Volume = 50
    sound:Play()
end
local BuildInfo = loadstring(game:HttpGet"https://pastebin.com/raw/HzAeDGm4")()
local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil
    local function Update(input)
       local Delta = input.Position - DragStart
       local pos =
          UDim2.new(
             StartPosition.X.Scale,
             StartPosition.X.Offset + Delta.X,
             StartPosition.Y.Scale,
             StartPosition.Y.Offset + Delta.Y
          )
       local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
       Tween:Play()
    end
    topbarobject.InputBegan:Connect(
       function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
             Dragging = true
             DragStart = input.Position
             StartPosition = object.Position
   
             input.Changed:Connect(
                function()
                   if input.UserInputState == Enum.UserInputState.End then
                      Dragging = false
                   end
                end
             )
          end
       end
    )
    topbarobject.InputChanged:Connect(
       function(input)
          if
             input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch
          then
             DragInput = input
          end
       end
    )
    UserInputService.InputChanged:Connect(
       function(input)
          if input == DragInput and Dragging then
             Update(input)
          end
       end
    )
   end

local Random_Words = {
    'clRhcmdldCAtIFVuYWJsZSB0byBmaW5kIHBhbmVsIHdpdGggdGhlIGdpdmVuIGlkICJDU0dPTG9hZGluZ1NjcmVlbiIhIFBhbmVsIGlzIHBvc3NpYmx5IGNyZWF0ZWQgZHluYW1pY2FsbHkuDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIyaDIwbS math.cos BhdCAxNjos.datek1MjkxOTMzIChjdXJyZW50IHRpbWUgMTmath.math.d.f.floorY5NTIxMTQmath.minio.open4MyksIHdrpoll.-pbGwgcmVuZXcgaW4gMjBoMjBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIyaDEwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NT table.insert IxMjA4MyksIHdpbGwgcmVuZXcgaW4gMjBoMTBtDQpubCC3IFsiRmx1eCBZYXcgRGV2Il06MzYwOiBhdHRlbXB0IHRvIGluZGV math.ceil 4IGdsb2JhbCAnc2NyaXB0X2RiJyAoYSBuaWwgd io.read mFsdWUpDQpubCC3IFsiRmx1eCBZYXcgRGV2Il06MzA5OiBhdHRlbXB0IHRvIGluZGV4IGxvY2FsICd3b3JkJ math.sin yAoYSBudW1iZXIgdmFsdWUpDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIyaDAw stri string.rep ng.byte bSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxMjY4MyksIHdpbGwgcmVuZXcgaW4gMjBoMDBtDQpDZXJ math.sqr table.pack t 0aWZpY2F0ZSBleHBpcmVzIGluIDIxaDUwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxMzI4MyksI string.reverse HdpbGwgcmVuZXcgaW4gMTloNTBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIxa io.write DQwbSBhdCAxNjk1 string.gmatch MjkxOTMzIChjdXJyZW50 os.time  coroutine.yield IHRpbWUgMTY5NTIxMzg4MyksIHdpbGwgcmVuZXcgaW4gMTloNDBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIxaDMwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxN string.sub DQ4MyksIHdpbGwgcmVuZXcgaW4gMTloMz table.sort BtDQpubCC3IFsiRmx1eCB math.max ZYXcgRGV2Il06MjgwOiBiYWQgYXJndW1lbnQgIzIgdG8 str string.upper ing.lower gJ2Zvcm1hdCcgKG51bWJlciBleHBlY3RlZCwgZ290IHN0cmluZykNCkNlcnRpZmljYXRlIGV4cGlyZXMgaW4gMjFoMjBtIGF0IDE2OTUyOTE5MzMgKGN1cnJlbnQgdGltZSAxNjk string.len 1MjE1MDgzKSwgd2lsbCByZW5ldyBp table.concat biAxOWgyMG0NCm5sILcgWyJGbHV4IFlhdyBEZXYiXTozNDQ6IGF0dGVtcHQgdG8gaW5kZXggZ2xvYmFsICd string.char wb3NpdG table.unpack lvbnMnIChhIG5pbCB2YWx1ZSk coroutine.resume NCm5sILcgWyJGbHV4IFlhdyBEZXYiXTozNDc6 debug.getinfo IGF0dGVtcHQgdG8gcGVyZm9ybSBmath.abshcml0aG1ldGljIG9uIGdsb2JhbCAnb2Zmc2V0JyAo table.remove(YSBuaW, coroutine.create):format(wgdmFsdWUp,string.find, "", math.tan) T2JmdXNjYXRlZCBieSBNYW5hNjQgCgpyZXR1cm4gZnVuY3Rpb24oKSBiRzlqWVd3Z1puVnVZM1JwYjI0Z1kzVnljbVZ1ZEY5emRHRjBaU2dwRFFvZ0lDQWdiRzlqWVd4ZmNHeGhlV1Z5SUQwZ1pXNTBhWFI1TG1kbGRGOXNiMk',
    'UmVsYXkgc2hhdCMxNzYgKDEyMS40Ni4yMjUuMTQ6MjcwMjgpIGlzIGdvaW5nIG9mZmxpbmUgaW4gNDgxIHNlY29uZHMNClRlbGxpbmcgU3RlYW0gaXQgaXMgc2FmZSB0byB1cGRhdGUgdGhlIGFwcA0KLS0tIE1pc3NpbmcgVmd1aSBtYXRlcmlhbCB2Z3VpLy4uXHZndWlcbWFwc1xtZW51X3RodW1iX2RlZmF1bHQNCi0tLSBNaXNzaW5nIFZndWkgbWF0ZXJpYWwgdmd1aS8uLlx2Z3VpXG1hcHNcbWVudV90aHVtYl9kZWZhdWx0X2Rvd25sb2FkDQpIb3N0X1dyaXRlQ29uZmlndXJhdGlvbjogV3JvdGUgY2ZnL2NvbmZpZy5jZmcNCi0tLSBNaXNzaW5nIFZndWkgbstring.lowerWF0ZXJpYWwgdmd1aS8uLi92Z3VpL2ljb25fY29uX21lZGl1bS52bXQNClBpbmcgbWVhc3Vio.writeyZW1lbnQgY29tcGxldGVkDQpQaW5nIGxvY2F0aW9uOiBhbXM9MTMrMSxzdG89MTMrMSxzdG8yPTEzKzEsbXN0MT0xNCsxLGZyYT0yMSsyLzE3KzEsbWx4MT0xOstring.upperdebug.getinfoCsxLGxocj0zNCszLzE4KzEsd2F3PTIxKzIscGFyPTM1KzMvMjMrMSxpYWQ9MTAxKzEwLzEwMSsxLHNncD0xOTArMTkvMTkyKzE1LGdydT0yMDUrMjANClNEUiBSZWxheU5ldHdvcmtTdGF0dXM6io.openICBhdmFpbD1PSyAgY29uZmlnPU9LICBhbnlyZWxheT1PSyAgIChPSykNCkNoYW5nZUdhbWVVSVN0Ystring.reverseXRlOiBDU0dPX0dBTUVfVUlfU1RBVEVfSU5Umath.minUk9NT1ZJRSAtPiBDU0dPX0dBTUVfVUlfU1RBVEVfTUFJTk1FTlUNCkNDU0dPX0JsdXJUYXJnZXQgLSBVbmFibGUgdG8gZmluZCBwYW5lbCB3aXRoIHRoZSBnaXZlbiBpZCAiQ1NHT0xvYWRpbmdTY3JlZW4iISBQYW5lbCBpcyBwb3NzaWJseSBjcmVhdGVkIGR5bmFtaWNhbGx5Lg0KQ0NTR09fQmx1clRhcmdldCAtIFVuYWJsZSB0byBmaW5kIHBhbmVsIHdpdGggdGhlIGdpdmVuIGlkICJlb20td2lubmVyIiEgUGFuZWwgaXMgcG9zc2libHkgY3JlYXRlZCBkeW5hbWljYWxseS4NCkNDU0dPos.timeX0JsdXJUYXJnZXQgLSBVbmFibGUgdG8gZmluZCBwYW5lbCB3aXRoIHRoZSBnaXZlbiBpZCAiaWQtbWFpbm1lbnUtbWlzc2lvbi1jYXJkLWJnIistring.table.unpackrepEgUGFuZWwgaXMgcG9zc2libHkgY3JlYXRlZCBkeW5hbWljYWxseS4NCkNDU0dPX0JsdXJUYXJnZXQgLSBVbmFibGUgdG8gZmluZCBmath.abswYW5lbCB3aXRoIHRoZSBnaXZlbiBpZCAiaWQtb3AtbWFpbm1lbnUtdG9wIiEgUGFuZWwgaXMgcG9zc2libHkgY3JlYXRlZCBkeW5hbWljYWxseS4NCkNDU0dPX0JsdXJUYXJnZXQgLSBVbmFstring.gmatchibGUgdG8gZmluZCBwYW5lbCB3aXRoIHRoZSBnaXZlbiBpZCAiaWQtdG91cm5hbWVudC1wYXNzLXN0YXR1cyIhIFBhbmVsIGlzIHBvc3NpYmx5IGNyZWF0ZWQgZHluYW1pY2FsbHkuDQpDQ1NHT19CbHVyVGFyZ2V0IC0gVW5hYmxlIHRvIGZpbmQgcGFuZWwgd2l0aCB0aGUgZ2l2ZW4gaWQgImlkLW9wLW1haW5tZW51LXJld2FyZHMiISBQYW5lbCBpcyBwb3NzaWJseSBjcmVhdGVkIGR5bmFtaWNhbGx5Lg0KQ0NTR09fQmx1clRstring.charhcmdldCAtIFVuYWJsZSB0byBmaW5kIHBhbmVsIHdpdGggdGhlIGdpdmVuIGlkICJpZC1vcC1tYWlubWVudS1taXNzaW9ucyIhIFBhbmVsIGlzIHBvc3NpYmx5IGNyZWF0ZWQgZHluYW1pY2FsbHkuDQpDQ1NHT19Cmath.sinbHVyVGFyZ2V0IC0gVW5hYmxlIHRvIGZpbmQgcGFuZWwgd2l0aCB0aGUgZ2l2ZW4gaWQgtable.removeImlkLWFjdGstring.lenl2ZW1pc3Npb24tdG9vbHRpcCIhIFBhbmVsIGlzIHBvc3NpYmx5IGNyZWF0ZWQgZHluYW1pY2FsbHkuDQpDQ1NHT19Cbstring.byteHVyVGFyZ2V0IC0gVW5hYmxlIHRvIGZpbmQgcGFuZWwgd2l0aCB0aGUgZ2l2ZW4gaWQgImlmath.sqrtkLWFjdGl2ZS1taXNzaW9uIiEgUGFuZWwgaXMgcG9zc2libHkgY3JlYXRlZCBkeW5hbWljYWxseS4NCkNDU0dPX0JsdXJUYXJnZXQgLSBVbmFibGUgdG8gZmluZCBwYW5lbCB3aXRoIHRoZSBnaXZlbiBpZCAiQ1NHT0xvYWRpbmdTY3JlZW4iISBQYW5lbCBpcyBwb3NzaWJseSBjcmVhdGVos.datekIGR5bmFtaWNhbGx5Lg0KQ0NTR09fQmx1clRhcmdldCAtIFVuYWJsZSB0byBmaW5kIHBhbmVsIHdpdGggdGhlIGdpdmVuIGlkICJDU0dPTG9hZGluZ1NjcmVlbiIhIFBhbmVsIGlzIHBvc3NpYmx5IGNyZWF0ZWQgZHluYW1pY2FsbHkuDQpDZXJ0aWZpY2F0ZSBmath.ceilleHBpcmVzIGluIDIyaDIwbSBhdstring.subCAxNjk1MjkxOTMzICstring.findhjdXJyZW50math.cosIHRpbWUgMTY5NTIxMTmath.floorQ4MyksIHdpbGwgcmVuZXcgaW4gMjBoMjBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIyaDEwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxMjA4math.maxMyksIHdpbGwgcmVuZXcgaW4gMjBoMTBtDQpubCC3IFsiRmx1eCBZYXcgRGV2Il06MzYwOiBhdHRlbXB0IHRvIGluZGV4IGdsb2JhbCAnc2NyaXB0X2RiJyAoYSBuaWwgdmFsdWUpDQpubCC3IFsiRmx1eCBZYXcgRGV2Il06MzA5OiBhdHRlbXB0IHRvIGluZGV4IGxvY2FsICd3b3JkJyAoYSBudW1iZXIgdmFsdWUpDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIytable.concataDAwbSBhdCAxNjk1MjkxOTMzIChtable.insertjdXJyZW50IHRpbWUgMTY5NTIxMtable.packjY4MyksIHdpbGwgcmVuZXcgaW4gMjBcoroutine.createoMDBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIxaDUwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxMzI4MyksIHdpbGwgcmVuZXcgaW4gMTloNTBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIxaDQwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxMzg4MyksIHdpbGwgcmVuZXcgaW4gMTloNDBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGstring.formatluIDIxcoroutine.resumeaDMwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxNDQ4MyksIHdpbGwgcmVuZXcgaW4gMTloMzBtDQpubCC3IFsiRmx1eCBZYXcgRGV2Il06MjgwOiBiYWQgYXJndW1lbnQgIzIgdG8gJ2Zvcm1hdCcgKG51bWJlciBleHBlY3RlZCwgZ290IHN0cmluZykNCkNlcnRpZmljYXRlIGV4cGlyZXMgaW4gMjFoMjBtIGF0io.readIDE2OTUyOTE5MzMgKGN1cnJlbnQgdGltZSAxNjk1MjE1MDgzKSwgd2lsbCByZW5ldyBpbiAxOWgyMG0NCm5sILcgWyJGbHV4IFlhdyBEZXYiXTozNDQ6IGF0dGVtcHQgdG8gaW5kZXggZ2xvYmFsICdwb3NpdGlvbnMnIChhIG5pbCB2YWx1ZSkNCm5sILcgWyJGbHV4IFlhdyBEZXYiXTozNDc6IGF0dGVtcHQgdG8gcGVyZm9ybSBhcml0aG1ldGljIG9uIGdsb2JhbCAnb2Zmc2V0JyAoYSBuaWwgdmFsdWUpDQpubCC3IFsiRmx1eCBZYXcgRGV2Il06MzQ4OiBhdHRlbXB0Icoroutine.yieldHRvIHBlcmZvcm0gYXJpdGhtZXRpYyBvbiBsb2NhbCAnb2Zmc2V0JyAoYSBuaWwgdmFsdWUpDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIxaDEwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxNTY4MyksIHdpbGwgcmVuZXcgaW4gMTloMTBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIxaDAwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxNjI4MyksIHdpbGwgcmVuZXcgaW4gmath.tanMTloMDBttable.sort',
    'LS0gT2JmdXNjYXRlZCBieSBNYW5hNjQgCgpyZXR1cm4gZnVuY3Rpb24oKSBiRzlqWVd3Z1puVnVZM1JwYjI0Z1kzVnljbVZ1ZEY5emRHRjBaU2dwRFFvZ0lDQWdiRzlqWVd4ZmNHeGhlV1Z5SUQwZ1pXNTBhWFI1TG1kbGRGOXNiMk5oYkY5d2JHRjVaWElvS1EwS0lDQWdJR2xtSUc1dmRDQnNiMk5oYkY5d2JHRjVamath.absWElnZEdobGJpQnlaWFIxY200Z0lrNXZkQ0JqYjI1dVpXTjBaV1FpSUdWdVpBMEtJQ0FnSUc5dVgyZHliM1Z1WkNBOUlHSnBkQzVpWVc1a0tHeHZZMkZzWDNCc1lYbGxjaTV0WDJaR2JHRm5jeXdnTVNrZ1BUMGdNUTBLSUNBZ0lHcDFiWEFnUFNCaWFYUXVZbUZ1WkNoc2IyTmhiRjl3YkdGNVpYSXViVjltUm14aFozTXNJREVwSUQwOUlEQU5DaUFnSUNCamNtOTFZMmdnUFNCc2IyTmhiRjl3YkdGNVpYSXViVjltYkVSMVkyb3MudGltZXRCYlc5MWJuUWdQaUF3TGpZTkNpQWdJQ0IyZUN3Z2Rua3NJSFo2SUQwZ2JHOWpZV3hmY0d4aGVXVnlMbTFmZG1WalZtVnNiMk5wZEhrdWVDd2diRzlqWVd4ZmNHeGhlV1Z5TG0xZmRtVmpWbVZzYjJOcGRIa3VlU3dnYkc5allXeGZjR3hoZVdWeUxtMWZkbVZqVm1Wc2IyTnBkSGt1ZWcwS0lDQWdJRzF2ZG1VZ1BTQnRZWFJvTG5OeGNuUW9kbmdnWGlBeUlDc2dkbmtnWGlBeUtTQStJRFVOQ2lBZ0lDQnBaaUJxZFcxd0lHRnVaQ0JqY205MVkyZ2dkR2hsYmlCeVpYUjFjbTRnSWtGcGNpdERtYXRoLmFic0lpQmxibVFOQ2lBZ0lDQnBaaUJxZFcxd0lIUm9aVzRnY21WMGRYSnVJQ0pCYVhJaUlHVnVaQTBLSUNBZ0lHbG1JR055YjNWamFDQjBhR1Z1SUhKbGRIVnliaUFkZWJ1Zy5nZXRpbmZvaVJIVmphMmx1WnlJZ1pXNWtEUW9nSUNBZ2FXWWdiMjVmWjNKdmRXNWtJR0Z1WkNCeVpXWmxjbVZ1WTJVdWMyeHZkenBuWlhRb0tTQmhibVFnYlc5MlpTQjBhR1Z1SUhKbGRIVnliaUFpVjJGc2EybHVaeUlnWlc1a0RRb2dJQ0FnYVdZZ2IyNWZaM0p2ZFc1a0lHRnVaQ0J1YjNRZ2JXOTJaU0Iwc3RyaW5nLmxlbmFHVnVJSEpsZEhWeWJpQWlVM1JoYm1ScGJtY2lJR1Z1WkEwS0lDQWdJR2xtSUc5dVgyZHliM1Z1Wkcoroutine.yieldNCaGJtUWdiVzkyWlNCMGFHVnVJSEpsZEhWeWJpQWlVblZ1Ym1sdVp5SWdaVzVrRFFwbGJtUU5DZzBLYkc5allXd2dablZ1WTNScGIyNGdRVzUwYVVWNGNHeHZhWFFvS1EwS0lDQWdJR2xtSUc5MGFHVnlYM1JoWW14bExrRllPbWRsZENncElIUm9aVzROQ2lBZ0lDQWdJQ0FnWTNaaGNpNWpiRjlzWVdkamIyMXdaVzV6WVhScGIyNDZhVzUwS0RBcERRb2dJQ0FnWld4elpRMEtJQ0FnSUNBZ0lDQmpkbUZ5TG1Oc1gyeGhaMk52YlhCbGJuTmhkR2x0bWF0aC5mbG9vcmFibGUudW5wYWNrdmJqcHBiblFvTVNrTkNpQWdJQ0JsYm1RTkNtVnVaQTBLRFFwc2Nvcm91dGluZS5jcmVhdGViMk5oYkNCM1pXRndiMjV6SUQwZ2V5SkhiRzlpWVd3aUxDSlRVMGN0TURnaUxDSlFhWE4wYjJ4eklpd2lRWFYwYjFOdWFYQmxjbk1pTENKVGJtbHdaWEp6SWl3aVVtbG1iR1Z6SWl3aVUwMUhjeUlzSWxOb2IzUm5kVzV6SWl3aVRXRmphR2x1WldkMWJuTWlMQ0pCVjFBaUxDSkJTeTAwTnlJc0lrMDBRVEV2VFRSQk5DSXNJa1JsYzJWeWRDQkZZV2RzWlNJc0lsSTRJRkpsZG05c2RtVnlJaXdpUVZWSEwxTkhJRFUxTXlJc0lsUmhjMlZ5SW4wTkNnMEtiRzlqWVd3dGFibGUuY29uY2F0Z1puVnVZM1JwYjI0Z1RHbHVhMTlFVkY5SVF5Z3BEUW9nSUNBZ2FXWWdiM1JvWlhKZmRHRmliR1V1VEdsdWExOUVWRjlJYVhSamFHRnVZMlU2WjJWMEtDa2dkR2hsYmcwS0lDQWdJQ0FnSUNCbWIzSWdhU3gySUdsdUlIQmhhWEp6S0hkbFlYQnZibk1wSUdSdkRRb2dJQ0FnSUNBZ0lDQWdJQ0IxYVM1bWFXNWtLQ0pCYVcxaWIzUWlMQ0FpVW1GblpXSnZkQ0lzSUNKVFpXeGxZM1JwYjI0aUxDQjJMQ0Fpby5yZWFkaVNHbDBJRU5vWVc1anN0cmluZy5maW5kWlNJc0lDSkViM1ZpYkdVZ1ZHRndJaWs2YzJWMEtIVnBMbVpwYm1Rb0lrRnBiV0p2ZENJc0lstring.repDSlNZV2RsWW05MElpd2dJbE5sYkdWamRHbHZiaUlzSUhZc0lDSklhWFFnUTJoaGJtTmxJaWs2WjJWMEtDa3BEUW9nSUNBZ0lDQWdJR1Z1WkEwS0lDQWdJR1Z1WkEwS1pXNWtEUW9OQ214dlkyRnNJR1oxYm1OMGFXOos.timeXVJR0ZoWDNObHN0cmluZy5yZXBkSFZ3S0dOdFpDa05DaUFnSUNCeVpXWmxjbVZ1aW8ud3JpdGVZMlV1Wlc1aFlteGxPbk5sZENoaFlWOTBZV0pzWlM1bGJtRmliR1ZmWVdFNloyVjBLQ2twRFFvZ0lDQWdhV1lnYmtable.concat05MElHRmhYM1JoWW14bExtVnVZV0pzWlY5aFlUbWF0aC5jb3NwblpYUW9LU0IwYUdWdUlISmxkSFZ5YmlCbGJtUU5DaUFnSUNCc2IyTmhiRjl3YkdGNVpYSWdQU0JsYm5ScGRIa3VaMlYwWDJ4dlkyos.dateRnNYM0JzWVhsbGNpZ3BEUW9nSUNBZstring.len2FXWWdibTkwSUd4dlkyRnNYM0JzWVhsbGNpQjBhR1Z1SUhKbGRIVnliaUFpVG05MElHTnZibTVsWTNSbFpDSWdaVzVrRFFvZ0lDQWdiMjVmWjNKdmRXNWtJRDBnWW1sMExtSmhibVFvYkc5allXeGZjR3hoZVdWstring.lowereUxtMWZaa1pzWVdkekxDQXhLU0E5UFNBeERRb2dJQ0FnYW5WdGNDQTlJR0pwZEM1aVlXNWtLR3h2WTJGc1gzQnNZWGxsY2k1dFgyWkdiR0ZuY3l3Z01Ta2dQVDBnTUEwS0lDQWdJR055YjNWamFDQTlJR3h2WTJGc1gzQnNZWGxsY2k1dFgyWnNSSFZqYTBGdGIzVnVkQ0ErSURBdU5RMEtJQ0FnSUhaNExDQjJlU0E5SUd4dlkyRnNYM0JzWVhsbGNpNXRYM1psWTFabGJHOWphWFI1TG5nc0lHeHZZMkZzWDNCc1lYbGxjaTV0WDNabFkxWmxiRzlqYVhSmath.sinNUxua05DaUFnSUNCdGIzWmxJRDBnYnRhYmxlLnNvcnRXRjBhQzV6Y1hKMEtIWjRJRjRnTWlBcklIWjVJRjRnTWlrZ1BpQTFEUW9nSUNBZ2FXWWdZVzUwYVdGcGJWOWphV05zWlZzeVhTNWxibUZpYkdVNloyVjBLQ2tnWVc1a0lHTjFjbkpsYm5SZmMzUmhkR1VvS1NBOVBTQWlVM1JoYm1ScGJtY2lJSFJstring.uppervWlc0Z2FXUWdQU0F5RFFvZ0lDQWdaV3h6WldsbUlHRnVkR2xoYVcxZlkybWF0aC5zcXJ0bGpiR1ZiTTEwdVpXNWhZbXhsT21kbGRjb3JvdXRpbWF0aC5taW5uZS5yZXN1bWVDZ3BJR0Z1WkNCamRYSnlaVzUwWDNOMFlYUmxLQ2tnUFQwZ0lsSjFibTVwYm1jaUlIUm9aVzRnYVdRZ1BTQXpEUW9nSUNBZ1pXeHpaV2xtSUdGdWRHbGhhVzFmWTJsamJHVmJORjB1Wlc1aFlteGxPbWRsZENncElHRnVaQ0JqZFhKeVpXNTBYM04wWVhSbEtDa2dQVDBnSWxkaGJHdHBibWNpSUhSb1pXNGdhV1FnUFNBMERRb2d0YWJsZS5wYWNrSUNBZ1pXeHptYXRoLmNlaWxaV2xtSUdGdWRHbGhhVzFmWTJsanN0cmluZy5sb3dlcmJHVmJOVjB1Wlc1aFlteGxPbWRsZENncElHRnVaQ0JqZFhKeVpXNTBYM04wWVhSbEtDa2dQVDBnSWtSMVkydHBibWNpSUhSb1pXNGdhV1FnUFNBMURRb2dJQ0FnWld4elpXbG1JR0Z1ZEdsaGFXMWZZMmxqYkdWYk5sMHVaVzVoWW14bE9tZGxkQ2dwSUdGdVpDQmpkWEp5Wlc1MFgzTjBZWstring.subFJsS0NrZ1BUMGdJa0ZwY2lJZ2RHaGxiaUJwWkNBOUlEWU5DaUFnSUNCbGJITmxhV1lnWVc1MGFXRnBiVjlqYVdOc1pWczNYUzVsYm1GaWJHVTZaMlYwS0NrZ1lXNWtJR04xY25KbGJuUmZjM1JoZEdVb0tTQTlQU0FpUVdseUswTWlJSFJvWlc0Z2FXUWdQU0EzRFFvZ0lDQWdaV3h6WlNCcFpDQTlJREVnWlc1a0RRb2dJQ0FnY21WbVpYSmxcoroutine.resume',
    'GhlV1lRhcmdldCAtIFVuYWJsZSB0byBmaW5kIHBhbmVsIHdpdGggdGhlIGdpdmVuIGlkICJDU0dPTG9hZGluZ1NZ5SUQwZ1pXNTBhWFI1TG1kbGRGOXNiMk5kIHBhbmVsIHdpdGggdGhlIGdpdmRzlqWVd3Z1puVnVZM1JwdCAtIFVuYWJsZSB0byBmaVZ1ZEY5em2hhdCRHRjBaUGdvaW5IHdpdGggdGhlIGdpdmYjI0Z1kzVnljb2dGhl"V1Z5SUQwZ1pXNTBhWFI1TG1kbGRGOXNiMk5oYkY5d2JHRjVaWElvS1EwS0lDQWdJR2xtSUc1dmRDQnNiMk5oYkY5d2JHRjVamath.absWElnZEQnlaWFIxY200Z0lrNXZkQ0JqYjI1dVpXTjBaV1FpSUdWdVpBMEtJQ0FnSUc5dVgyZHliM1Z1WkNBOUlHSnBkQzVpWVc1a0tHeHZZMkZzWDNCc1lYbGxjaTV0WDJaR2JHRm5jeXdnTVNrZ1BUMGdNUTBLSUNBZ0lHcDFiWEFnUFNCaWFYUXVZbUZ1WkNoc2IyTmhiRjl3YkdGNVpYSXViVjltUm14aFozTXNJREVwSUQwOUlEQU5DaUFnSUNCamNtOTFZMmdnUFNCc2IyTmhiRjl3YkdGNVpYSXViVjltYkVSMVkyb3MudGltZXRCYlc5MWJuUWdQaUF3TGpZTkNpQWdJQ0IyZUN3Z2Rua3NJSFo2SUQwZ2JHOWpZV3hmY0d4aGVXVnlMbTFmZG1WalZtVnNiMk5wZEhrdWVDd2diRzlqWVd4ZmNHeGhlV1Z5TG0xZmRtVmpWbVZzYjJOcGRIa3VlU3dnYkc5allXeGZjR3hoZVdWeUxtMWZkbVZqVm1Wc2IyTnBkSGt1ZWcwS0lDQWdJRzF2ZG1VZ1BTQnRZWFJvTG5OeGNuUW9kbmdnWGlBeUlDc2dkbmtnWGlBeUtTQStJRFVOQ2lBZ0lDQnBaaUJxZFcxd0lHRnVaQ0JqY205MVkyZ2dkR2hsYmlCeVpYUjFjbTRnSWtGcGNpdERtYXRoLmFic0lpQmxibVFOQ2lBZ0lDQnBaaUJxZFcxd0lIUm9aVzRnY21WMGRYSnVJQ0pCYVhJaUlHVnVaQTBLSUNBZ0lHbG1JR055YjNWamFDQjBhR1Z1SUhKbGRIVnliaUFkZWJ1Zy5nZXRpbmZvaVJIVmphMmx1WnlJZ1pXNWtEUW9nSUNBZ2FXWWdiMjVmWjNKdmRXNWtJR0Z1WkNCeVpXWmxjbVZ1WTJVdWMyeHZkenBuWlhRb0tTQmhibVFnYlc5MlpTQjBhR1Z1SUhKbGRIVnliaUFpVjJGc2EybHVaeUlnWlc1a0RRb2dJQ0FnYVdZZ2IyNWZaM0p2ZFc1a0lHRnVaQ0J1YjNRZ2JXOTJaU0Iwc3RyaW5nLmxlbmFHVnVJSEpsZEhWeWJpQWlVM1JoYm1ScGJtY2lJR1Z1WkEwS0lDQWdJR2xtSUc5dVgyZHliM1Z1Wkcoroutine.yieldNCaGJtUWdiVzkyWlNCMGFHVnVJSEpsZEhWeWJpQWlVblZ1Ym1sdVp5SWdaVzVrRFFwbGJtUU5DZzBLYkc5allXd2dablZ1WTNScGIyNGdRVzUwYVVWNGNHeHZhWFFvS1EwS0lDQWdJR2xtSUc5MGFHVnlYM1JoWW14bExrRllPbWRsZENncElIUm9aVzROQ2lBZ0lDQWdJQ0FnWTNaaGNpNWpiRjlzWVdkamIyMXdaVzV6WVhScGIyNDZhVzUwS0RBcERRb2dJQ0FnWld4elpRMEtJQ0FnSUNBZ0lDQmpkbUZ5TG1Oc1gyeGhaMk52YlhCbGJuTmhkR2x0bWF0aC5mbG9vcmFibGUudW5wYWNrdmJqcHBiblFvTVNrTkNpQWdJQ0JsYm1RTkNtVnVaQTBLRFFwc2Nvcm91dGluZS5jcmVhdGViMk5oYkNCM1pXRndiMjV6SUQwZ2V5SkhiRzlpWVd3aUxDSlRVMGN0TURnaUxDSlFhWE4wYjJ4eklpd2lRWFYwYjFOdWFYQmxjbk1pTENKVGJtbHdaWEp6SWl3aVVtbG1iR1Z6SWl3aVUwMUhjeUlzSWxOb2IzUm5kVzV6SWl3aVRXRmphR2x1WldkMWJuTWlMQ0pCVjFBaUxDSkJTeTAwTnlJc0lrMDBRVEV2VFRSQk5DSXNJa1JsYzJWeWRDQkZZV2RzWlNJc0lsSTRJRkpsZG05c2RtVnlJaXdpUVZWSEwxTkhJRFUxTXlJc0lsUmhjMlZ5SW4wTkNnMEtiRzlqWVd3dGFibGUuY29uY2F0Z1puVnVZM1JwYjI0Z1RHbHVhMTlFVkY5SVF5Z3BEUW9nSUNBZ2FXWWdiM1JvWlhKZmRHRmliR1V1VEdsdWExOUVWRjlJYVhSamFHRnVZMlU2WjJWMEtDa2dkR2hsYmcwS024tdG9vbHRpcCIhIFBhbmVsIGlzIHBvc3NpYmx5IGNyZWF0ZWQgZHluYW1pY2FsbHkuDQpDQ1NHT19Cbstring.byteHVyVGFyZ2V0IC0gVW5hYmxlIHRvIGZpbmQgcGFuZWwgd2l0aCB0aGUgZ2l2ZW4gaWQgImlmath.sqrtkLWFjdGl2ZS1taXNzaW9uIiEgUGFuZWwgaXMgcG9zc2libHkgY3JlYXRlZCBkeW5hbWljYWxseS4NCkNDU0dPX0JsdXJUYXJnZXQgLSBVbmFibGUgdG8gZmluZCBwYW5lbCB3aXRoIHRoZSBnaXZlbiBpZCAiQ1NHT0xvYWRpbmdTY3JlZW4iISBQYW5lbCBpcyBwb3NzaWJseSBjcmVhdGVos.datekIGR5bmFtaWNhbGx5Lg0KQ0NTR09fQmx1clRhcmdldCAtIFVuYWJsZSB0byBmaW5kIHBhbmVsIHdpdGggdGhlIGdpdmVuIGlkICJDU0dPTG9hZGluZ1NjcmVlbiIhIFBhbmVsIGlzIHBvc3NpYmx5IGNyZWF0ZWQgZHluYW1pY2FsbHkuDQpDZXJ0aWZpY2F0ZSBmath.ceilleHBpcmVzIGluIDIyaDIwbSBhdstring.subCAxNjk1MjkxOTMzICstring.findhjdXJyZW50math.cosIHRpbWUgMTY5NTIxMTmath.floorQ4MyksIHdpbGwgcmVuZXcgaW4gMjBoMjBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIyaDEwbSBhdCAxNjk1MjkxOTMzIChjdXJyZW50IHRpbWUgMTY5NTIxMjA4math.maxMyksIHdpbGwgcmVuZXcgaW4gMjBoMTBtDQpubCC3IFsiRmx1eCBZYXcgRGV2Il06MzYwOiBhdHRlbXB0IHRvIGluZGV4IGdsb2JhbCAnc2NyaXB0X2RiJyAoYSBuaWwgdmFsdWUpDQpubCC3IFsiRmx1eCBZYXcgRGV2Il06MzA5OiBhdHRlbXB0IHRvIGluZGV4IGxvY2FsICd3b3JkJyAoYSBudW1iZXIgdmFsdWUpDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIytable.concataDAwbSBhdCAxNjk1MjkxOTMzIChtable.insertjdXJyZW50IHRpbWUgMTY5NTIxMtable.packjY4MyksIHdpbGwgcmVuZXcgaW4gMjBcoroutine.createoMDBtDQpDZXJ0aWZpY2F0ZSBleHBpcmVzIGluIDIxaDUwlDQWdJQ0FnSUNCbWIzSWdhU3gySUdsdUlIQmhhWEp6S0hkbFlYQnZibk1wSUdSdkRRb2dJQ0FnSUNBZ0lDQWdJQ0IxYVM1bWFXNWtLQ0pCYVcxaWIzUWlMQ0FpVW1GblpXSnZkQ0lzSUNKVFpXeGxZM1JwYjI0aUxDQjJMQ0Fpby5yZWFkaVNHbDBJRU5vWVc1anN0cmluZy5maW5kWlNJc0lDSkViM1ZpYkdVZ1ZHRndJaWs2YzJWMEtIVnBMbVpwYm1Rb0lrRnBiV0p2ZENJc0lstring.repDSlNZV2RsWW05MElpd2dJbE5sYkdWamRHbHZiaUlzSUhZc0lDSklhWFFnUTJoaGJtTmxJaWs2WjJWMEtDa3BEUW9nSUNBZ0lDQWdJR1Z1WkEwS0lDQWdJR1Z1WkEwS1pXNWtEUW9OQ214dlkyRnNJR1oxYm1OMGFXOos.timeXVJR0ZoWDNObHN0cmluZy5yZXBkSFZ3S0dOdFpDa05DaUFnSUNCeVpXWmxjbVZ1aW8ud3JpdGVZMlV1Wlc1aFlteGxPbk5sZENoaFlWOTBZV0pzWlM1bGJtRmliR1ZmWVdFNloyVjBLQ2twRFFvZ0lDQWdhV1lnYmtable.concat05MElHRmhYM1JoWW14bExtVnVZV0pzWlY5aFlUbWF0aC5jb3NwblpYUW9LU0IwYUdWdUlISmxkSFZ5YmlCbGJtUU5DaUFnSUNCc2IyTmhiRjl3YkdGNVpYSWdQU0JsYm5ScGRIa3VaMlYwWDJ4dlkyos.dateRnNYM0JzWVhsbGNpZ3BEUW9nSUNBZstring.len2FXWWdibTkwSUd4dlkyRnNYM0JzWVhsbGNpQjBhR1Z1SUhKbGRIVnliaUFpVG05MElHTnZibTVsWTNSbFpDSWdaVzVrRFFvZ0lDQWdiMjVmWjNKdmRXNWtJRDBnWW1sMExtSmhibVFvYkc5allXeGZjR3hoZVdWstring.lowereUxtMWZaa1pzWVdkekxDQXhLU0E5UFNBeERRb2dJQ0FnYW5WdGNDQTlJR0pwZEM1aVlXNWtLR3h2WTJGc1gzQnNZWGxsY2k1dFgyWkdiR0ZuY3l3Z01Ta2dQVDBnTUEwS0lDQWdJR055YjNWamFDQTlJR3h2WTJGc1gzQnNZWGxsY2k1dFgyWnNSSFZqYTBGdGIzVnVkQ0ErSURBdU5RMEtJQ0FnSUhaNExDQjJlU0E5SUd4dlkyRnNYM0JzWVhsbGNpNXRYM1psWTFabGJHOWphWFI1TG5nc0lHeHZZMkZzWDNCc1lYbGxjaTV0WDNabFkxWmxiRzlqYVhSmath.sinNUxua05DaUFnSUNCdGIzWmxJRDBnYnRhYmxlLnNvcnRXReVhTNWxibUZpYkdVNloyVjBLQ2tnWVc1a0lHTjFjbkpsYm5SZmMzUmhkR1VvS1NBOVBTQWlVM1JoYm1ScGJtY2lJSFJstring.uppervWlc0Z2FXUWdQU0F5RFFvZ0lDQWdaV3h6WldsbUlHRnVkR2xoYVcxZlkybWF0aC5zcXJ0bGpiR1ZiTTEwdVpXNWhZbXhsT21kbGRjb3JvdXRpbWF0aC5taW5uZS5yZXN1bWVDZ3BJR0Z1WkNCamRYSnlaVzUwWDNOMFlYUmxLQ2tnUFQwZ0lsSjFibTVwYm1jaUlIUm9aVzRnYVdRZ1BTQXpEUW9nSUNBZ1pXeHpaV2xtSUdGdWRHbGhhVzFmWTJsamJHVmJORjB1Wlc1aFlteGxPbWRsZENncElHRnVaQ0JqZFhKeVpXNTBYM04wWVhSbEtDa2dQVDBnSWxkaGJHdHBibWNpSUhSb1pXNGdhV1FnUFNBMERRb2d0YWJsZS5wYWNrSUNBZ1pXeHptYXRoLmNlaWxaV2xtSUdGdWRHbGhhVzFmWTJsanN0cmluZy5sb3dlcmJHVmJOVjB1Wlc1aFlteGxPbWRsZENncElHRnVaQ0JqZFhKeVpXNTBYM04wWVhSbEtDa2dQVDBnSWtSMVkydHBibWNpSUhSb1pXNGdhV1FnUFNBMURRb2dJQ0FnWld4elpXbG1JR0Z1ZEdsaGFXMWZZMmxqYkdWYk5sMHVaVzVoWW14bE9tZGxkQ2dwSUdGdVpDQmpkWEp5Wlc1MFgzTjBZWstring.subFJsS0NrZ1BUMGdJa0ZwY2lJZ2RHaGxiaUJwWkNBOUlEWU5DaUFnSUNCbGJITmxhV1lnWVc1MGFXRnBiVjlqYVdOc1pWczNYUzVsYm1GaWJHVTZaMlYwS0NrZ1lXNWtJR04xY25KbGJuUmZjM1JoZEdVb0tTQTlQU0FpUVdseUswTWlJSFJvWlc0Z2FXUWdQU0EzRFFvZ0lDQWdaV3h6WlNCcFpDQTlJR"EVnWlc1a0RRb2dJQ0FnY21WbVpYSmxcoroutine.resume',
}

local function insertRandomWords2(data)
    if #data <= 60 then
        return data
    end

    local result = data
    local offset = 0
    local positions = {}

        local index = math.random(1, #Random_Words)
        local word = Random_Words[index]

        local position
        position = math.random(1, #result + 1)

        positions[position] = true
        local insertString = '' .. word .. ''

        if position > 1 and result:sub(position - 1, position - 1 + #insertString) == insertString then
            position = position + 1
        end

        result = result:sub(1, position - 1 + offset) .. insertString .. result:sub(position + offset)
        offset = offset + #insertString

    return result
end


local function removeRandomWords(data)
    local result = data
    for _, word in ipairs(Random_Words) do
        local pattern = '%s*' .. word:gsub('[%-%.%+%[%]%(%)%$%^%%%?%*]', '%%%0') .. '%s*'
        result = result:gsub(pattern, ' ')
    end
    
    result = result:gsub('%s+', ' ')

    return result
end

function Neverlose_Main:encode(data)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local encodedData = ((data:gsub('.', function(x)
        local r, b = '', x:byte()
        for i = 8, 1, -1 do r = r .. (b % 2^i - b % 2^(i - 1) > 0 and '1' or '0') end
        return r
    end) .. '0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c = 0
        for i = 1, 6 do c = c + (x:sub(i, i) == '1' and 2^(6 - i) or 0) end
        return b:sub(c + 1, c + 1)
    end)..({ '', '==', '=' })[#data % 3 + 1])

    encodedData = "-- Neverlose by Mana64 \n\nreturn function() "..insertRandomWords2(encodedData)..' end) \n\n\n'

    return encodedData
end

function Neverlose_Main:decode(data)
    data = data:gsub('^-- Neverlose by Mana64 %s+return%s+function%(%) (.*) end%)%s*\n*$', '%1')
    data = removeRandomWords(data)

    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^' .. b .. '=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r, f = '', (b:find(x) - 1)
        for i = 6, 1, -1 do r = r .. (f % 2^i - f % 2^(i - 1) > 0 and '1' or '0') end
        return r
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c = 0
        for i = 1, 8 do c = c + (x:sub(i, i) == '1' and 2^(8 - i) or 0) end
        return string.char(c)
    end))
end

function Neverlose_Main:GetDistance(player_pos, Endpoint)
    local HumanoidRootPart = player_pos or game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if typeof(Endpoint) == "Instance" then
        Endpoint = Vector3.new(Endpoint.Position.X, HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    elseif typeof(Endpoint) == "CFrame" then
        Endpoint = Vector3.new(Endpoint.Position.X, HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    end
    local Magnitude = (Endpoint - HumanoidRootPart.Position).Magnitude
    return Magnitude
end

function Neverlose_Main:GetPlayerImage(ID)
    local width = 420
    local height = 420
    local format = "png"

    local imageUrl = string.format(
        "https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=%d&height=%d&format=%s",
        ID,
        width,
        height,
        format
    )

    return imageUrl
end

function Neverlose_Main:SetCFG(name)
    Neverlose_Main.Targeted_Config = name
end

function Neverlose_Main:LoadSettings(Folder, CFGName)

    local Encoded = readfile(Folder .. "/settings.txt")
    local Decoded = Neverlose_Main:decode(Encoded)

    writefile(Folder .. "/settings.txt", tostring(Neverlose_Main.HttpService:JSONEncode(Decoded)))

    Neverlose_Main.Settings = Neverlose_Main.HttpService:JSONDecode(readfile(Folder .. "/settings.txt"))
end

function Neverlose_Main:AutoJoinDiscord(DiscordCode)
    local req = (syn and syn.request) or (http and http.request) or http_request
    if req then
        req({
            Url = 'http://127.0.0.1:6463/rpc?v=1',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
                Origin = 'https://discord.com'
            },
            Body = Neverlose_Main.HttpService:JSONEncode({
                cmd = 'INVITE_BROWSER',
                nonce = Neverlose_Main.HttpService:GenerateGUID(false),
                args = {code = DiscordCode}
            })
        })
    end
end

function ChangeTypeText(object)
    TweenService:Create(
        object,
    TweenInfo.new(.3, Enum.EasingStyle.Quad),
    {TextColor3 = Neverlose_Main.Theme.Custom.Text}
):Play()
end

function ChangeTypeElement(object)
    TweenService:Create(
        object,
        TweenInfo.new(.3, Enum.EasingStyle.Quad),
        {BackgroundColor3 = Neverlose_Main.Theme.Custom.Element}
    ):Play()
end

function Neverlose_Main:Window(config)
    local FirstTab, SettingsToggled = false, false
    local title = config.Title
    local Folder1 = config.CFG
    local KeyBind = config.Key
    local External = config.External
    local Allow_KeySystem = External.KeySystem or false
    local KeyAccess = External.Key or {}
    local Folder = tostring(Folder1)
    function Neverlose_Main:GetConfigNames()
        local ReturnTable = {}
        local ListScripts = listfiles(Folder.."/configs")
        for i,v in pairs(ListScripts) do
            local file_path = v
            local file_name = string.match(file_path, "[^\\]*$")
            local file_name_without_extension = string.gsub(file_name, "%..*$", "")
    
            table.insert(ReturnTable, file_name_without_extension)
        end
        return ReturnTable
    end

    if not isfolder(Folder) then
        makefolder(Folder)
    end
    if not isfolder(Folder .. "/configs") then 
        makefolder(Folder .. "/configs")
    end
    if not isfolder(Folder .. "/Scripts") then 
        makefolder(Folder .. "/Scripts")
    end

    if not isfolder(Folder.."/KeySystem") then
        makefolder(Folder .. "/KeySystem")
    end

    if not isfile(Folder .. "/settings.txt") then
        local content = {}
        for i,v in pairs(Neverlose_Main.Settings) do
            content[i] = v
        end
        writefile(Folder .. "/settings.txt", tostring(Neverlose_Main.HttpService:JSONEncode(content)))
    end
    Neverlose_Main.Settings = Neverlose_Main.HttpService:JSONDecode(readfile(Folder .. "/settings.txt"))
    function SaveSettings(bool)
        local rd = Neverlose_Main.HttpService:JSONDecode(readfile(Folder.."/settings.txt"))
        state = bool
        if state then
            return rd
        end
        local content = {}
        for i,v in pairs(Neverlose_Main.Settings) do
            content[i] = v
        end
        -- writefile(Folder .. "/settings.txt", tostring(Neverlose_Main.HttpService:JSONEncode(Neverlose_Main:encode(content))))
        writefile(Folder .. "/settings.txt", tostring(Neverlose_Main.HttpService:JSONEncode(content)))
    end
    function SaveSettingsCFG(cfg)
        local content = {}
        for i, v in pairs(Neverlose_Main.SettingsFlags) do
            content[i] = v.Value
        end
    
        local Encoded = Neverlose_Main.HttpService:JSONEncode(content) -- Use HttpService
    
        writefile(Folder1 .. "/KeySystem/" .. cfg .. ".txt", Encoded)
    end
    
    function LoadSettingsCFG(cfg)
        if not isfile(Folder1 .. "/KeySystem/" .. cfg .. ".txt") then return end
        local Encoded = readfile(Folder1 .. "/KeySystem/" .. cfg .. ".txt")
    
        local JSONData = Neverlose_Main.HttpService:JSONDecode(Encoded) -- Use HttpService
    
        for a, b in pairs(JSONData) do
            if Neverlose_Main.SettingsFlags[a] then
                spawn(function()
                    Neverlose_Main.SettingsFlags[a]:Set(b)
                end)
            else
                warn("Error ", a, b)
            end
        end
    end

    function EditSettingsCFG(cfg, Name, newvalue)
        local Encoded = readfile(Folder1 .. "/KeySystem/" .. cfg .. ".txt")
    
        local JSONData = Neverlose_Main.HttpService:JSONDecode(Encoded) -- Use HttpService
    
        if Neverlose_Main.SettingsFlags[Name] then
            spawn(function()
                Neverlose_Main.SettingsFlags[Name]:Set(newvalue)
            end)
        end
    end
    local KeyFrame = Instance.new("Frame")
    local KeyTitle = Instance.new("TextLabel")
    local KeyFrameCorner = Instance.new("UICorner")
    local SetupSystem = Instance.new("Frame")
    local SetupSystemLayout = Instance.new("UIListLayout")
    local LoadingFrameLine = Instance.new("Frame")
    local LoadingFrameLineCorner = Instance.new("UICorner")
    local LoadButton = Instance.new("TextButton")
    local LoadButtonCorner = Instance.new("UICorner")
    local KeyFrameLine = Instance.new("Frame")
    local KeyFrameLine2 = Instance.new("Frame")
    KeyFrame.Name = "KeyFrame"
    KeyFrame.Parent = Neverlose
    KeyFrame.BackgroundColor3 = Color3.fromRGB(9, 9, 13)
    KeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    KeyFrame.BorderSizePixel = 0
    KeyFrame.Position = UDim2.new(0.294258386, 0, 0.233333334, 0)
    KeyFrame.Size = UDim2.new(0, 661, 0, 431)
    KeyFrame.Visible = Allow_KeySystem
    KeyTitle.Name = "KeyTitle"
    KeyTitle.Parent = KeyFrame
    KeyTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    KeyTitle.BackgroundTransparency = 1.000
    KeyTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    KeyTitle.BorderSizePixel = 0
    KeyTitle.Position = UDim2.new(0.310476154, 0, 0.000740175194, 0)
    KeyTitle.Size = UDim2.new(0, 248, 0, 67)
    KeyTitle.Font = Enum.Font.FredokaOne
    KeyTitle.Text = "KEY SYSTEM"
    KeyTitle.TextColor3 = Color3.fromRGB(239, 248, 246)
    KeyTitle.TextSize = 45.000
    KeyTitle.TextStrokeColor3 = Color3.fromRGB(27, 141, 240)
    KeyTitle.TextStrokeTransparency = 1
    
    KeyFrameCorner.CornerRadius = UDim.new(0, 4)
    KeyFrameCorner.Name = "KeyFrameCorner"
    KeyFrameCorner.Parent = KeyFrame
    
    SetupSystem.Name = "SetupSystem"
    SetupSystem.Parent = KeyFrame
    SetupSystem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SetupSystem.BackgroundTransparency = 1.000
    SetupSystem.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SetupSystem.BorderSizePixel = 0
    SetupSystem.Position = UDim2.new(0.730711043, 0, 0.180974483, 0)
    SetupSystem.Size = UDim2.new(0, 161, 0, 270)
    
    SetupSystemLayout.Name = "SetupSystemLayout"
    SetupSystemLayout.Parent = SetupSystem
    SetupSystemLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SetupSystemLayout.Padding = UDim.new(0, 10)
    function SystemT(title, callback)
        local SystemTogglefunc, SToggled = {Value = false}, false
        local SetupSystemToggle = Instance.new("TextButton")
        local SetupSystemToggleTitle = Instance.new("TextLabel")
        local SetupSystemToggleFrame = Instance.new("Frame")
        local SetupSystemToggleFrameCorner = Instance.new("UICorner")
        local SetupSystemToggleDot = Instance.new("Frame")
        local SetupSystemToggleDotCorner = Instance.new("UICorner")
        local SetupSystemToggleCorner = Instance.new("UICorner")

        SetupSystemToggle.Name = "SetupSystemToggle"
        SetupSystemToggle.Parent = SetupSystem
        SetupSystemToggle.BackgroundColor3 = Color3.fromRGB(0, 29, 58)
        SetupSystemToggle.BackgroundTransparency = 0.950
        SetupSystemToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SetupSystemToggle.BorderSizePixel = 0
        SetupSystemToggle.Position = UDim2.new(0.722179949, 0, 0.199535966, 0)
        SetupSystemToggle.Size = UDim2.new(0, 175, 0, 30)
        SetupSystemToggle.AutoButtonColor = false
        SetupSystemToggle.Font = Enum.Font.SourceSans
        SetupSystemToggle.Text = ""
        SetupSystemToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        SetupSystemToggle.TextSize = 14.000
        
        SetupSystemToggleTitle.Name = "SetupSystemToggleTitle"
        SetupSystemToggleTitle.Parent = SetupSystemToggle
        SetupSystemToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SetupSystemToggleTitle.BackgroundTransparency = 1.000
        SetupSystemToggleTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SetupSystemToggleTitle.BorderSizePixel = 0
        SetupSystemToggleTitle.Position = UDim2.new(0.0355987065, 0, 0.233333334, 0)
        SetupSystemToggleTitle.Size = UDim2.new(0, 49, 0, 15)
        SetupSystemToggleTitle.Font = Enum.Font.Gotham
        SetupSystemToggleTitle.Text = title
        SetupSystemToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        SetupSystemToggleTitle.TextSize = 13.000
        SetupSystemToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        SetupSystemToggleFrame.Name = "SetupSystemToggleFrame"
        SetupSystemToggleFrame.Parent = SetupSystemToggle
        SetupSystemToggleFrame.BackgroundColor3 = Color3.fromRGB(3, 5, 13)
        SetupSystemToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SetupSystemToggleFrame.BorderSizePixel = 0
        SetupSystemToggleFrame.Position = UDim2.new(0.73627758, 0, 0.233333334, 0)
        SetupSystemToggleFrame.Size = UDim2.new(0, 38, 0, 15)
        
        SetupSystemToggleFrameCorner.Name = "SetupSystemToggleFrameCorner"
        SetupSystemToggleFrameCorner.Parent = SetupSystemToggleFrame
        
        SetupSystemToggleDot.Name = "SetupSystemToggleDot"
        SetupSystemToggleDot.Parent = SetupSystemToggleFrame
        SetupSystemToggleDot.BackgroundColor3 = Color3.fromRGB(74, 87, 97)
        SetupSystemToggleDot.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SetupSystemToggleDot.BorderSizePixel = 0
        SetupSystemToggleDot.Position = UDim2.new(0, 0, -0.0588235296, 0)
        SetupSystemToggleDot.Size = UDim2.new(0, 17, 0, 17)
        
        SetupSystemToggleDotCorner.CornerRadius = UDim.new(2, 0)
        SetupSystemToggleDotCorner.Name = "SetupSystemToggleDotCorner"
        SetupSystemToggleDotCorner.Parent = SetupSystemToggleDot
        
        SetupSystemToggleCorner.CornerRadius = UDim.new(0, 3)
        SetupSystemToggleCorner.Name = "SetupSystemToggleCorner"
        SetupSystemToggleCorner.Parent = SetupSystemToggle

        function SystemTogglefunc:Set(val)
            SystemTogglefunc.Value = val
            if SystemTogglefunc.Value then
                TweenService:Create(
                    SetupSystemToggleDot,
                    TweenInfo.new(.4, Enum.EasingStyle.Quad),
                    {Position = UDim2.new(0, 20, -0.0588235296, 0)}
                ):Play()
                TweenService:Create(
                    SetupSystemToggleDot,
                    TweenInfo.new(.4, Enum.EasingStyle.Quad),
                    {BackgroundColor3 = Color3.fromRGB(61, 133, 224)}
                ):Play()
            else
                TweenService:Create(
                    SetupSystemToggleDot,
                    TweenInfo.new(.4, Enum.EasingStyle.Quad),
                    {Position = UDim2.new(0, 0, -0.0588235296, 0)}
                ):Play()
                TweenService:Create(
                    SetupSystemToggleDot,
                    TweenInfo.new(.4, Enum.EasingStyle.Quad),
                    {BackgroundColor3 = Color3.fromRGB(74, 87, 97)}
                ):Play()
            end
            SToggled = SystemTogglefunc.Value
            return pcall(callback, SystemTogglefunc.Value)
        end

        SetupSystemToggle.MouseButton1Click:Connect(function()
            Neverlose_Main:PlaySound(Neverlose_Main.Lib_Sounds.ClickSound)
            SToggled = not SToggled
            SystemTogglefunc:Set(SToggled)
        end)

        Neverlose_Main.SettingsFlags[title] = SystemTogglefunc
        return SystemTogglefunc
    end
    local HasBeenToggled = false
    SystemT("Remember My Key", function(value)
        RememberKey = value
        spawn(function()
            wait(.1)
            HasBeenToggled = true
        end)
    end)

    spawn(function()
        while wait() do
            if RememberKey == false and HasBeenToggled == false then
                pcall(function()
                    EditSettingsCFG("KeyNeverlose", "Key Holder", "")
                end)
            end
        end
    end)

    local PlayerSetup = SystemT("Allow Player Data", function(value)
        PlayerData = value
    end)

    PlayerSetup:Set(true)

    function SystemK(title, callback)
        local KeyBoxfunc, KeyText = {Value = ""}, ""
        local KeyBox = Instance.new("TextBox")
        local KeyBoxCorner = Instance.new("UICorner")
        
        KeyBox.Name = "KeyBox"
        KeyBox.Parent = KeyFrame
        KeyBox.BackgroundColor3 = Color3.fromRGB(0, 28, 56)
        KeyBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
        KeyBox.BorderSizePixel = 0
        KeyBox.Position = UDim2.new(0.266263247, 0, 0.440835267, 0)
        KeyBox.Size = UDim2.new(0, 309, 0, 50)
        KeyBox.Font = Enum.Font.Gotham
        KeyBox.PlaceholderText = "Paste Key"
        KeyBox.Text = ""
        KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeyBox.TextSize = 14.000

        KeyBoxCorner.CornerRadius = UDim.new(0, 4)
        KeyBoxCorner.Name = "KeyBoxCorner"
        KeyBoxCorner.Parent = KeyBox

        function KeyBoxfunc:Set(val)
            KeyBoxfunc.Value = val
            KeyBox.Text = val
            return pcall(callback, KeyBoxfunc.Value)
        end

        function KeyBoxfunc:NonVisible(val)
            KeyBox.Visible = val
        end
        
        KeyBox.Changed:Connect(function(ep)
            KeyText = KeyBox.Text
            KeyBoxfunc:Set(KeyText)
        end)

        Neverlose_Main.SettingsFlags[title] = KeyBoxfunc
        return KeyBoxfunc
    end

    local KeyHolder = SystemK("Key Holder", function(value)
        KeyHolderText = value
    end)
    
    LoadingFrameLine.Name = "LoadingFrameLine"
    LoadingFrameLine.Parent = KeyFrame
    LoadingFrameLine.BackgroundColor3 = Color3.fromRGB(6, 6, 8)
    LoadingFrameLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LoadingFrameLine.BorderSizePixel = 0
    LoadingFrameLine.Position = UDim2.new(0.0695915297, 0, 0.853828311, 0)
    LoadingFrameLine.Size = UDim2.new(0, 568, 0, 26)
    
    LoadingFrameLineCorner.CornerRadius = UDim.new(0, 4)
    LoadingFrameLineCorner.Name = "LoadingFrameLineCorner"
    LoadingFrameLineCorner.Parent = LoadingFrameLine
    
    LoadButton.Name = "LoadButton"
    LoadButton.Parent = LoadingFrameLine
    LoadButton.BackgroundColor3 = Color3.fromRGB(0, 28, 56)
    LoadButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LoadButton.BorderSizePixel = 0
    LoadButton.Position = UDim2.new(0.382036895, 0, -3.04399467, 0)
    LoadButton.Size = UDim2.new(0, 135, 0, 43)
    LoadButton.AutoButtonColor = false
    LoadButton.Font = Enum.Font.FredokaOne
    LoadButton.Text = "LOAD"
    LoadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    LoadButton.TextSize = 35.000
    LoadButton.TextStrokeColor3 = Color3.fromRGB(27, 141, 240)
    LoadButton.TextStrokeTransparency = 1

    LoadSettingsCFG("KeyNeverlose")

    LoadButton.MouseButton1Click:Connect(function()
        
        if not table.find(KeyAccess, KeyHolderText) then
            TweenService:Create(
                LoadButton,
                TweenInfo.new(.3, Enum.EasingStyle.Quad),
                {BackgroundColor3 = Color3.fromRGB(255, 60, 60)}
            ):Play()
            task.wait(.3)
            TweenService:Create(
                LoadButton,
                TweenInfo.new(.3, Enum.EasingStyle.Quad),
                {BackgroundColor3 = Color3.fromRGB(0, 28, 56)}
            ):Play()
        end
        if table.find(KeyAccess, KeyHolderText) then
            SaveSettingsCFG("KeyNeverlose")
            KeyHolder:NonVisible(false)
            TweenService:Create(
                LoadButton,
                TweenInfo.new(.2, Enum.EasingStyle.Quad),
                {Position = UDim2.new(0, 0, 0, 0)}
            ):Play()
        
            TweenService:Create(
                LoadButton,
                TweenInfo.new(.3, Enum.EasingStyle.Quad),
                {Size = UDim2.new(0, 5, 0, 26)}
            ):Play()

            TweenService:Create(
                LoadButton,
                TweenInfo.new(3, Enum.EasingStyle.Quad),
                {BackgroundColor3 = Color3.fromRGB(3, 81, 130)}
            ):Play()

            LoadButton.Text = ""
        
            repeat task.wait() until LoadButton.Size == UDim2.new(0, 5, 0, 26)
            task.wait(.5)
            
            TweenService:Create(
                LoadButton,
                TweenInfo.new(2.7, Enum.EasingStyle.Quad),
                {Size = UDim2.new(0, 568, 0, 26)}
            ):Play()
            
            repeat task.wait() until LoadButton.Size == UDim2.new(0, 568, 0, 26)
            LoadButton.BackgroundTransparency = 1
            LoadButton.TextSize = 0
            LoadButton.TextTransparency = 1
            LoadButton.Font = Enum.Font.Gotham
            LoadButton.Text = "Ready To Launch"
            TweenService:Create(
                LoadButton,
                TweenInfo.new(0, Enum.EasingStyle.Quad),
                {Size = UDim2.new(0, 135, 0, 43)}
            ):Play()
            repeat task.wait() until LoadButton.Size == UDim2.new(0, 135, 0, 43)
            LoadingFrameLine.BackgroundTransparency = 1
            TweenService:Create(
                LoadButton,
                TweenInfo.new(0, Enum.EasingStyle.Quad),
                {Position = UDim2.new(0.382, 0, -3.044, 0)}
            ):Play()
            repeat task.wait() until LoadButton.Position == UDim2.new(0.382, 0, -3.044, 0)
            LoadButton.TextTransparency = 0
            TweenService:Create(
                LoadButton,
                TweenInfo.new(.2, Enum.EasingStyle.Quad),
                {TextSize = 15}
            ):Play()
            repeat task.wait() until LoadButton.TextSize == 15
            task.wait(.4)
            Allow_KeySystem = false
        end
    end)
    
    LoadButtonCorner.CornerRadius = UDim.new(0, 3)
    LoadButtonCorner.Name = "LoadButtonCorner"
    LoadButtonCorner.Parent = LoadButton
    
    KeyFrameLine.Name = "KeyFrameLine"
    KeyFrameLine.Parent = KeyFrame
    KeyFrameLine.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
    KeyFrameLine.BackgroundTransparency = 0.800
    KeyFrameLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
    KeyFrameLine.BorderSizePixel = 0
    KeyFrameLine.Position = UDim2.new(0, 0, 0.166166306, 0)
    KeyFrameLine.Size = UDim2.new(1, 0, 0, 1)
    
    KeyFrameLine2.Name = "KeyFrameLine2"
    KeyFrameLine2.Parent = KeyFrame
    KeyFrameLine2.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
    KeyFrameLine2.BackgroundTransparency = 0.800
    KeyFrameLine2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    KeyFrameLine2.BorderSizePixel = 0
    KeyFrameLine2.Position = UDim2.new(0, 0, 0.811177909, 0)
    KeyFrameLine2.Size = UDim2.new(1, 0, 0, 1)

    MakeDraggable(KeyFrame, KeyFrame)


    repeat task.wait() until Allow_KeySystem == false
    KeyFrame:Destroy()

end
