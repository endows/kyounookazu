if Meteor.isClient
  Template.siteList.helpers
    'sites':Stores.allSite
    'stockedSites':Stores.stockedSites
    'user_id':Meteor.userId
    'rankedSites':Stores.siteRanking
  Template.siteList.events
    'submit form':(e)->
      e.preventDefault()
      url = $('input').val()
      $('input').val('')
      Meteor.call('insertSite',url)
