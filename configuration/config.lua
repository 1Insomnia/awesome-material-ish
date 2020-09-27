return {
	widget = {
		email  = {
			address       = '',
			app_password  = '',
			imap_server   = 'imap.gmail.com',
			port          = '993'
		},

		weather = {
			key           = '',
			city_id       = '',
			units         = 'metric',
			update_interval = 1200
		},

		network = {
			wired_interface = 'enp0s0',
			wireless_interface = 'wlp2s0'
		},

		clock = {
			military_mode = true,
		}
	},

	module = {
		auto_start = {
			debug_mode = false
		},

		lockscreen = {
			military_clock = true,
			blur_background = true,
			wall_dir = 'theme/wallpapers/',
			default_wall_name = 'wallpaper.jpg',
			tmp_wall_dir = '/tmp/awesomewm/' .. os.getenv('USER') .. '/'
		}
	}
}
