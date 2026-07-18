require('vis')

return function(modal)
    modal.MODES = {
    	[vis.modes.NORMAL] = ' NORMAL ',
    	[vis.modes.INSERT] = ' INSERT ',
    	[vis.modes.VISUAL] = ' VISUAL ',
    	[vis.modes.REPLACE] = ' REPLACE ',
    	[vis.modes.VISUAL_LINE] = ' VISUAL LINE ',
    	[vis.modes.OPERATOR_PENDING] = ' OPERATOR PENDING '
    }

    modal.STYLES = {
    	[vis.modes.NORMAL] = {
    		REGULAR = 'fore:#101010,back:yellow',
    		INVERTED = 'fore:yellow,back:#101010',
    	},
    	[vis.modes.INSERT] = {
    		REGULAR = 'fore:#101010,back:green',
    		INVERTED = 'fore:green,back:#101010',
    	},
    	[vis.modes.VISUAL] = {
    		REGULAR = 'fore:#101010,back:magenta',
    		INVERTED = 'fore:magenta,back:#101010',
    	},
    	[vis.modes.REPLACE] = {
    		REGULAR = 'fore:#101010,back:blue',
    		INVERTED = 'fore:blue,back:#101010',
    	},
    	[vis.modes.VISUAL_LINE] = {
    		REGULAR = 'fore:#101010,back:magenta',
    		INVERTED = 'fore:magenta,back:#101010',
    	},
    	[vis.modes.OPERATOR_PENDING] = {
    		REGULAR = 'fore:#101010,back:blue',
    		INVERTED = 'fore:blue,back:#101010',
    	},
    	UNFOCUSED = {
    		REGULAR = 'fore:#101010,back:white',
    		INVERTED = 'fore:white,back:#101010',
    	},
    }
end
