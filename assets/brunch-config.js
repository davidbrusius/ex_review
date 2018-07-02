exports.config = {
  // See http://brunch.io/#documentation for docs.
  files: {
    javascripts: {
      joinTo: 'js/app.js'
    },
    stylesheets: {
      joinTo: 'css/app.css',
      order: {
        after: ['assets/css/app.scss'] // concat app.css last
      }
    },
    templates: {
      joinTo: 'js/app.js'
    }
  },
  conventions: {
    assets: /^(static)/
  },
  paths: {
    watched: ['static', 'css', 'js', 'vendor'],
    public: '../priv/static'
  },
  plugins: {
    babel: {
      ignore: [/vendor/]
    },
    sass: {
      options: {
        includePaths: ['node_modules/bootstrap/scss'],
        precision: 8
      }
    }
  },
  modules: {
    autoRequire: {
      'js/app.js': ['js/app']
    }
  },
  npm: {
    enabled: true,
    globals: {
      $: 'jquery',
      jQuery: 'jquery',
      Popper: 'popper.js',
      bootstrap: 'bootstrap'
    }
  }
};
