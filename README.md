# ceri-loader

webpack loader, that wraps ceri-compiler

## Install
```sh
npm install --save-dev ceri-loader
```

## Usage
webpack.config:
```coffee
module:
  rules: [
    {
      test: /\.(js|coffee)$/
      use: "ceri-loader"
      enforce: "post"
      exclude: /node_modules/
    }
  ]
```

## License
Copyright (c) 2017 Paul Pflugradt
Licensed under the MIT license.
