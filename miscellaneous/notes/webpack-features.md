But what would happen if we changed the name of one of our entry points, or even added a new one? The generated bundles would be renamed on a 
build, but our index.html file would still reference the old names. Let's fix that with the HtmlWebpackPlugin.


## The webpack manifest
You might be wondering how webpack and its plugins seem to "know" what files are being generated. 


## Using source maps
Source maps enable you to located where the error is within the stack trace.

In order to make it easier to track down errors and warnings, JavaScript offers source maps, which maps your compiled code back to your original source code. If an error originates from b.js, the source map will tell you exactly that.


## Utilizing Watch mode

You can instruct webpack to "watch" all files within your dependency graph for changes. If one of these files is updated, the code will be recompiled so you don't have to run the full build manually.


## Using webpack dev server

Now we can run npm start from the command line and we will see our browser automatically loading up our page. If you now change any of the source files and save them, the web server will automatically reload after the code has been compiled. Give it a try!


## Using webpack middleware

webpack-dev-middleware is a wrapper that will emit files processed by webpack to a server. This is used in webpack-dev-server internally, however it's available as a separate package to allow more custom setups if desired. We'll take a look at an example that combines webpack-dev-middleware with an express server.


## Disabling Safe right feature 

That can potentially interfere with recompilation - not a problem for VScode

## Enabling HMR (Hot Module Replacement)

 It allows all kinds of modules to be updated at runtime without the need for a full refresh.

 This feature is great for productivity. All we need to do is update our webpack-dev-server configuration, and use webpack's built in HMR plugin. We'll also remove the entry point for print.js as it will now be consumed by the index.js module.

https://webpack.js.org/guides/hot-module-replacement/

Difficult to find a solution, that doesn't have a direct error


## Enabling via the Node.js API

When using Webpack Dev Server with the Node.js API, don't put the dev server options on the webpack config object. Instead, pass them as a second parameter upon creation. For example:

> If you're using webpack-dev-middleware, check out the webpack-hot-middleware package to enable HMR on your custom dev server.

I originally thought there was a bug with the HMR, as it doesn't work - just the next section

## Gotchas??

Hot Module Replacement can be tricky. To show this, let's go back to our working example. If you go ahead and click the button on the example page, you will realize the console is printing the old printMe function.

This is happening because the button's onclick event handler is still bound to the original printMe function.

To make this work with HMR we need to update that binding to the new printMe function using module.hot.accept:

This is just one example, but there are many others that can easily trip people up. Luckily, there are a lot of loaders out there (some of which are mentioned below) that will make hot module replacement much easier.


## Other Code and Frameworks

There are many other loaders and examples out in the community to make HMR interact smoothly with a variety of frameworks and libraries...

+ React Hot Loader: Tweak react components in real time.
+ Redux HMR: No loader or plugin necessary! A simple change to your main store file is all that's required.

## Tree shaking

Tree shaking is a term commonly used in the JavaScript context for dead-code elimination. It relies on the static structure of ES2015 module syntax, i.e. import and export. The name and concept have been popularized by the ES2015 module bundler rollup.

### Import and Export Alias

Import multiple exports from a module with convenient aliases.

import {
  reallyReallyLongModuleExportName as shortName,
  anotherLongModuleName as short
} from '/modules/my-module.js';

> Note there is syntax linting in webstorm