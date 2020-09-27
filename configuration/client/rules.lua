local awful = require('awful')
local gears = require('gears')
local ruled = require('ruled')
local client_keys = require('configuration.client.keys')
local client_buttons = require('configuration.client.buttons')

ruled.client.connect_signal(
	'request::rules',
	function()

		-- All clients will match this rule.
		ruled.client.append_rule {
			id         = 'global',
			rule       = { },
			properties = {
				focus     = awful.client.focus.filter,
				raise     = true,
				floating = false,
				maximized = false,
				above = false,
				below = false,
				ontop = false,
				sticky = false,
				maximized_horizontal = false,
				maximized_vertical = false,
				round_corners = true,
				keys = client_keys,
				buttons = client_buttons,
				screen    = awful.screen.preferred,
				shape = function(cr, width, height)
					gears.shape.rectangle(cr, width, height)
				end,
				placement = awful.placement.no_overlap + awful.placement.no_offscreen
			}
		}

		-- Titlebar rules
		ruled.client.append_rule {
			id 		= 'titlebars',
			rule_any   = {
				type = {
					'normal',
					'dialog'
				}
			},
			properties = {
				titlebars_enabled = true
			}
		}

		-- Dialogs
		ruled.client.append_rule {
			id         = 'dialog',
			rule_any   = { 
				type  = { 'dialog' },
				class = { 'Wicd-client.py', 'calendar.google.com' }
			},
			properties = { 
				titlebars_enabled = true,
				floating = true,
				above = true,
				draw_backdrop = true,
				skip_decoration = true,
				placement = awful.placement.centered
			}
		}

		-- Modals
		ruled.client.append_rule {
			id         = 'dialog',
			rule_any   = { 
				type = { 'modal' }
			},
			properties = { 
				titlebars_enabled = true,
				floating = true,
				above = true,
				draw_backdrop = true,
				skip_decoration = true,
				placement = awful.placement.centered
			}
		}

		-- Utilities
		ruled.client.append_rule {
			id         = 'utility',
			rule_any   = { 
				type = { 'utility' }
			},
			properties = { 
				titlebars_enabled = false,
				floating = true,
				skip_decoration = true,
				placement = awful.placement.centered
			}
		}

		-- Splash
		ruled.client.append_rule {
			id         = 'splash',
			rule_any   = { 
				type = { 'splash' }
			},
			properties = {
				titlebars_enabled = false,
				round_corners = false,
				floating = true,
				above = true,
				skip_decoration = true,
				placement = awful.placement.centered
			}
		}
		-- Browsers and chats
		ruled.client.append_rule {
			id         = 'web_browsers',
			rule_any   = { 
				class = {
					'firefox',
					'Tor Browser',
					'discord',
					'Chromium',
					'Google-chrome'
				}
			},
			properties = { 
				tag = '2'
			}
		}

		-- Text editors and word processing
		ruled.client.append_rule {
			id         = 'text_editors',
			rule_any   = {
				class = {
					'Geany',
					'Atom',
					'Subl3',
					'code-oss'
				},
				name  = {
					'LibreOffice',
					'libreoffice'
				}
			},
			properties = { 
				tag = '3'
			}
		}

		-- File managers
		ruled.client.append_rule {
			id         = 'file_managers',
			rule_any   = {
				class = {
					'dolphin',
					'ark',
					'Nemo',
					'File-roller'
				}
			},
			properties = { 
				tag = '4',
				switch_to_tags = true
			}
		}

		-- Multimedia
		ruled.client.append_rule {
			id         = 'multimedia',
			rule_any   = {
				class = {
					'vlc',
					'Spotify'
				}
			},
			properties = { 
				tag = '5',
				switch_to_tags = true,
				draw_backdrop = false
			}
		}

		-- Gaming
		ruled.client.append_rule {
			id         = 'gaming',
			rule_any   = {
				class = {
					'Wine',
					'dolphin-emu',
					'Steam',
					'Citra',
					'supertuxkart'
				},
				name = { 'Steam' }
			},
			properties = { 
				tag = '6',
				skip_decoration = true,
				switch_to_tags = true,
				floating = true,
				placement = awful.placement.centered
			}
		}

		-- Multimedia Editing
		ruled.client.append_rule {
			id         = 'graphics_editors',
			rule_any   = {
				class = {
					'Gimp-2.10',
					'Inkscape',
					'Flowblade'
				}
			},
			properties = { 
				tag = '7'
			}
		}

		-- Sandboxes and VMs
		ruled.client.append_rule {
			id         = 'sandbox',
			rule_any   = {
				class = {
					'VirtualBox Manage',
					'VirtualBox Machine'
				}
			},
			properties = { 
				tag = '8'
			}
		}

		-- IDEs and Tools
		ruled.client.append_rule {
			id         = 'ide',
			rule_any   = {
				class = {
					'Oomox',
					'Unity',
					'UnityHub',
					'jetbrains-studio',
					'Ettercap'
				}
			},
			properties = { 
				tag = '9',
				skip_decoration = true
			}
		}

		-- Image viewers
		ruled.client.append_rule {
			id        = 'image_viewers',
			rule_any  = {
				class    = {
					'feh',
					'Pqiv',
					'Sxiv'
				},
			},
			properties = { 
				titlebars_enabled = true,
				skip_decoration = true,
				floating = true,
				ontop = false,
				placement = awful.placement.centered
			}
		}

		-- Discord updater
		ruled.client.append_rule {
			id        = 'discord_updater',
			rule_any  = {
				name = {'Discord Updater'}
			},
			properties = { 
				round_corners = false,
				skip_decoration = true,
				titlebars_enabled = false,
				floating = true,
				ontop = true,
				placement = awful.placement.centered
			}
		}

		-- Floating
		ruled.client.append_rule {
			id       = 'floating',
			rule_any = {
				instance    = {
					'file_progress',
					'Popup',
					'nm-connection-editor',
				},
				class = { 
					'scrcpy' ,
					'Mugshot',
					'Pulseeffects'
				}
			},
			properties = { 
				titlebars_enabled = true,
				skip_decoration = true,
				ontop = true,
				floating = true,
				focus = awful.client.focus.filter,
				raise = true,
				keys = client_keys,
				buttons = client_buttons,
				placement = awful.placement.centered
			}
		}
		
	end
)


