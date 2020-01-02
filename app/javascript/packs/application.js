/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// デフォルトのモーダルを作成
// Override the default dialog of Rails
// Rails.confirm = (message, element) =>{
//   Bootstrap.modal.confirm(message).then(

//     () => {
//       element.removeAttribute('data-confirm')
//       element.click()
//     },
//     () => {
//       false
//     }
//   )
//   return false
// }

require("@rails/ujs").start()
require("jquery")

import 'src/js/test'
import 'src/js/drop_field'
import 'src/js/hover_field'
import 'src/js/answer_field'
// import 'src/js/check_field'

import 'bootstrap'
import "jquery"
global.$ = require('jquery')


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

console.log('Hello World from Webpacker')
