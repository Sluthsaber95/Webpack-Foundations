## Tree Shaking

By default webpack, highlights unused dead code, whenever you add a utility to your project

## Minification

With minification and tree shaking our bundle is now a few bytes smaller! While that may not seem like much in this contrived example, tree shaking can yield a significant decrease in bundle size when working on larger applications with complex dependency trees.

>Using UglifyJSPlugin

Please note that webpack doesn't perform tree-shaking by itself. It relies on third party tools like UglifyJS to perform actual dead code elimination. There are situations where tree-shaking may not be effective. For example, consider the following modules:

So, what we've learned is that in order to take advantage of tree shaking, you must...

Use ES2015 module syntax (i.e. import and export).
Include a minifier that supports dead code removal (e.g. the UglifyJSPlugin).
You can imagine your application as a tree. The source code and libraries you actually use represent the green, living leaves of the tree. Dead code represents the brown, dead leaves of the tree that are consumed by autumn. In order to get rid of the dead leaves, you have to shake the tree, causing them fall.

If you are interested in more ways to optimize your output, please jump to the next guide for details on building for

## Production

While we will separate the production and development specific bits out, note that we'll still maintain a "common" configuration to keep things DRY. In order to merge these configurations together, we'll use a utility called webpack-merge. With the "common" configuration in place, we won't have to duplicate code within the environment-specific configurations.


