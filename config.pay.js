/** @type {import('@maizzle/framework').Config} */

/*
|-------------------------------------------------------------------------------
| Production config                       https://maizzle.com/docs/environments
|-------------------------------------------------------------------------------
|
| This is where you define settings that optimize your emails for production.
| These will be merged on top of the base config.js, so you only need to
| specify the options that are changing.
|
*/

module.exports = {
  baseURL: "",

  build: {
    templates: {
      source: [
        'src/templates/roro/pay/user_mailer'
      ],
      destination: {
        path: '../../app/views/pay/user_mailer',
        extension: 'erb'
      },
      assets: {
        source: 'images',

        destination: '.'
      }
    },
  },
  inlineCSS: true,
  removeUnusedCSS: true,
  shorthandCSS: true,
  prettify: true,
}
