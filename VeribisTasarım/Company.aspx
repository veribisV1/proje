﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="VeribisTasarım.Company" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<<<<<<< HEAD
    <script src="Content/js/metro/metro-tab-control.js"></script>
    <script src="Content/js/metro/metro-calendar.js"></script>
    <script src="Content/js/metro/metro-datepicker.js"></script>
=======

>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f
    <%--fancy_box uygulamasını başlatan fonksiyon ve ilgili script--%>
    <script type="text/javascript" src="fancyBox/source/jquery.fancybox.js?v=2.1.5"></script>
    <script type="text/javascript">


        function baslat(siraNo) {
            var firmaKodu = $('#ContentPlaceHolder1_idCOMPANY_CODE').val();
<<<<<<< HEAD


=======
            
         
>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f
            if (firmaKodu != null) {
                switch (siraNo) {
                    case 1:
                        adres = 'AdresEkle.aspx?firma=' + firmaKodu;
                        break;
                    case 2:
                        adres = 'TelefonEkle.aspx?firma=' + firmaKodu;
                        break;

                    default:
<<<<<<< HEAD

                }
                $.fancybox.open({
                    href: adres,
                    type: 'iframe',
                    padding: 5,


=======

                }
                $.fancybox.open({
                    href: adres,
                    type: 'iframe',
                    padding: 5,


>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f

                });
            }
            else {
                alert("Firmayı kaydetmeniz gerekli!");
            }

<<<<<<< HEAD
        }


    </script>

    <script>
        $("#datepicker").datepicker();
    </script>

    <%--fancy_box stil tanımı--%>
   <%-- <style type="text/css">
        .fancybox-custom .fancybox-skin
        {
            box-shadow: 0 0 50px #222;
        }
    </style>--%>
=======
        }

       
    </script>

    <%--fancy_box stil tanımı--%>
    <style type="text/css">
        .fancybox-custom .fancybox-skin
        {
            box-shadow: 0 0 50px #222;
        }
    </style>
>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div style="width:100%;float:left;margin-left:10px;">
        <h3>FİRMA KARTI</h3>
        <%--<div class="tabmenu">--%>
        <div class="tab-control" data-role="tab-control">
             <ul class="tabs">
                <li class="active"><a href="#ListeAdi">Liste Adı</a></li>
                <li><a href="#FirmaEkle">Firma Ekle</a></li>
               <li><a href="#MakinaParki">Makina Parkı</a></li>
                <li><a href="#RakipFirma">Rakip Firma</a></li>
                <li><a href="#RakipUrun">Rakip Ürün</a></li>
                <li><a href="#Kontak">Kontak</a></li>
                <li><a href="#Numune">Numune</a></li>
                <li><a href="#Proforma">Proforma</a></li>
                <li><a href="#Fatura">Fatura</a></li>
                <li><a href="#EkForm">Ek Form</a></li>
            </ul>
<<<<<<< HEAD

            <div class="frames" style="float:left;width:100%">
               
                <div class="frame" id="ListeAdi">
                    <div class="KisiTableHizalama">
                        <div>
                            <div class="menu">
                                <asp:TextBox ID="txtSearch" runat="server" CssClass="searchText" />
                            </div>

                            <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField HeaderStyle-Width="150px" DataField="COMPANY_CODE" HeaderText="COMPANY CODE"
                                        ItemStyle-CssClass="ContactName" />
                                    <asp:BoundField HeaderStyle-Width="150px" DataField="COMPANY_NAME" HeaderText="COMPANY NAME" />
                                    <asp:BoundField HeaderStyle-Width="150px" DataField="ADDRESS" HeaderText="ADDRESS" />
                                    <asp:BoundField HeaderStyle-Width="150px" DataField="SECTOR" HeaderText="SECTOR" />
                                    <asp:BoundField HeaderStyle-Width="150px" DataField="PHONE" HeaderText="ADDRESS" />
                                    <asp:BoundField HeaderStyle-Width="150px" DataField="MAIL" HeaderText="MAIL" />
                                    <asp:BoundField HeaderStyle-Width="150px" DataField="WEBADDRESS" HeaderText="WEB ADDRESS" />
                                </Columns>
                            </asp:GridView>

                            <div class="Pager"></div>
                        </div>

                    </div>
                </div>

                <div class="frame" id="FirmaEkle">
                    <div class="KisiTableHizalama">
                        <table>
=======
            <div id="FirmaEkle" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFirmaEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <tr>
                            <td>
                                <asp:Button ID="idButtonAdresYeni" runat="server" CssClass="ButtonYeni" Text="Adres Ekle" BackColor="#012353" ForeColor="White"  />
                            </td>
                        </tr>
                        <tr>
