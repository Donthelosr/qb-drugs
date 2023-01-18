Config = Config or {}
Config.Dealers = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.PoliceCallChance = 15

-- Shop Config
Config.Products = {
    [1] = {
        name = "weed_white-widow",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 1,
        minrep = 0,
    },
    [2] = {
        name = "weed_skunk",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 2,
        minrep = 20,
    },
    [3] = {
        name = "weed_purple-haze",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 3,
        minrep = 40,
    },
    [4] = {
        name = "weed_og-kush",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 4,
        minrep = 60,
    },
    [5] = {
        name = "weed_amnesia",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 5,
        minrep = 80,
    },
    [6] = {
        name = "weed_white-widow_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 6,
        minrep = 100,
    },
    [7] = {
        name = "weed_skunk_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 7,
        minrep = 120,
    },
    [8] = {
        name = "weed_purple-haze_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 8,
        minrep = 140,
    },
    [9] = {
        name = "weed_og-kush_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 9,
        minrep = 160,
    },
    [10] = {
        name = "weed_amnesia_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 10,
        minrep = 180,
    },
}

-- Selling Config
Config.SuccessChance = 33
Config.ScamChance = 5
Config.RobberyChance = 5
Config.MinimumDrugSalePolice = 0


Config.DrugsPrice = {
    ["weed_white-widow"] = {
        min = 1,
        max = 3,
    },
    ["weed_og-kush"] = {
        min = 1,
        max = 3,
    },
    ["weed_skunk"] = {
        min = 1,
        max = 3,
    },
    ["weed_amnesia"] = {
        min = 1,
        max = 3,
    },
    ["weed_purple"] = {
        min = 1,
        max = 3,
    },
    ["weed_ak47"] = {
        min = 1,
        max = 3,
    },
    ["weed_ak47"] = {
        min = 1,
        max = 3,
    },
    ["weed_bag"] = {
        min = 1,
        max = 3,
    },
    ["weed_package"] = {
        min = 1,
        max = 3,
    },

    
    ["crack_baggy"] = {
        min = 2,
        max = 4,
    },
    ["cokebaggy"] = {
        min = 3,
        max = 5,
    },
    ["meth"] = {
        min = 2,
        max = 3,
    },
    ["oxy"] = {
        min = 2,
        max = 3,
    },
    ["xtcbaggy"] = {
        min = 2,
        max = 3,
    },
    ["heroin"] = {
        min = 3,
        max = 4,
    },
    ["heroinbaggy"] = {
        min = 3,
        max = 4,
    },
    
    ["morphine"] = {
        min = 3,
        max = 4,
    },


    ["meth_bag"] = {
        min = 3,
        max = 4,
    },
  
}


