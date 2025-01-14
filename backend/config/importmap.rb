# Pin npm packages by running ./bin/importmap

pin "application"
pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true
pin "sb-admin-2", to: "admin/sb-admin-2.js", preload: true
pin_all_from "app/javascript/admin/demo", under: "demo"