// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

require('fomantic-ui')
import 'fomantic-ui/dist/semantic.min.css'
import '@fortawesome/fontawesome-free/css/all'
import toastr from 'toastr'

Rails.start()
Turbolinks.start()
ActiveStorage.start()
global.toastr = toastr

// require('bootstrap/dist/js/bootstrap.bundle.min')

require('./general')
import 'stylesheets/application'

