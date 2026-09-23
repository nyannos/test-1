--[[
  nyann os — Script Tổng Hợp (full list)
  Menu: UiRedzV5
  Chọn script → chạy code (load menu script đó)
]]

local redzlib = loadstring(game:HttpGet(
	"https://raw.githubusercontent.com/daucobonhi/UiRedzV5/refs/heads/main/DemoUi.lua"
))()

local Window = redzlib:MakeWindow({
	Title = "nyann os | Tổng hợp",
	SubTitle = "by real_@nyannnokonoko",
	SaveFolder = "NyannHubTongHop",
})

pcall(function()
	Window:AddMinimizeButton({
		Button = {
			Image = "rbxassetid://94678517792779",
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(72, 72),
		},
		Corner = { CornerRadius = UDim.new(0.25, 0) },
	})
end)

local function Notify(title, content, dur)
	pcall(function()
		if Window.Notify then
			Window:Notify({
				Title = title or "nyann os",
				Content = content or "",
				Duration = dur or 4,
			})
		else
			print("[", title, "]", content)
		end
	end)
end

local function RunCode(name, code)
	Notify("Loading...", name, 3)
	local ok, err = pcall(function()
		assert(type(code) == "string" and #code > 5, "empty code")
		local fn, compileErr = loadstring(code)
		if not fn then
			error(compileErr or "compile fail")
		end
		fn()
	end)
	if ok then
		Notify("OK", name .. " loaded!", 4)
	else
		Notify("Error", tostring(err):sub(1, 120), 6)
		warn("[nyann hub]", name, err)
	end
end

local ScriptRegistry = {}

local function AddRun(tab, name, code)
	table.insert(ScriptRegistry, { Name = name, Code = code })
	tab:AddButton({
		Name = name,
		Callback = function()
			task.spawn(RunCode, name, code)
		end,
	})
end

local TabInfo = Window:MakeTab({ "Info", "info" })
local TabSearch = Window:MakeTab({ "Search", "search" })
local TabNY = Window:MakeTab({ "nyann os", "box"})
local TabBF = Window:MakeTab({ "Blox Fruits", "swords" })
local TabGag2 = Window:MakeTab({ "Gag 2", "sprout" })
local TabTsb = Window:MakeTab({ "TSB", "crosshair" })
local TabKL = Window:MakeTab({ "King Legacy", "waves" })
local TabEvade = Window:MakeTab({ "Evade", "move" })
local TabSailor = Window:MakeTab({ "Sailor Piece", "anchor" })
local TabHS = Window:MakeTab({ "Haze Sea", "droplet" })
local TabMM2 = Window:MakeTab({ "MM2", "skull" })
local TabDR = Window:MakeTab({ "Dead Rails", "train" })
local TabGH = Window:MakeTab({ "Garden Horizon", "flower" })
local TabSTAE = Window:MakeTab({ "Steal a egg", "egg" })
local TabFixLag = Window:MakeTab({ "Fix lag", "gauge" })
local TabTools = Window:MakeTab({ "Settings", "settings" })

TabNY:AddSection("nyann os")
AddRun(TabNY, "nyann os [Tiếng Anh]", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/nyannos/Dev-nyannos/refs/heads/main/nyannos", true))()
]])
AddRun(TabNY, "nyann os [Tiếng Việt]", [[
getgenv().TIENG_VIET = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/nyannos/test-1/refs/heads/main/nyannos-tv"))()(Settings)
]])
AddRun(TabNY, "nyann os Steal a egg", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/nyannos/Dev-nyannos/refs/heads/main/StealAnEgg"))() 
]])

