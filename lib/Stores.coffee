if Meteor.isClient
  window.Stores = {}
  Stores.allSite = ->
    Site.find().fetch().reverse()
  Stores.stockedSites = ->
    Site.find({user_id:Meteor.userId()}).fetch().reverse()
