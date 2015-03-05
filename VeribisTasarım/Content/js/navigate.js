function OpenPage(url,parametre,genislik,yukseklik) {
  
    var adres = url;
    if (parametre != null) {
        var adres = url + '?param=' + parametre;
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