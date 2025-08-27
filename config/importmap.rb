# Pin npm packages by running ./bin/importmap
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.min.js", preload: true

pin "application"

pin "bootstrap", 
    to: "bootstrap.esm.js", 
    integrity: "sha384-Hea0Yk7N2rQhmxzzIGikclw/jBEhpCDFFXi+rlgF1qZtC7eAazBGapuqKzAe6yXQ"

pin "@popperjs/core", 
    to: "@popperjs/core.js", 
    integrity: "sha384-bfekMOfeUlr1dHZfNaAFiuuOeD7r+Qh45AQ2HHJY7EAAI4QGJ6qx1Qq9gsbvS+60"
