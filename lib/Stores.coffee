if Meteor.isClient
  window.Stores = {}
  Stores.allSite = ->
    Site.find().fetch().reverse()
  Stores.stockedSites = ->
    site_ids = []
    my_stocks = Stock.find({user_id:Meteor.userId()})
    my_stocks.map (stock)->
      site_ids.push stock.site_id
    Site.find({_id:{$in:site_ids}}).fetch().reverse()
