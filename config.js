/** @type {import('@maizzle/framework').Config} */

/*
|-------------------------------------------------------------------------------
| Development config                      https://maizzle.com/docs/environments
|-------------------------------------------------------------------------------
|
| The exported object contains the default Maizzle settings for development.
| This is used when you run `maizzle build` or `maizzle serve` and it has
| the fastest build time, since most transformations are disabled.
|
*/

module.exports = {
  baseURL: "../../../",

  build: {
    browsersync: {
      port: 3002,
      ui: { port: 3003 },
      watch: [],
    },
    templates: {
      filetypes: ['html', 'erb'],

      source: [
        'src/templates/roro'
      ],
      destination: {
        path: 'builds/build_local',
      },
      assets: {
        source: '../../app/javascript/images',
        destination: 'images'
      },
    },
  },
}