TabBF:AddSection("Fram")
AddRun(TabBF, "Redz Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua"))()
]])
AddRun(TabBF, "Tay Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhub.lua"))()
]])
AddRun(TabBF, "Gravity Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
]])
AddRun(TabBF, "Dark X Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Trdz-hub/refs/heads/main/DarkXHub.lua"))()
]])
AddRun(TabBF, "Neji Hub", [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/ugmoddev/ScriptRoblox/refs/heads/main/NejiHub.lua"))()
]])
AddRun(TabBF, "NatAov Hub", [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-AnhTuansitink/NatAov-Hub/refs/heads/main/ILoveYou.lua"))()
]])
AddRun(TabBF, "Adz Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()
]])
AddRun(TabBF, "Abacaxi Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/real33ms/BloxFruits/refs/heads/main/AbacaxiHubOfc.lua"))()
]])
AddRun(TabBF, "Dum Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/DumHubdz/DumHubdzVN/refs/heads/main/DumHubdzVN.lua"))()
]])
AddRun(TabBF, "Ok Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/Okhubhere/refs/heads/main/MainBloxFruit.lua"))()
]])
AddRun(TabBF, "Xeter V1", [[
getgenv().Version = "V1"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
]])
AddRun(TabBF, "Xeter V2", [[
getgenv().Version = "V2"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
]])
AddRun(TabBF, "Xeter V3", [[
getgenv().Version = "V3"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
]])
AddRun(TabBF, "Xeter V4", [[
getgenv().Version = "V4"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
]])
AddRun(TabBF, "Hoho Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
]])
AddRun(TabBF, "Omg Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
]])
AddRun(TabBF, "Realkid hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()
]])
AddRun(TabBF, "Datthg x Hoho", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/main/BloxFruit/Custom/ThgHub.lua"))()
]])
AddRun(TabBF, "Tung Nam", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/duongquangtungnam/Scripts/refs/heads/main/TungNamXRedz.lua"))()
]])
AddRun(TabBF, "Than hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
]])
AddRun(TabBF, "PMT hub", [[
loadstring(game:HttpGet("https://api.luacrack.site/files/v4/loaders/441db37736363705cf359bb89e23e0e1.lua"))()
]])
AddRun(TabBF, "Turbo lite", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/refs/heads/main/MainV2.lua"))()
]])
AddRun(TabBF, "BOMAYYEUVIETNAM", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/banamkhoi/BOMAYYEUVIETNAM-Hub-menu-redz-hub/refs/heads/main/BOMAYYEUVIETNAM%20Hub%20Fix.lua"))()
]])
AddRun(TabBF, "Rise hub", [[
if not game:IsLoaded() then game.Loaded:Wait() end
loadstring(game:HttpGet("https://rise-evo.xyz/apiv3/main.lua"))()
]])
AddRun(TabBF, "Setting hub", [[
loadstring(game:HttpGet("https://pastefy.app/AjS0TLCt/raw"))()
]])
AddRun(TabBF, "Longhihi hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Devs-LongHiHiV4.1.0/refs/heads/main/MainV4.1.0"))()
]])
AddRun(TabBF, "TuanAnh IOS", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhTuanDzai-Hub/TuanAnhIOS/refs/heads/main/TuanAnhIOS-Main.Lua"))()
]])
AddRun(TabBF, "Sol hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/SolHub", true))()
]])
AddRun(TabBF, "Nova hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Real-Nova-X-Hub/all-game/refs/heads/main/skidder-Yes.lua"))()
]])
AddRun(TabBF, "Ronix hub", [[
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fda9babd071d6b536a745774b6bc681c.lua"))()
]])
AddRun(TabBF, "Dragon Hub", [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().team = "Pirates"
loadstring(game:HttpGet("https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Main-BF.lua"))()
]])
AddRun(TabBF, "Maru hub free", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/MaruHubV1/refs/heads/main/MainV1.Lua"))()
]])
AddRun(TabBF, "LGB hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/haob11399-debug/Redzhub/refs/heads/main/8676241718623887.lua"))()
]])
AddRun(TabBF, "Quantum hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
]])
AddRun(TabBF, "Mixi hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/mixihubvip/mixihubvip/refs/heads/main/MixiHub"))()
]])
AddRun(TabBF, "ZYN hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/ZynHub", true))()
]])
AddRun(TabBF, "Muxus hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/MuxusTL/BloxFruits/main/MuxusHub.lua"))()
]])
AddRun(TabBF, "Lemon hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/trieu1082/Lemon-hub/refs/heads/main/Lemon-hub-cute.lua"))()
]])
AddRun(TabBF, "3Toc hub", [[
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/245375592509cc0bcb3526982431ab18.lua"))()
]])
AddRun(TabBF, "TDT hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThinhNek343/tdthub/refs/heads/main/maintdt.lua"))()
]])
AddRun(TabBF, "Leo hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/khanghoang95130-byte/LeoMobile/refs/heads/main/LeoMobile.txt"))()
]])
AddRun(TabBF, "Vantablack", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/tranduykhanh08428-web/VantablackHub/refs/heads/main/VantablackHub.lua.txt"))()
]])
AddRun(TabBF, "TRon Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/TRon-Void-Devs/TRon-Void-Hub-R6.1/refs/heads/main/script.lua"))()
]])
AddRun(TabBF, "Vua hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/hihiUGI/ubiquitous-octo-fortnight/refs/heads/main/vudatdz.txt"))()
]])
AddRun(TabBF, "DragonX hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tdk-Dragon/DragonX.lua/refs/heads/main/DragonX.lua.txt"))()
]])
AddRun(TabBF, "Arc hub", [[
loadstring(game:HttpGet("https://luaegis.net/scripts/v4/loaders/f4c0252a-28e4-487c-9cbb-0f45aa6aa629.lua"))()
]])
AddRun(TabBF, "Switch hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/napun87/Blox-Fruits-/refs/heads/main/switch.lua"))()
]])
AddRun(TabBF, "W-Azeox hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/ru-3/W-Azeox/refs/heads/main/scripts/Bloxfruit.lua"))()
]])
AddRun(TabBF, "Banana crack", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/napun87/Blox-Fruits-/refs/heads/main/bananabyobbi.lua"))()
]])
AddRun(TabBF, "Lumin hub", [[
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/ce44aba824feaaa49bab03ac2040927e.lua"))()
]])
AddRun(TabBF, "67 hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/67HubDev/all/refs/heads/main/67hub.vn.lua"))()
]])
AddRun(TabBF, "Nhoi hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nhoiii/Nhoiii-X-Hub/refs/heads/main/NhoiiiXHub.lua"))()
]])
AddRun(TabBF, "Gangteng hub", [[
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/516a5669fc39b4945cd0609a08264505.lua"))()
]])
AddRun(TabBF, "Monster hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/giahuy2511-coder/MonsterHub/refs/heads/main/MonsterHub"))()
]])
AddRun(TabBF, "Aura hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly/bloxfruit/refs/heads/main/Aura", true))()
]])
AddRun(TabBF, "King rua hub", [[
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/shinichi-dz/phucshinyeuem/refs/heads/main/KingRuaHub.lua"))()
]])
AddRun(TabBF, "Hinishi hub", [[
getgenv().team = "Marines"
_G.Translate = "English"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-Hinishi/Hinishi-Hub/refs/heads/main/Freemium.lua"))()
]])
AddRun(TabBF, "HDanh hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/hdanhvip/hdanhhub/refs/heads/main/HdanhHubBeta.lua.txt"))()
]])
AddRun(TabBF, "Ruby hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Ruby/hub.luau"))()
]])
AddRun(TabBF, "Trident hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Trident/script.luau"))()
]])
AddRun(TabBF, "Meo x hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/VanHoangIOS/MeoXHub/refs/heads/main/Main.lua"))()
]])
AddRun(TabBF, "Cokka hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/CokkaHub.lua"))()
]])
AddRun(TabBF, "God hub", [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/shinichi-dz/phucshinsayhi/refs/heads/main/Loader.lua"))()
]])
AddRun(TabBF, "Xero hub", [[
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/verudous/Xero-Hub/main/main.lua"))()
]])
AddRun(TabBF, "Tiro hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/NTTLOL/Tiro-Hub/refs/heads/main/TiroDel.lua.txt"))()
]])
AddRun(TabBF, "Chill hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
]])
AddRun(TabBF, "Bacon Banana", [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/Bloxfruits.lua"))()
]])
AddRun(TabBF, "Teddy Hub", [[
repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://raw.githubusercontent.com/teddyhubdev/diepvy/refs/heads/main/TeddyHub.lua"))()
]])
AddRun(TabBF, "Blue X Hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
]])
AddRun(TabBF, "Night Hub", [[
script_key = ""
loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/BF-Beta.lua"))()
]])
AddRun(TabBF, "Ngoc Bong V2", [[
loadstring(game:HttpGet("https://github.com/LuaCrack/NgocBong/raw/refs/heads/main/NgocBongV2"))()
]])
AddRun(TabBF, "Eclipse hub", [[
getgenv().ECp4 = {
    ["Team"] = "Pirates",
    ["Fix Lag"] = false,
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Eclipse2408/Scripts/refs/heads/main/PhahattiScripts.lua"))()
]])
AddRun(TabBF, "Tumadam hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/TumadamMod/cwertyur/refs/heads/main/TumadamEng.lua"))()
]])
AddRun(TabBF, "Wono hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/FruitBlox/refs/heads/main/Wano", true))()
]])
AddRun(TabBF, "Darksoul hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/gamer8410/dont-see-/refs/heads/main/loader.lua"))()
]])
AddRun(TabBF, "Gravity Premium", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/MainPremium.lua"))()
]])
AddRun(TabBF, "Tay Premium", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhub-PREMIUM.lua"))()
]])
AddRun(TabBF, "Nana TV", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/NaNaTV36/NaNaTVHubPremium/refs/heads/main/mainpremium.lua"))()
]])
AddRun(TabBF, "Hao Mod", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/TranGiaHao-source/HaoModHub/refs/heads/main/HUB_VIP_BY_HAO"))()
]])

