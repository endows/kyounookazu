Template.ads.rendered = function() {
  $.getScript("//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", function() {
    var ads, adsbygoogle;
    ads = '<ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-8906694212148623" data-ad-slot="9120040662" data-ad-format="auto"></ins>';
    $('.leaderboard').html(ads);
    return (adsbygoogle = window.adsbygoogle || []).push({});
  });
};
