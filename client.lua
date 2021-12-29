local propsToCheck = {
    'prop_bush_ivy_01_1m',
    'prop_bush_lrg_01',
    'prop_bush_med_01',
    'prop_bush_neat_01',
    'prop_weeds_nxg01',
    'prop_veg_grass_01_a',
    'prop_plant_fern_02c',
    'prop_plant_cane_01b',
    'prop_bush_lrg_03',
    'prop_bush_med_03',
    'prop_joshua_tree_01d',
    'prop_bush_lrg_02',
    'prop_cactus_01d',
    'prop_tree_lficus_06',
    'prop_tree_lficus_06',
    'prop_joshua_tree_02e', 
    'prop_cactus_01e',
    'prop_cactus_01d',
    'prop_cactus_01c',
    'prop_bin_05a',
    'prop_bin_01a',
    'prop_dumpster_01a',
    'prop_recyclebin_01a',
    'prop_bin_07a',
    'prop_cactus_01a',
    'prop_cactus_02',
    'prop_cactus_03',
    'prop_joshua_tree_01a',
    'prop_joshua_tree_02a',
    'prop_rock_4_a',
    'prop_rock_5_a',
    'prop_rock_4_big',
    'prop_rock_5_smash1',
}

a = false

CreateThread(function()
    while true do
        Citizen.Wait(15000)
        if not a then 
            for k,v in pairs(propsToCheck) do
                if not IsModelInCdimage(v) then
                    TriggerServerEvent('fivem_propcheck')
                    a = true
                end
            end
        end
    end
end)
