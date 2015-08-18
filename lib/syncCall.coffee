if Meteor.isServer
  Meteor.syncCall = (method_name,param)->
    response = Async.runSync((done) ->
      Meteor.call method_name,param,->
        done()
    )
    return response
