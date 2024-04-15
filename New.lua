local Ranges=gg.getRangesList('/')
local function Read(module,type)
    for k,v in pairs(Ranges) do
        if v['internalName']:match('[^/]*$')==module and v['type']==type then
            return v['start']
        end
    end
end

local Table={}
local function Modify(address,value,flags)
    Table[#Table+1]={address=address,value=value,flags=flags}
end
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end


function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
HOME = 1
gg.alert("Bypass Logo / Lobby 64BiT 3.1 🟢")
gg.alert("Welcome to AMUN GG, for devices that don't need root just play  100% safe")
gg.alert("By Amun Mods")
function HOME()
VIPONLY = gg.multiChoice({
"➥ Logo Bypass --- Aᴘᴘʟʏ ɪɴ Logo",
"➥ Lobby Bypass  --- Aᴘᴘʟʏ ɪɴ Lobby",
" Exɪᴛ "

}, nil, "☢️ AMUN BYPASS \n ┏TELEGRAM :- @SIRAMUN ")

if VIPONLY == nil then else
if VIPONLY[1]== true then B1() end
if VIPONLY[2]== true then B2() end
if VIPONLY[3]== true then EXIT() end
end
PUBGMH = -1
end

function B1()

function setvalue(address, flags, value)
    local tt = {{address = address, flags = flags, value = value}}
    gg.setValues(tt)
end

local gc_values = {
0x261220, 0x278588
}
local ano_values = {
0x444E78, 0x444E7C, 0x444E80, 0x444E84, 0x444E88, 0x444E8C, 0x444E90, 0x444E94, 0x444E98, 0x444E9C, 0x444EA0, 0x444EA4, 0x444EA8, 0x444EAC, 0x444EB0, 0x447638, 0x4476A0, 0x4477AC, 0x4477B0, 0x4477B4, 0x4477B8, 0x4477BC, 0x4477C0, 0x4477C4, 0x4477C8, 0x4477CC, 0x4477D0, 0x25BBD650, 0x25BBE210, 0x259BE800, 0x25AB9248, 0x25AB9258, 0x43F010, 0x43F064, 0x441920, 0x448070, 0x448078, 0xCA68F8, 0xCB5B40, 0x2597AC34, 0x26D3AA9C, 0x8E36B5B8
}
local ue_values = {
   0xC49B230, 0xCB6429C, 0x9654630, 0x9727360, 0xA032744, 0xCBB4328
}
local gcv_values = {
0x9251c, 0x9449c, 0x93770, 0x93714, 0x92588, 0x95980, 0x94440, 0x94284, 0x924bc
}
local gcvnn_values = {
0x164038, 0x16cb40, 0x56ea8, 0x56e24, 0x3b860, 0x3bcc0, 0x3c560, 0x3cb90, 0x3cf20
}

local ano = gg.getRangesList('libanogs.so')[1].start
local gcv = gg.getRangesList('libGCloudVoice.so')[1].start
local gcvnn = gg.getRangesList('libGvoiceNN.so')[1].start
local gc = gg.getRangesList('libgcloud.so')[1].start
local ue = gg.getRangesList('libUE4.so')[1].start


for _, lonte in ipairs(ano_values) do
    setvalue(ano + lonte, 4, 0)
end

for _, haik in ipairs(gc_values) do
    setvalue(gc + haik, 32, "h000080D2C0035FD6")
end

for _, entod in ipairs(ue_values) do
    setvalue(ue + entod, 4, 0)
end

for _, mmk in ipairs(gcv_values) do
    setvalue(gcv + mmk, 4, 0)
end

for _, tempik in ipairs(gcvnn_values) do
    setvalue(gcvnn + tempik, 4, 0)
end

gg.setVisible(false)
gg.toast("Bypass Logo Activated ✓")
gg.sleep(300)
gg.toast("Credits : @SirAmun")

gg.alert("⚡Done ⚡")
end

function B2()
function S_Pointer(t_So, t_Offset, _bit)
    local function getRanges()
        local ranges = {}
        local t = gg.getRangesList('^/data/*.so*$')
        for i, v in pairs(t) do
            if v.type:sub(2, 2) == 'w' then
                table.insert(ranges, v)
            end
        end
        return ranges
    end

    local function Get_Address(N_So, Offset, ti_bit)
        local ti = gg.getTargetInfo()
        local S_list = getRanges()
        local _Q = tonumber(0x167ba0fe)
        local _t = ti_bit and 32 or 4
        local t = {}

        for i, v in ipairs(S_list) do
            local _N = v.internalName:gsub('^.*/', '')
            if N_So[1] == _N and N_So[2] == v.state then
                local _S = v
                t[#t + 1] = {}
                t[#t].address = _S.start + Offset[1]
                t[#t].flags = _t

                if #Offset > 1 then
                    for j = 2, #Offset do
                        local S = gg.getValues(t)
                        t = {}
                        for _, val in ipairs(S) do
                            val.value = not ti.x64 and val.value & 0xFFFFFFFF or val.value
                            t[#t + 1] = {
                                address = val.value + Offset[j],
                                flags = _t
                            }
                        end
                    end
                end

                return t[#t].address
            end
        end
    end

    return string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
end

local offsets = {
  0x5CE8, 0xB0E8, 0xB110, 0xB288, 0xAC68, 0xAC40, 0xE4F8, 0x8B80, 0x8388, 0xBBF8, 0xB9B0
}

local t = {"libanogs.so:bss", "Cb"}
for _, offset in ipairs(offsets) do
    local ttt = S_Pointer(t, {offset}, true)
    gg.addListItems({{address = ttt, flags = 4, value = 117, freeze = true}})
end

gg.alert("Bypass Lobby Activated ✓")
gg.toast("Credits : @SirAmun")
gg.alert("\n☣️  Done \n")
end


function EXIT()
gg.alert("Telegram @SirAmun")
print("┣➤[ Amun Mods]")
print("By Aiman Elhanafy ")
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end
while true do
if gg.isVisible(true) then
PUBGMH = 1
gg.setVisible(false)
end
if PUBGMH == 1 then
HOME()
end
end