TabBF:AddSection("Kaitun (Blox Fruits)")
AddRun(TabBF, "Gravity Kaitun", [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Kaitun.lua"))()
]])
AddRun(TabBF, "Realkid Kaitun", [[
getgenv().Configs = {
    ["Quest"] = {
        ["Evo Race V1"] = true;
        ["Evo Race V2"] = true;
        ["RGB Haki"] = true;
        ["Pull Lerver"] = true;
    };
    Sword = {
        "Dual-Headed Blade"; "Smoke Admiral"; "Wardens Sword"; "Cutlass"; "Katana";
        "Dual Katana"; "Triple Katana"; "Iron Mace"; "Saber"; "Pole (1st Form)";
        "Gravity Blade"; "Longsword"; "Rengoku"; "Midnight Blade"; "Soul Cane";
        "Bisento"; "Yama"; "Tushita"; "Cursed Dual Katana";
    };
    Gun = {
        "Skull Guitar"; "Kabucha"; "Venom Bow"; "Musket"; "Flintlock";
        "Refined Slingshot"; "Magma Blaster"; "Dual Flintlock"; "Cannon";
        "Bizarre Revolver"; "Bazooka";
    };
    ["Bypass TP"] = true;
    ["Auto Active Race V4"] = true;
};
loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/kaitun.lua"))()
]])
AddRun(TabBF, "Night hub Kaitun", [[
getgenv().Config = {
    Team = "Pirates",
    FarmConfig = {
        ["Out game when done all"] = true,
        ["Bypass Teleport"] = true,
        ["Double Quest(RISK)"] = true
    },
    Items = {
        ["Saber"] = true,
        ["Pole (1st form)"] = true,
        ["Skull Guitar"] = true,
        ["Cursed Dual Katana"] = true,
        ["Godhuman"] = true
    },
    Webhook = {
        ["Enabled"] = false,
        ["Url"] = ""
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/d6c7959dcc94cd24467080d82a56dcf9.lua"))()
]])

TabBF:AddSection("PVP / Bounty")
AddRun(TabBF, "Lonely Hub Pvp", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHub-PVP.lua"))()
]])
AddRun(TabBF, "Lonely Hub Pvp M1 fruit", [[
getgenv().Config = {
    ["Team"] = "Pirates",
    ["Hide UI"] = false,
    ["Hunt"] = {
        ["Method Farm"] = "TP",
        ["Chat"] = {
            ["Enabled"] = false,
            ["Text"] = {"msg1", "msg2"},
            ["Delay"] = 15
        },
        ["Auto Hop Time"] = 30,
        ["Teleport Y When Low Health"] = {
            Enabled = true,
            ["Health Min"] = 4700,
            ["Health Max"] = 6000
        },
        ["Auto V3"] = true,
        ["Auto V4"] = true,
        ["Auto Random Fruit"] = false,
        ["Rejoin When Kick"] = true,
        ["FPS Boost Method"] = "",
        ["White Screen"] = false,
        ["Black Screen"] = false,
        ["Webhook"] = {
            ["Enabled"] = false,
            ["Url"] = ""
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHub-BountyM1.lua"))()
]])


TabGag2:AddSection("Grow a Garden 2")
AddRun(TabGag2, "Nana Tv Gag 2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/NaNaTV36/gag2/refs/heads/main/NaNaHubGag2.lua"))()
]])
AddRun(TabGag2, "NatAov hub Gag 2", [[
loadstring(game:HttpGet('https://raw.githubusercontent.com/Dev-AnhTuansitink/NatAov-Hub/refs/heads/main/NatAovHub_GAG2.lua'))()
]])
AddRun(TabGag2, "Gravity hub Gag 2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/GrowAGarden2/refs/heads/main/Main.lua"))()
]])
AddRun(TabGag2, "Tay hub Gag 2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhub-main-grow-2.lua"))()
]])
AddRun(TabGag2, "Speed hub Gag 2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
]])
AddRun(TabGag2, "Vxeze hub Gag 2", [[
loadstring(game:HttpGet("https://gist.githubusercontent.com/angeryy-tvy/826d6026d799ff987914f4f911026a12/raw/GardenMainVxeze.lua"))()
]])
AddRun(TabGag2, "Realkid hub Gag 2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()
]])
AddRun(TabGag2, "Blue X hub Gag 2", [[
_G.AutoTranslate = true
_G.SaveConfig = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
]])
AddRun(TabGag2, "Hoshi hub Gag 2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Fluxyyy333/HoshiOnTop/main/loader.lua"))()
]])
AddRun(TabGag2, "Chiyo hub Gag 2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
]])
AddRun(TabGag2, "Axon hub Gag 2", [[
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/97c3f6db55a2cf72141537a85458e5a7.lua"))()
]])
TabTsb:AddSection("The Strongest Battlegrounds")
AddRun(TabTsb, "Senpai hub Tsb", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Senpai1997/Scripts/refs/heads/main/SenpaihubTheStrongestBattlegroundsAimlockAutoblock.lua"))()
]])
AddRun(TabTsb, "Tam hub Tsb", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/tamarixr/tamhub/main/bettertamhub.lua"))()
]])
AddRun(TabTsb, "Ns hub Tsb", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/TSBG/main/Solara"))()
]])
AddRun(TabTsb, "Star hub Tsb", [[
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/bc25e1f8ef8aa59092de8f8f4c4fb95c.lua"))()
]])
AddRun(TabTsb, "Forge hub Tsb", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
]])
AddRun(TabTsb, "Nicuse hub Tsb", [[
loadstring(game:HttpGet("https://loader.nicuse.xyz"))()
]])
TabKL:AddSection("King Legacy")
AddRun(TabKL, "Omg hub King legacy", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
]])
AddRun(TabKL, "Wukong hub King legacy", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/duymanhm6-cyber/wukonghud/refs/heads/main/wukonghud"))()
]])
AddRun(TabKL, "Zee hub King legacy", [[
loadstring(game:HttpGet('https://zuwz.me/Ls-Zee-Hub-KL'))()
]])
AddRun(TabKL, "NTT hub King legacy", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/main"))()
]])
AddRun(TabKL, "Axel hub King legacy", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/lostinnowheres/Loader/refs/heads/main/Loader.Lua"))()
]])
AddRun(TabKL, "Vector hub King legacy", [[
loadstring(game:HttpGet("https://vectorhub.space"))()
]])
TabEvade:AddSection("Evade")
AddRun(TabEvade, "Draconic hub Evade", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownproooolucky/Draconic-Hub-X/refs/heads/main/files/Evade/Overhaul.lua"))()
]])
AddRun(TabEvade, "Elderwyrm hub Evade", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vraigos/Elderwyrm-Hub-X/refs/heads/main/Scripts/Evade/Overhaul.lua"))()
]])
TabSailor:AddSection("Sailor Piece")
AddRun(TabSailor, "Imp hub Sailor piece", [[
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34824c86db1eba5e5e39c7c2d6d7fdfe.lua"))()
]])
AddRun(TabSailor, "Chiyo hub Sailor piece", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
]])
AddRun(TabSailor, "Nix hub Sailor piece", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/kirsia-dev/NixHub/refs/heads/main/loader.luau"))()
]])
AddRun(TabSailor, "Rc hub Sailor piece", [[
loadstring(game:HttpGet("https://vss.pandadevelopment.net/virtual/file/2768ea6419cb4d73"))()
]])
AddRun(TabSailor, "Cat hub Sailor piece", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/realcath/lab/refs/heads/main/src/main/loader.lua"))()
]])
AddRun(TabSailor, "Silver hub", [[
getgenv().SCRIPT_KEY = "KEYLESS"
loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/68c03a4bbe2693d16392815ddaa9cf322ddac3f145a4aed71ab52c87426373fd/download"))()
]])
AddRun(TabSailor, "Trigon hub Sailor piece", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sindex-Saliii/TrigonEvoHub/refs/heads/main/Main.luau"))()
]])
TabMM2:AddSection("Murder Mystery 2")
AddRun(TabMM2, "Vexon hub MM2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/VexonHub"))()
]])
AddRun(TabMM2, "Onyx hub MM2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/OnyxHub-New/OnyxHub/refs/heads/main/mm2"))()
]])
AddRun(TabMM2, "Thunder hub MM2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Roman34296589/SnapSanixHUB/refs/heads/main/SnapSanixHUB.lua"))()
]])
AddRun(TabMM2, "Yhub MM2", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/YHUB-Community/refs/heads/main/Murder-Mystery2"))()
]])
AddRun(TabMM2, "Ronix hub MM2", [[
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fda9babd071d6b536a745774b6bc681c.lua"))()
]])
TabDR:AddSection("Dead Rails")
AddRun(TabDR, "Ringta hub Dead Rails", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/erewe23/deadrailsring.github.io/refs/heads/main/ringta.lua"))()
]])
AddRun(TabDR, "Foxname hub Dead Rails", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Foxname-Dr.lua"))()
]])
TabGH:AddSection("Garden Horizon")
AddRun(TabGH, "Chiyo hub Garden Horizon", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
]])
AddRun(TabGH, "Speed hub Garden Horizon", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
]])
AddRun(TabGH, "Blue X hub Garden Horizon", [[
_G.AutoTranslate = true
_G.SaveConfig = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
]])

