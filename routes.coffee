if Meteor.isClient
  Router.map ->
    @route '/',
      waitOn: ->
        IRLibLoader.load '//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js'
      action: ->
         @render 'index'
    return
