if Meteor.isClient
  Template.index.helpers
    'sites':Stores.allSite
    'stockedSites':Stores.stockedSites
    'user_id':Meteor.userId
  Template.index.events
    'submit form':(e)->
      e.preventDefault()
      url = $('input').val()
      $('input').val('')
      Meteor.call('insertSite',url)