>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonFirmaEkleYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonAdresYeni" runat="server" CssClass="bg-blue fg-white" Text="Adres Ekle" Height="30" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonTelefonYeni" runat="server" CssClass="bg-blue fg-white" Text="Telefon Ekle" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonFirmaEkleKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" OnClick="idButtonFirmaEkleKaydet_Click1" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonFirmaEkleSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                                </td>
                            </tr>
                        </table>
                       
                        <hr />

                       
                            <div style="width: 32%; float: left; margin-left: 10px;">
                                <table class="KisiTable" id="Table1">

                                    <tr>
                                        <td width="35%">Firma Adı
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idCOMPANY_NAME" MaxLength="200" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Kodu
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idCOMPANY_COMMERCIAL_CODE" MaxLength="30" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Temsilcisi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idCOMPANY_REPRESENT_CODE" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Sektörü
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idSECTOR" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>


                                        </td>
                                    </tr>



                                    <tr>
                                        <td width="35%">&nbsp;</td>
                                        <td width="2%"></td>
                                        <td>
<<<<<<< HEAD
                                            <asp:TextBox ID="idCOMPANY_CODE" runat="server" Visible="True"></asp:TextBox>
=======
                                            <asp:TextBox ID="idCOMPANY_CODE" runat="server" Visible="False"></asp:TextBox>
>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f
                                        </td>
                                    </tr>


                                </table>


                            </div>
                            <div style="width: 32%; float: left; margin-left: 10px;">
                                <table class="KisiTable">
                                    <tr>
                                        <td width="35%">Tipi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idCOMPANY_SPECIAL_TYPE" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Aktif
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idSTATUS" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Bağlı Firma
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idUPPER_COMPANY_CODE" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Bölgesi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idCOMPANY_REGION" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Vergi Dairesi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idTAX_DEPARTMENT" MaxLength="30" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Vergi Numarası
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idTAX_NO" MaxLength="30" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Grubu
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idGROUP_CODE" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Mail
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idMAIL" MaxLength="100" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Web Adresi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idWEBADDRESS" MaxLength="150" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Kuruluş Tarihi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
<<<<<<< HEAD

                                            <asp:TextBox ID="idFOUNDATION_DATE" runat="server" Width="100%" Height="30px" TextMode="Date"></asp:TextBox>
=======
                                            <asp:TextBox ID="idFOUNDATION_DATE" runat="server" Width="101%" Height="25px" TextMode="Date"></asp:TextBox>
>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f
                                        </td>
                                    </tr>


                                </table>

                            </div>
                            <div style="width: 32%; float: left; margin-left: 10px;">
                                <table class="KisiTable">
                                    <tr>
                                        <td width="35%">Referans
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idCOMPANY_REFERANCE" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Yıllık Cirosu
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idENDORSEMENT" MaxLength="20" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">İskonto Oranı
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idDISCOUNT_RATIO" MaxLength="20" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Para Birimi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idCURRENCY_TYPE" runat="server" Width="100%" Height="30px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Sahibi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idCOMPANY_OWNER" MaxLength="30" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Ödeme Yetkilisi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idPAYMENT_PERSON" MaxLength="30" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Satın Alma Yetkilisi
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idPURCHASE_PERSON" MaxLength="30" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Teslimat Sorumlusu
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idWAREHOUSE_PERSON" MaxLength="30" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Ödeme Şekli
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idPAYMENT_TYPE" runat="server" Height="30px" Width="100%">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%">Ödeme Günü
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idPAYMENT_DAY" MaxLength="30" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                            <div style="width: 48%; float: left; margin-left: 10px;">
                                <br />


                                <asp:Button ID="idAdresEkle" runat="server" CssClass="AdresEkle" Text="Adres Ekle" OnClientClick="baslat(1);return false;" />

                                <table class="KisiTable">
                                    <tr>

                                        <td>
                                            <div class="gridDivAdres">
                                                <asp:GridView ID="idADDRESS" runat="server" CssClass="gridEn" EmptyDataText="Adres bilgisi mevcut değil.">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <EmptyDataRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" Height="50px" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                </asp:GridView>
                                            </div>
                                        </td>
                                    </tr>


                                </table>

                            </div>
                            <div style="width: 48%; float: left; margin-left: 10px;">
                                <br />
                                <asp:Button ID="idTelefonEkle" runat="server" CssClass="TelefonEkle" Text="Telefon Ekle" OnClientClick="baslat(2);return false;" />
                                <table class="KisiTable">
                                    <tr>

                                        <td>
                                            <div class="gridDivTelefon">
                                                <asp:GridView ID="idPHONE" runat="server" CssClass="gridEn" EmptyDataText="İletişim bilgisi mevcut değil.">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <EmptyDataRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" Height="50px" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                </asp:GridView>
                                            </div>

                                        </td>
                                    </tr>
                                </table>
                            </div>
<<<<<<< HEAD
                      