TabSTAE:AddSection("Steal a Egg")
AddRun(TabSTAE, "Ajjans hub", [[
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/359e97f8618e9008afe5f496184ebb7c.lua"))()
]])
AddRun(TabSTAE, "Realkid hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()
]])
AddRun(TabSTAE, "Speed hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
]])
AddRun(TabSTAE, "Nava hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2"))()
]])
TabHS:AddSection("Haze sea")
AddRun(TabHS, "Omg hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
]])
AddRun(TabHS, "Axel hub", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/lostinnowheres/Loader/refs/heads/main/Loader.Lua"))()
]])



TabTools:AddSection("Font")
do
	local currentFont = Enum.Font.Code

	local function ApplyGlobalFont(fontEnum)
		currentFont = fontEnum
		local function apply(obj)
			if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
				pcall(function()
					obj.Font = fontEnum
				end)
			end
		end
		pcall(function()
			for _, obj in ipairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
				apply(obj)
			end
		end)
		pcall(function()
			for _, obj in ipairs(game:GetService("CoreGui"):GetDescendants()) do
				apply(obj)
			end
		end)
		Notify("Font", "Da doi font", 2)
	end

	-- ap dung font moi khi GUI them element
	pcall(function()
		game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(obj)
			if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
				pcall(function()
					obj.Font = currentFont
				end)
			end
		end)
	end)

	local fontList = {
		{"Amatic SC", Enum.Font.AmaticSC},
		{"Antique", Enum.Font.Antique},
		{"Arcade", Enum.Font.Arcade},
		{"Arial", Enum.Font.Arial},
		{"Arial Bold", Enum.Font.ArialBold},
		{"Bangers", Enum.Font.Bangers},
		{"Bodoni", Enum.Font.Bodoni},
		{"Cartoon", Enum.Font.Cartoon},
		{"Code", Enum.Font.Code},
		{"Creepster", Enum.Font.Creepster},
		{"Denk One", Enum.Font.DenkOne},
		{"Fondamento", Enum.Font.Fondamento},
		{"Fredoka One", Enum.Font.FredokaOne},
		{"Garamond", Enum.Font.Garamond},
		{"Gotham", Enum.Font.Gotham},
		{"Gotham Bold", Enum.Font.GothamBold},
		{"Gotham Medium", Enum.Font.GothamMedium},
		{"Gotham Black", Enum.Font.GothamBlack},
		{"Highway", Enum.Font.Highway},
		{"Legacy", Enum.Font.Legacy},
		{"Oswald", Enum.Font.Oswald},
		{"Roboto", Enum.Font.Roboto},
		{"Roboto Condensed", Enum.Font.RobotoCondensed},
		{"Roboto Mono", Enum.Font.RobotoMono},
		{"SciFi", Enum.Font.SciFi},
		{"SourceSans", Enum.Font.SourceSans},
		{"SourceSans Bold", Enum.Font.SourceSansBold},
		{"Titillium Web", Enum.Font.TitilliumWeb},
		{"Ubuntu", Enum.Font.Ubuntu},
	}

	local names = {}
	local map = {}
	for _, fd in ipairs(fontList) do
		table.insert(names, fd[1])
		map[fd[1]] = fd[2]
	end

	-- Dropdown neu lib ho tro, khong thi dung nut
	local okDrop = pcall(function()
		TabTools:AddDropdown({
			Name = "Chon Font",
			Options = names,
			Default = "Code",
			Callback = function(v)
				local f = map[v]
				if f then
					ApplyGlobalFont(f)
				end
			end,
		})
	end)

	if not okDrop then
		for _, fd in ipairs(fontList) do
			TabTools:AddButton({
				Name = "Font: " .. fd[1],
				Callback = function()
					ApplyGlobalFont(fd[2])
				end,
			})
		end
	end
