if Meteor.isServer
  Meteor.methods
    'insertSite': (url) ->
      request.sync("http://free.pagepeeker.com/v2/thumbs.php?size=x&url=#{url}");
      if ! Site.findOne({url:url})
        websiteData = Scrape.website url
        Site.insert
          url:url
          title:websiteData.title
          user_id:@userId
    'stockSite': (url) ->
      site = Site.findOne({url:url})
      Stock.insert
        user_id:@userId
        site_id:site._id