=======
                </div>
            </div>
            <div id="ListeAdi">
                <div class="KisiTableHizalama">
                    <div>
                        <div class="menu">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="searchText" />
                        </div>

                        <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField HeaderStyle-Width="150px" DataField="COMPANY_CODE" HeaderText="COMPANY CODE"
                                    ItemStyle-CssClass="ContactName" />
                                <asp:BoundField HeaderStyle-Width="150px" DataField="COMPANY_NAME" HeaderText="COMPANY NAME" />
                                <asp:BoundField HeaderStyle-Width="150px" DataField="ADDRESS" HeaderText="ADDRESS" />
                                <asp:BoundField HeaderStyle-Width="150px" DataField="SECTOR" HeaderText="SECTOR" />
                                <asp:BoundField HeaderStyle-Width="150px" DataField="PHONE" HeaderText="ADDRESS" />
                                <asp:BoundField HeaderStyle-Width="150px" DataField="MAIL" HeaderText="MAIL" />
                                <asp:BoundField HeaderStyle-Width="150px" DataField="WEBADDRESS" HeaderText="WEB ADDRESS" />
                            </Columns>
                        </asp:GridView>

                        <div class="Pager"></div>
>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f
                    </div>
                </div>

                <div class="frame" id="MakinaParki">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonMakinaParkiYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonMakinaParkiKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonMakinaParkiSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                                </td>
                            </tr>
                        </table>
               
                        <hr />
                        <div style="width:100%;margin-left:10px;">

                            <table class="KisiTable">
                                <tr>
                                    <td width="15%">Markası
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idNAME" runat="server" Height="28px" Width="29%"></asp:DropDownList>
                                    </td>

                                </tr>
                                <tr>
                                    <td width="15%">Modeli
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMODEL" runat="server" MaxLength="50" Height="20px" Width="27.8%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Yılı
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_YILI" runat="server" Height="28px" Width="9%"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Adet
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idAMOUNT" runat="server" MaxLength="20" Width="7.8%" Height="20px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Deger1
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMAKINAPARKI_DEGER1" runat="server" MaxLength="20" Width="7.8%" Height="20px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Deger2
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMAKINAPARKI_DEGER2" runat="server" MaxLength="20" Width="7.8%" Height="20px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Tip1
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP1" runat="server" Height="28px" Width="19%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Tip2
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP2" runat="server" Height="28px" Width="19%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Tip3
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP3" runat="server" Height="28px" Width="19%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Tip4
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP4" runat="server" Height="28px" Width="19%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Tip5
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP5" runat="server" Height="28px" Width="19%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Açıklama
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMAKINAPARKI_ACIKLAMA" MaxLength="1000" TextMode="MultiLine" Height="70px" Width="28%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="frame" id="RakipFirma">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonRakipFirmaYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonRakipFirmaKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonRakipFirmaSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                                </td>
                            </tr>
                        </table>

                        <hr />
                        <div class="ALAN4">

                            <table class="KisiTable">
                                <tr>
                                    <td>
                                        <asp:GridView ID="idRAKIP_FIRMALAR" runat="server"></asp:GridView>
                                        <asp:GridView ID="idBU_FIRMADAKI_RAKIP_FIRMALAR" runat="server"></asp:GridView>
                                    </td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>

                <div class="frame" id="RakipUrun">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonRakipUrunYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonRakipUrunKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonRakipUrunSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                                </td>
                            </tr>
                        </table>
                     
                        <hr />
                        <div class="ALAN12">

                            <table class="KisiTable">
                                <tr>
                                    <td width="15%">Rakip Firma Adı
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idRIVAL_COMPANY_NAME" MaxLength="150" Width="20%" runat="server"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr>
                                    <td width="15%">Ürün Adı
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPRODUCT_NAME" MaxLength="150" Width="20%" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Fiyati
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPRICE" MaxLength="20" Width="20%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Para Birimi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCUR_TYPE" runat="server" Height="30px" Width="21%">
                                        </asp:DropDownList>
                                    </td>
                                    <tr>
                                        <td width="15%">Ödeme Şekli
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idPEYMENT_TYPE" runat="server" Height="30px" Width="21%">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="15%">Miktar
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idQUANTITY" Width="5%" runat="server" MaxLength="20"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="15%">Birim
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idUNIT" runat="server" Height="30px" Width="21%">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="15%">Dönem
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idPERIOD" runat="server" Height="30px" Width="21%">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                            </table>


                        </div>
                    </div>
                </div>

                <div class="frame" id="Kontak"></div>
                <div class="frame" id="Numune"></div>
                <div class="frame" id="Proforma"></div>
                <div class="frame" id="Fatura"></div>
                <div class="frame" id="Ek Form"></div>
            
            </div>
        </div>
    </div>

   
</asp:Content>
