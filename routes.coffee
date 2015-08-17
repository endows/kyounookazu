if Meteor.isClient
  Router.route '/',->
    @layout 'layout'
    @render 'siteList'
  Router.route '/popup/stock',->
    console.log @params
    Meteor.call 'insertSite',@params.query.url
    @render 'stockSuccess'

if Meteor.isServer
  Router.map ->
    @route '/api/site',
      where:'server'
      action:->
        Meteor.call 'insertSite',@params.query.url
        @response.setHeader('access-control-allow-origin', '*');
        @render 'ok'
