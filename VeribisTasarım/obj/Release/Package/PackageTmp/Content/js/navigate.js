function OpenPage(url,parametre,genislik,yukseklik) {
   
    var adres = url;
    var ara = /edit/gi;
    if (url.search(ara) != -1) {
        var adres = url + parametre;
    }
    else {
        if (parametre != null) {
            var adres = url + '?param=' + parametre;
        }
    }
   
   

    $.fancybox.open({
        href: adres,
        type: 'iframe',
        padding: 5,
        width: genislik,
        height: yukseklik,
        autoSize: false,
        overflow: 'hidden',
        scrolling: 'no',
       
    });
   
}





