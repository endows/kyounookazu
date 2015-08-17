if Meteor.isClient
  Router.map ->
    # @route '/',
    #   action: ->
    #      @render 'index'
    @route '/popup/stock',
      action: ->
         @render 'stockSuccess'
if Meteor.isServer
  Router.map ->
    @route '/api/site',
      where:'server'
      action:->
        Meteor.call 'insertSite',@params.query.url
        @response.setHeader('access-control-allow-origin', '*');
        @render 'ok'
