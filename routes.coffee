if Meteor.isClient
  Router.route '/',->
    @layout 'layout'
    @render 'siteList'
  Router.route '/popup/stock',->
    Meteor.call 'insertSite',@params.query.url
    setTimeout ->
      window.open('about:blank','_self').close();
    ,1000
    @render 'stockSuccess'

if Meteor.isServer
  Router.map ->
    @route '/api/site',
      where:'server'
      action:->
        Meteor.call 'insertSite',@params.query.url
        @response.setHeader('access-control-allow-origin', '*');
        @render 'ok'
