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
