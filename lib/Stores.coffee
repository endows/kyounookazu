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
  Stores.siteRanking = ->
    stocks = Stock.find().fetch()
    groupedDates = _.groupBy(_.pluck(stocks, 'site_id'));
    result = []
    Object.keys(groupedDates).forEach (site_id)->
      _site = Site.findOne(site_id)
      _site.stockCnt = groupedDates[site_id].length
      result.push _site
    result.sort (a,b)->
      return a.stockCnt < b.stockCnt
    result
