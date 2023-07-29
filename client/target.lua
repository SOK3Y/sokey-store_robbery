local kasetki = {'prop_till_01', 'prop_till_02', 'p_till_01_s', 'prop_till_01_dam', 'prop_till_03'}

exports.qtarget:AddTargetModel({kasetki}, {
	options = {
		{
			event = "napad:kasetka",
			icon = "fas fa-sack-dollar",
			label = "Okradnij kasetkę",
			num = 1
		},
	},
	distance = 2
})