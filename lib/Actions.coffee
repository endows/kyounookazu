if Meteor.isServer
  Meteor.methods 'insertSite': (url) ->
    request.sync("http://free.pagepeeker.com/v2/thumbs.php?size=x&url=#{url}");
    websiteData = Scrape.website url
    Site.insert url:url,title:websiteData.title