end

TabTools:AddSection("Hien thi FPS")
do
	local fpsOn = false
	local function destroyFps()
		pcall(function()
			local cg = game:GetService("CoreGui")
			local g = cg:FindFirstChild("RainbowFPS")
			if g then g:Destroy() end
		end)
		pcall(function()
			local pg = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
			if pg then
				local g = pg:FindFirstChild("RainbowFPS")
				if g then g:Destroy() end
			end
		end)
	end
	TabTools:AddToggle({
		Name = "Bật / Tắt FPS",
		Default = false,
		Callback = function(v)
			fpsOn = v
			if v then
				Notify("Settings", "Dang bat FPS...", 2)
				local ok, err = pcall(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/nyannos/Ui-Script/refs/heads/main/fps"))()
				end)
				if not ok then
					Notify("Error", tostring(err):sub(1, 80), 4)
					warn("[nyann hub] fps", err)
				else
					Notify("Settings", "FPS: ON", 3)
				end
			else
				destroyFps()
				Notify("Settings", "FPS: OFF", 3)
			end
		end,
	})
end




TabFixLag:AddSection("Fix Lag")
AddRun(TabFixLag, "Grai Hub V3", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Graihub/graihubfixlagv3/refs/heads/main/fixlagv3"))()
]])
AddRun(TabFixLag, "nyann os fix lag 100%", [[
loadstring(game:HttpGet("https://pastefy.app/PD0FXCxr/raw"))()
]])
AddRun(TabFixLag, "nyann os fix lag 20%", [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/nyanndzvkl/fixlag/refs/heads/main/nyannfixlag.lua"))()
]])



