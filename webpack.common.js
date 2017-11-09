 const path = require('path');
 const CleanWebpackPlugin = require('clean-webpack-plugin');
 const HtmlWebpackPlugin = require('html-webpack-plugin');

 module.exports = {
     entry: {
         app: './src/index.js'
     },
     plugins: [
         new CleanWebpackPlugin(['dist']),
         new HtmlWebpackPlugin({
             title: 'Production'
         })
     ],
     output: {
         filename: '[name].bundle.js',
         path: path.resolve(__dirname, 'dist')
     },
     module: {
         loaders: [{
             test: /\.js$/,
             exclude: __dirname + '/node_modules/',
             loader: 'babel-loader',
             query: {
                 presets: ['env']
             }
         }]
     },
     stats: {
         colors: true
     }
 };