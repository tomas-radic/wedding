# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
# pin "jquery" # @3.7.1
pin "jquery", to: "jquery.min.js", preload: true
pin "jquery_ujs", to: "jquery_ujs.js", preload: true
pin "jquery-ui", to: "jquery-ui.min.js", preload: true

pin "easing.min", to: "easing.min.js", preload: true
pin "waypoints.min", to: "waypoints.min.js", preload: true
pin "owl.carousel", to: "owl.carousel.js", preload: true
pin "isotope.pkgd.min", to: "isotope.pkgd.min.js", preload: true
pin "main", to: "main.js", preload: true