TabInfo:AddSection("Information")
TabInfo:AddParagraph({
	Title = "Script tổng vừa comeback nên còn lỗi nhé",
	Desc = "Script Tong Hop — Blox Fruits / Kaitun / Premium / PVP / Tools\nby real_@nyannnokonoko\nChon script -> hien menu script do",
})
TabInfo:AddButton({
	Name = "Nyann | Community🇻🇳👑",
	Callback = function()
		pcall(function()
			if setclipboard then
				setclipboard("https://discord.gg/k6MRH4KxTv")
				Notify("OK", "Da copy Discord", 3)
			end
		end)
	end,
})
TabInfo:AddButton({
	Name = "Máy chủ siêu cấp lá đu đủ ☠️",
	Callback = function()
		pcall(function()
			if setclipboard then
				setclipboard("https://discord.gg/3zuHDZCybR")
				Notify("OK", "Da copy Discord", 3)
			end
		end)
	end,
})
TabInfo:AddButton({
	Name = "Facebook",
	Callback = function()
		pcall(function()
			if setclipboard then
				setclipboard("https://www.facebook.com/share/1MFxSYvpAS/")
				Notify("OK", "Da copy Discord", 3)
			end
		end)
	end,
})
TabInfo:AddButton({
	Name = "Tiktok",
	Callback = function()
		pcall(function()
			if setclipboard then
				setclipboard("tiktok.com/@dev_nyann")
				Notify("OK", "Da copy Discord", 3)
			end
		end)
	end,
})
TabInfo:AddButton({
	Name = "Instagram",
	Callback = function()
		pcall(function()
			if setclipboard then
				setclipboard("https://www.instagram.com/ttd.213?igsh=N2ljc3A4NTQ0ZW9n")
				Notify("OK", "Da copy Discord", 3)
			end
		end)
	end,
})
TabInfo:AddSection("Status")
local TimeZone = TabInfo:AddParagraph({
	Title = "Time Zone",
	Desc = "Loading...",
})
local GameTime = TabInfo:AddParagraph({
	Title = "Game Time",
	Desc = "Loading...",
})

