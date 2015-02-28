function OpenPage(url,parametre) {
  
    var adres = url;
    if (parametre != null) {
        var adres = url + '?param=' + parametre;
    }
   

    $.fancybox.open({
        href: adres,
        type: 'iframe',
        padding: 5,
        height: 500,
        autoSize: false,
        overflow: 'hidden',
        scrolling: 'no',

    });
   
}