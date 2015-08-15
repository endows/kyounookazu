if Meteor.isClient
  window.Stores = {}
  Stores.allSite = ->
    Site.find().fetch().reverse()