local function UpdateOS()
	local date = os.date("*t")
	local hour = (date.hour) % 24
	local ampm = hour < 12 and "AM" or "PM"
	local timezone = string.format("%02i:%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, date.sec, ampm)
	local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)

	local LocalizationService = game:GetService("LocalizationService")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local result, code

	if not getgenv().countryRegionCode then
		result, code = pcall(function()
			return LocalizationService:GetCountryRegionForPlayerAsync(player)
		end)
		if result then
			getgenv().countryRegionCode = code
		else
			getgenv().countryRegionCode = "Unknown"
		end
	else
		code = getgenv().countryRegionCode
	end

	pcall(function()
		TimeZone:SetDesc(datetime .. " - " .. timezone .. " [ " .. tostring(code) .. " ]")
	end)
end

local function UpdateGameTime()
	local GameTimeValue = math.floor(workspace.DistributedGameTime + 0.5)
	local Hour = math.floor(GameTimeValue / (60 ^ 2)) % 24
	local Minute = math.floor(GameTimeValue / 60) % 60
	local Second = math.floor(GameTimeValue) % 60
	pcall(function()
		GameTime:SetDesc(Hour .. " Hour (h) " .. Minute .. " Minute (m) " .. Second .. " Second (s)")
	end)
end

task.spawn(function()
	while true do
		pcall(UpdateOS)
		pcall(UpdateGameTime)
		task.wait(1)
	end
end)


