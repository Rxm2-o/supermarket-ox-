Config = {

    MenuName = "Superette",

    MarkerType = 6, -- https://docs.fivem.net/docs/game-references/markers/
    MarkerColor = {r = 0, g = 0, b = 0, a = 155},
    MarkerRotation = -90,

    BlipSprite = 628, -- https://docs.fivem.net/docs/game-references/blips/
    BlipScale = 1.0,
    BlipColour = 25,
    BlipName = 'Superette',

    InteractionType = "marker", -- marker or target

    PedModel = "a_m_m_farmer_01", -- https://docs.fivem.net/docs/game-references/ped-models/

    Location = { -- a script for get the position : https://www.youtube.com/watch?v=Q-VBAaz6hhA
        {global_position = vector3(25.6, -1346.82, 28.49), marker_position = vector3(25.6, -1346.82, 28.49), ped_position = vec4(24.504482269287, -1346.7625732422, 28.497049331665, 268.35229492188)},
        {global_position = vector3(2678.0, 3280.8, 54.24), marker_position = vector3(2678.0, 3280.8, 54.24), ped_position = vec4(2677.4482421875, 3279.78125, 54.241111755371, 334.49304199219)},
        {global_position = vector3(-1222.9, -907.3, 11.3), marker_position = vector3(-1222.9, -907.3, 11.3), ped_position = vec4(-1222.1513671875, -908.39251708984, 11.32635974884, 33.289657592773)},
        {global_position = vector3(373.7816, 326.2924, 102.5664), marker_position = vector3(373.7816, 326.2924, 102.5664), ped_position = vec4(372.65118408203, 326.63888549805, 102.56630706787, 255.03079223633)},
        {global_position = vector3(2557.25, 382.1388, 107.623), marker_position = vector3(2557.25, 382.1388, 107.623), ped_position = vec4(2557.0327148438, 380.86306762695, 107.62291717529, 358.93270874023)},
        {global_position = vector3(1135.652, -982.3264, 45.4158), marker_position = vector3(1135.652, -982.3264, 45.4158), ped_position = vec4(1134.1785888672, -982.65252685547, 45.415798187256, 280.99548339844)},
        {global_position = vector3(-707.4, -914.2, 18.2), marker_position = vector3(-707.4, -914.2, 18.2), ped_position = vec4(-706.07440185547, -913.82720947266, 18.215579986572, 90.865951538086)},
        {global_position = vector3(1698.33, 4924.29, 41.06), marker_position = vector3(1698.33, 4924.29, 41.06), ped_position = vec4(1697.9053955078, 4923.017578125, 41.063617706299, 323.58908081055)},
        {global_position = vector3(-48.24798, -1757.722, 28.42102), marker_position = vector3(-48.24798, -1757.722, 28.42102), ped_position = vec4(-47.230590820312, -1758.4818115234, 28.420988082886, 58.208137512207)},
        {global_position = vector3(1392.74, 3605.25, 34.0), marker_position = vector3(1392.74, 3605.25, 34.0), ped_position = vec4(1392.3947753906, 3606.2844238281, 33.98087310791, 199.02685546875)},
        {global_position = vector3(1729.07, 6415.25, 34.037204742432), marker_position = vector3(1729.07, 6415.25, 34.037204742432), ped_position = vec4(1728.0649414062, 6415.7749023438, 34.037204742432, 244.5422668457)},
        {global_position = vec3(1961.1384277344, 3740.6362304688, 31.343799591064), marker_position = vec3(1961.1384277344, 3740.6362304688, 31.343799591064), ped_position = vec4(1960.1652832031, 3739.9223632812, 31.343185424805, 306.14691162109)},
        {global_position = vector3(1165.29, 2709.39, 37.157653808594), marker_position = vector3(1165.29, 2709.39, 37.157653808594), ped_position = vec4(1165.4833984375, 2710.7802734375, 37.157653808594, 184.88233947754)},
        {global_position = vector3(547.94, 2671.36, 41.156452178955), marker_position = vector3(547.94, 2671.36, 41.156452178955), ped_position = vec4(549.04010009766, 2671.5903320312, 41.156452178955, 111.69485473633)},
        {global_position = vector3(-1820.53, 792.55, 137.14610534668), marker_position = vector3(-1820.53, 792.55, 137.14610534668), ped_position = vec4(-1819.6260986328, 793.70196533203, 137.08610534668, 133.74967956543)},
        {global_position = vector3(-3242.24, 1001.0, 11.85), marker_position = vector3(-3242.24, 1001.0, 11.85), ped_position = vec4(-3242.4221191406, 999.99291992188, 11.830702781677, 354.80624389648)},
        {global_position = vector3(-3039.96, 585.53, 6.908926486969), marker_position = vector3(-3039.96, 585.53, 6.908926486969), ped_position = vec4(-3039.2468261719, 584.35821533203, 6.908926486969, 21.677309036255)},
        {global_position = vec3(1163.4681396484, -323.90469360352, 68.205039978027), marker_position = vec3(1163.4681396484, -323.90469360352, 68.205039978027), ped_position = vec4(1164.8698730469, -323.7174987793, 68.205024719238, 94.598281860352)},
        {global_position = vector3(-1487.75, -378.51, 39.163368225098), marker_position = vector3(-1487.75, -378.51, 39.163368225098), ped_position = vec4(-1486.7299804688, -377.48748779297, 39.163368225098, 133.89526367188)},
    },
    
    -- For the name of eatch category is was as the same name
    Category = {
        ["foods"] = {
            {itemName = "fish", label = "Poisson", price = 20, icon = "bowl-food"},
            {itemName = "bread", label = "Pain", price = 10, icon = "bowl-food"},
        },
        ["drinks"] = {
            {itemName = "water", label = "Eau", price = 10, icon = "whiskey-glass"},            
        },
    },
    -- ⚠️ Please note that the name of each category must be the same as the name above
    CategoryInfo = {
        ["foods"] = {name = "Nourritures", icon = "bowl-food"},
        ["drinks"] = {name = "Boissons", icon = "whiskey-glass"},
    },
}