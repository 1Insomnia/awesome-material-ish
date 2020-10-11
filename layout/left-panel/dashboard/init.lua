local awful = require('awful')
local wibox = require('wibox')
local gears = require('gears')
local beautiful = require('beautiful')
local dpi = beautiful.xresources.apply_dpi
local clickable_container = require('widget.clickable-container')

return function(_, panel)

	return wibox.widget {
		{
			{
				layout = wibox.layout.fixed.vertical,
				spacing = dpi(7),
				-- search_button,
				require('layout.left-panel.dashboard.hardware-monitor'),
				require('layout.left-panel.dashboard.quick-settings')
			},
			nil,
			require('widget.end-session')(),
			layout = wibox.layout.align.vertical
		},
		margins = dpi(16),
		widget = wibox.container.margin
	}
end