-- ========== SEARCH ==========
TabSearch:AddSection("Tim kiem script")
do
	local resultWidgets = {}
	local statusP = TabSearch:AddParagraph({
		Title = "Ket qua",
		Desc = "Nhap ten script o o tim kiem ben duoi...",
	})

	local function clearResults()
		for _, w in ipairs(resultWidgets) do
			pcall(function()
				if w.Destroy then
					w:Destroy()
				end
			end)
		end
		resultWidgets = {}
	end

	local function doSearch(query)
		query = tostring(query or ""):lower():gsub("^%s+", ""):gsub("%s+$", "")
		clearResults()

		if query == "" then
			pcall(function()
				statusP:SetTitle("Ket qua")
				statusP:SetDesc("Nhap ten script o o tim kiem ben duoi...")
			end)
			return
		end

		local hits = {}
		for _, item in ipairs(ScriptRegistry) do
			if tostring(item.Name):lower():find(query, 1, true) then
				table.insert(hits, item)
			end
		end

		if #hits == 0 then
			pcall(function()
				statusP:SetTitle("Ket qua")
				statusP:SetDesc("Khong tim thay: \"" .. query .. "\"")
			end)
			Notify("Search", "Khong tim thay", 2)
			return
		end

		pcall(function()
			statusP:SetTitle("Ket qua (" .. #hits .. ")")
			statusP:SetDesc("Bam nut Execute de chay script")
		end)

		local maxShow = 20
		for i, item in ipairs(hits) do
			if i > maxShow then
				break
			end
			local name = item.Name
			local code = item.Code

			local para
			local okP, pObj = pcall(function()
				return TabSearch:AddParagraph({
					Title = name,
					Desc = "Script #" .. i,
				})
			end)
			if okP and pObj then
				table.insert(resultWidgets, pObj)
			end

			local okB, btn = pcall(function()
				return TabSearch:AddButton({
					Name = "Execute: " .. name,
					Callback = function()
						task.spawn(RunCode, name, code)
					end,
				})
			end)
			if okB and btn then
				table.insert(resultWidgets, btn)
			elseif okB then
				-- AddButton may return nil; still created
			end
		end

		if #hits > maxShow then
			local more
			local okM, mObj = pcall(function()
				return TabSearch:AddParagraph({
					Title = "...",
					Desc = "Con " .. (#hits - maxShow) .. " script. Thu go chi tiet hon.",
				})
			end)
			if okM and mObj then
				table.insert(resultWidgets, mObj)
			end
		end

		Notify("Search", #hits .. " ket qua", 2)
	end

	pcall(function()
		TabSearch:AddTextBox({
			Name = "Tim script",
			Default = "",
			PlaceholderText = "vd: Redz, Gravity, nyann...",
			Callback = function(text)
				doSearch(text)
			end,
		})
	end)

	TabSearch:AddButton({
		Name = "Xoa ket qua",
		Callback = function()
			clearResults()
			pcall(function()
				statusP:SetTitle("Ket qua")
				statusP:SetDesc("Nhap ten script o o tim kiem ben duoi...")
			end)
		end,
	})
end

Notify("nyann os Hub", "Script Tong Hop san sang", 5)
print("[nyann os] Hub Tong Hop full list loaded")
