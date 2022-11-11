const path = require('path');

module.exports = {
  entry: {
    AgoraRtcWrapper: './src/IrisRtcEngine.ts',
  },
  module: {
    rules: [
      {
        test: /\.(wasm)|(bin)|(obj)$/i,
        include: [path.resolve(__dirname, 'node_modules/deepar/')],
        type: 'asset/resource',
      },
      {
        include: [path.resolve(__dirname, 'effects/')],
        type: 'asset/resource',
      },
      {
        test: /\.tsx?$/,
        use: 'ts-loader',
        exclude: /node_modules/,
      },
    ],
  },
  resolve: {
    extensions: ['.tsx', '.ts', '.js', '.wasm', '.bin', '.obj'],
  },
  output: {
    filename: '[name].bundle.custom.js',
    library: 'IrisRtcEngine',
    libraryTarget: 'var',
    libraryExport: 'default',
    path: path.resolve(__dirname, 'dist'),
  },
};
