if Meteor.isClient
  Router.map ->
    @route '/',
      waitOn: ->
        IRLibLoader.load '//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js'
      action: ->
         @render 'index'
if Meteor.isServer
  Router.map ->
    @route '/api/site',
      where:'server'
      action:->
        console.log @params.query
        Meteor.call 'insertSite',@params.query.url
        @response.setHeader('access-control-allow-origin', '*');
        @render 'ok'
