## Initial Step

webpack.config.js -> Checks all plugins, loaders

1) Plugins - Correct Plugins Required
else => Cannot find module 'clean-webpack'
2) Loaders - Match with src/index.js correct loaders downloaded
else => Module not found: Error: Can't resolve

index.js
1) Check if all import files are available
else => Module not found: Error: Can't resolve

import files all have the correct loaders

src
1) File doesn't exist within the src directory
ERROR in Entry module not found: Error: Can't resolve


## Next Step

Read Error Code, monitor changes.

Look through all plugins _used_ and research over there usuage.  
