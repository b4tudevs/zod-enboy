local b4tudevs = false
local siyahekran = false
CreateThread(function()
    while true do
        if GetIsWidescreen() then
            if siyahekran then
                SendNUIMessage({
                    display = false,
                })
                siyahekran = false
            end
        else
            SendNUIMessage({
                display = true,
            })
            siyahekran = true
        end
        Wait(3500)
    end
end)