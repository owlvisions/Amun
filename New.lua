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

function XGBase(Address,AFV)
   local address=0
   for index,offset in ipairs(Address)do
      if index==1 then
         address=offset
      else
         address=gg.getValues({{address=address+offset,flags=4}})[1].value
      end
   end
   local Value,Freeze={},{}
   for index,value in ipairs(AFV)do
      local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
      if value[4]then
         Freeze[#Freeze+1]=VALUE
      else
         Value[#Value+1]=VALUE
      end
   end
   gg.setValues(Value)
   gg.addListItems(Freeze)
end

XGBase(
{gg.getRangesList("libanogs.so:bss")[1].start},
{
{64,4,0xDB9A0},
{64,4,0xDB9C0},
{64,4,0xDBA10},
{64,4,0xDBA60},
{64,4,0xDBD50},
{64,4,0xDBAB0},
{64,4,0xDBAD0},
{64,4,0xDBC10},
{64,4,0xDBCC0},
})

gg.alert("\n☣️  Logo 𝐁𝐲𝐩𝐚𝐬𝐬 𝐀𝐜𝐭𝐢𝐯𝐚𝐭𝐞𝐝 \n")

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
  0x5CE8, 0xB0E8, 0xB110, 0xB288, 0xAC68, 0xAC40, 0xE4F8, 0x8B80, 0x8388, 0xBBF8, 0xB9B0,0xDB9B0,0xDB9EC, 0x121B5C, 0x15946C, 0x166B1C, 0x1DB5C0,0x1E5774,0x3B51DC, 0x3B5F08
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
