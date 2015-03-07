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


function GoToPage(url, companyCode) {
    window.location.href = url;

    if (companyCode != '') {
        window.location.href = url + '?param=' + companyCode;
    }
}

function GoToPage(url, companyCode, contactCode) {
    window.location.href = url;

    if (companyCode != '' && companyCode != -1) {
        if (contactCode != '' && contactCode != -1) {
            window.location.href = url + '?param=' + companyCode + '-' + contactCode;
        }
        else {
            window.location.href = url + '?param=' + companyCode;
        }
    }
    else {
        if (contactCode != '' && contactCode != -1) {
            window.location.href = url + '?param=-' + contactCode;
        }
    }

}
