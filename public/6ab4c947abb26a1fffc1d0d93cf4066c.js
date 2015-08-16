














var ninja_ads_count = typeof(ninja_ads_count) == 'undefined' ? 1 : ninja_ads_count + 1;
(function(d){
    
    var cookie_name = 'ninja_adm_uid';
    var cookies = document.cookie + ";";
    var index = cookies.indexOf(cookie_name + "=");
    if (index == -1) {
        document.cookie = 'ninja_adm_uid=0a6f71cf-07ea-4421-9250-bf0141d776f3; expires=Mon Aug 15 07:34:06 GMT 2016; ';
    }
    
    document.write('<span id="ninja_iframe_' + ninja_ads_count + '" style="width:728px; height:90px;"><!--http://adm.shinobi.jp/a/6ab4c947abb26a1fffc1d0d93cf4066c--></span>');
    var script = d.createElement('script');
    var head = d.getElementsByTagName('head')[0];
    script.defer = 'defer';
    script.async = 'async';
    script.src  = 'http://st.shinobi.jp/img/services/admax/js/ads.js';
    head.insertBefore(script, head.firstChild);

    
    var ninja_script = d.createElement('script');
    ninja_script.defer = 'defer';
    ninja_script.async = 'async';
    ninja_script.src  = 'http://st.shinobi.jp/img/services/admaxdsp/static/javascripts/trac.js';
    head.insertBefore(ninja_script, head.firstChild);
    var bd = d.createElement('div');
    bd.setAttribute('style','position:absolute;left:0px;top:0px;visibility:hidden;');
    bd.innerHTML = '<img src="http://sync.fout.jp/sync?xid=ninja" width="0" height="0" alt="" /><img src="http://admax.socdm.com/rtb/sync?proto=admax&sspid=admax" width="0" height="0" alt="" /><img src="http://sync.shinobi.jp/pub?ssp=admax" width="0" height="0" alt="" /><img src="http://bypass.ad-stir.com/push_sync?xid=admax" width="0" height="0" alt="" /><img src="http://rs.adapf.com/ninjaadmax/csync?uid=0a6f71cf-07ea-4421-9250-bf0141d776f3" width="0" height="0" alt="" />'; 
    document.body.appendChild(bd);
    
})(document);


