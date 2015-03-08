<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Kisi.aspx.cs" Inherits="VeribisTasarım.Kisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Content/js/metro/metro-tab-control.js"></script>

    <%--fancy_box uygulamasını başlatan fonksiyon ve ilgili script--%>
    <script type="text/javascript" src="fancyBox/source/jquery.fancybox.js?v=2.1.5"></script>
    <script>
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
    </script>
    <script>
        function ShowTelefon(parametre) {
            OpenPage('TelefonEkle.aspx?edit=', parametre, 600, 400);
            return false;
        }

        function ShowAdres(parametre) {
            OpenPage('AdresEkle.aspx?edit=', parametre, 600, 400);
            return false;
        }
    </script>

    <%--fancy_box stil tanımı--%>
    <style type="text/css">
        .fancybox-custom .fancybox-skin
        {
            box-shadow: 0 0 50px #222;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>KİŞİ KARTI</h3>
        <div id="tabs" class="tab-control" data-role="tab-control">
            <ul class="tabs">
                <li class="active"><a href="#ListeAdi">Liste Adı</a></li>
                <li id="kisi"><a href="#KisiEkle">Kişi Ekle</a></li>
                <li><a href="#AktivitePlanla">Aktivite Planla</a></li>
                <li><a href="#NotEkle">Not Ekle</a></li>
                <li><a href="#Firsat" onclick="GoToPage('Firsat.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),$('#ContentPlaceHolder1_idCONTACT_CODE').val());return false;">Fırsat</a></li>
                <li><a href="#Teklif" onclick="GoToPage('Teklif.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),$('#ContentPlaceHolder1_idCONTACT_CODE').val());return false;">Teklif</a></li>
                <li><a href="#Numune" onclick="GoToPage('Numune.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),$('#ContentPlaceHolder1_idCONTACT_CODE').val());return false;">Numune</a></li>
                <li><a href="#Proforma" onclick="GoToPage('Proforma.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),$('#ContentPlaceHolder1_idCONTACT_CODE').val());return false;">Proforma</a></li>
                <li><a href="#Fatura" onclick="GoToPage('Fatura.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),$('#ContentPlaceHolder1_idCONTACT_CODE').val());return false;">Fatura</a></li>
                <li><a href="#EkForm">Ek Form</a></li>
                <li><a href="#AileBilgileri">Aile Bilgileri</a></li>
            </ul>
            <div class="frames" style="float: left; width: 100%">
                <div class="frame" id="ListeAdi">
                    <div class="KisiTableHizalama">
                        Firma:
                        <asp:DropDownList ID="drpCOMPANY_CODE" runat="server" OnSelectedIndexChanged="drpCOMPANY_CODE_SelectedIndexChanged" AutoPostBack="True" Height="30px" Width="20%"></asp:DropDownList>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="nGrid" DataKeyNames="CONTACT_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="Kişi bilgisine rastlanmadı.">

                            <Columns>

                                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClick="editContact" CommandArgument='<%# Eval("CONTACT_CODE")%>'></asp:ImageButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="FİRMA KODU">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCOMPANY_CODE" runat="server" Text='<%# Eval("COMPANY_CODE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="KİŞİ KODU">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCONTACT_CODE" runat="server"
                                            Text='<%# Eval("CONTACT_CODE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="AD">
                                    <ItemTemplate>
                                        <asp:Label ID="lblNAME" runat="server" Text='<%# Eval("NAME")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="SURMANE">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSURNAME" runat="server" Text='<%# Eval("SURNAME")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="ÜNVAN">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTITLE" runat="server" Text='<%# Eval("TITLE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="E-POSTE">
                                    <ItemTemplate>
                                        <asp:Label ID="lblMAIL" runat="server" Text='<%# Eval("MAIL")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>

                    </div>
                </div>
            </div>

        <div class="frames" style="float: left; width: 100%">
            <div class="frame" id="KisiEkle">
                <div class="KisiTableHizalama">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="idButtonKisiEkleYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" OnClick="idButtonKisiEkleYeni_Click" Height="30px" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonAdresYeni" runat="server" CssClass="bg-blue fg-white" Text="Adres Ekle" Height="30px" OnClientClick="if($('#ContentPlaceHolder1_idCONTACT_CODE').val()!='') OpenPage('AdresEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val()+'-'+$('#ContentPlaceHolder1_idCONTACT_CODE').val(),600,400);return false;" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonTelefonYeni" runat="server" CssClass="bg-blue fg-white" Text="Telefon Ekle" Height="30px" OnClientClick="if($('#ContentPlaceHolder1_idCONTACT_CODE').val()!='') OpenPage('TelefonEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val()+'-'+$('#ContentPlaceHolder1_idCONTACT_CODE').val(),600,400);return false;" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonKisiEkleKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" OnClick="idButtonKisiEkleKaydet_Click" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonKisiEkleSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                            </td>
                        </tr>
                    </table>
                    <div style="visibility: hidden;">
                        <asp:TextBox ID="idCONTACT_CODE" runat="server"></asp:TextBox>
                    </div>

                    <hr />

                    <div class="ALAN4">
                        <table class="KisiTable" id="Tablo1">
                            <tr>
                                <td width="35%">Çalıştığı Firma
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCOMPANY_CODE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Adı
                        
                                        <td width="2%">:
                                        </td>
                                    <td>
                                        <asp:TextBox ID="idNAME" MaxLength="200" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                            </tr>
                            <tr>
                                <td width="35%">Kontak İkinci Adı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idMIDDLE_NAME" MaxLength="50" Width="100%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Soyadı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idSURNAME" MaxLength="50" Width="100%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Kişi Özel Kodu
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idSPACIAL_CODE" MaxLength="50" Width="100%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Kontak Kısa Adı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idNICNAME" MaxLength="50" Width="100%" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td width="35%">Cinsiyet
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSEXUALITY" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Üye Dernekler
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idASSOCIATION_CODE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                        </table>

                    </div>
                    <div class="ALAN4">
                        <table class="KisiTable">
                            <tr>
                                <td width="35%">Departmanı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idDEPARTMENT" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Ünvanı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idTITLE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Grubu
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idGROUP_CODE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Temsilcisi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCONTACT_REPRESENT_CODE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Aktif
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSTATUS" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Doğum Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idBIRTHDATE" MaxLength="30" TextMode="Date" runat="server" Height="30px" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Bildiği Diller
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idLANGUAGE_CODE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td width="35%">Hitap
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idPRETITLE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                        </table>

                    </div>
                    <div class="ALAN4">
                        <table class="KisiTable">
                            <tr>
                                <td width="35%">Mail Adresi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idMAIL" MaxLength="100" Width="100%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Web Adresi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idPERSONALWEBADDRESS" MaxLength="150" Width="100%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Referans
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCONTACT_REFERANCE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Eğitimi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idEDUCATION" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Son Durum
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idLAST_STATE" MaxLength="1000" runat="server" Width="100%" Height="70px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>

                        </table>

                    </div>
                    <div class="ALAN6">
                        <br />
                        <asp:Button ID="idAdresEkle" runat="server" CssClass="bg-blue fg-white" Text="Adres Ekle" OnClientClick="if($('#ContentPlaceHolder1_idCONTACT_CODE').val()!='') OpenPage('AdresEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val()+'-'+$('#ContentPlaceHolder1_idCONTACT_CODE').val(),600,400);return false;" />
                        <table class="KisiTable">
                            <tr>
                                <td>
                                    <div class="gridDivAdres">
                                        <asp:GridView ID="idADDRESS" runat="server"
                                            AutoGenerateColumns="False" CssClass="mGrid" DataKeyNames="ADDRESS_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="Adres bilgisi mevcut değil.">

                                            <Columns>

                                                <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ImageUrl="~/image/Deleteicon.png" ID="lnkRemove" runat="server" OnClientClick="return confirm('Gerçekten silmek istiyor musunuz?')" OnClick="adresSil" CommandArgument='<%# Eval("ADDRESS_CODE")%>'></asp:ImageButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClientClick='<%# Eval("ADDRESS_CODE", "ShowAdres({0});return false;") %>' CommandArgument='<%# Eval("ADDRESS_CODE")%>'></asp:ImageButton>

                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="ADDRESS_CODE" ItemStyle-Width="5%" Visible="false">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblADDRESS_CODE" runat="server" Text='<%# Eval("ADDRESS_CODE")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="TÜR" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTUR" runat="server" Text='<%# Eval("TUR")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="ADRES" ItemStyle-Width="15%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblADRES" runat="server"
                                                            Text='<%# Eval("ADRES")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="ÜLKE" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblULKE" runat="server" Text='<%# Eval("ULKE")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="İL" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblIL" runat="server" Text='<%# Eval("IL")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="İLÇE" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblILCE" runat="server" Text='<%# Eval("ILCE")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                            </Columns>
                                        </asp:GridView>
                                    </div>

                                </td>
                            </tr>
                        </table>

                    </div>
                    <div class="ALAN6">
                        <br />
                        <asp:Button ID="idTelefonEkle" runat="server" CssClass="bg-blue fg-white" Text="Telefon Ekle" OnClientClick="if($('#ContentPlaceHolder1_idCONTACT_CODE').val()!='') OpenPage('TelefonEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val()+'-'+$('#ContentPlaceHolder1_idCONTACT_CODE').val(),600,400);return false;" />
                        <table class="KisiTable">
                            <tr>

                                <td>
                                    <div class="gridDivTelefon">
                                        <asp:GridView ID="idPHONE" runat="server"
                                            AutoGenerateColumns="False" CssClass="mGrid" DataKeyNames="PHONE_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="Telefon bilgisi mevcut değil.">

                                            <Columns>

                                                <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ImageUrl="~/image/Deleteicon.png" ID="lnkRemove" runat="server" OnClientClick="return confirm('Gerçekten silmek istiyor musunuz?')" OnClick="telefonSil" CommandArgument='<%# Eval("PHONE_CODE")%>'></asp:ImageButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClientClick='<%# Eval("PHONE_CODE", "ShowTelefon({0});return false;") %>' CommandArgument='<%# Eval("PHONE_CODE")%>'></asp:ImageButton>

                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="PHONE_CODE" ItemStyle-Width="5%" Visible="false">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPHONE_CODE" runat="server" Text='<%# Eval("PHONE_CODE")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="TÜR" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTUR" runat="server" Text='<%# Eval("TUR")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="TELEFON" ItemStyle-Width="15%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTELEFON" runat="server"
                                                            Text='<%# Eval("TELEFON")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                            </Columns>
                                        </asp:GridView>
                                    </div>


                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="frame" id="AktivitePlanla"></div>
            <div class="frame" id="NotEkle">
                <div class="KisiTableHizalama">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="idButtonNotEkleYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonNotEkleKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonNotEkleSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                            </td>
                        </tr>
                    </table>

                    <asp:TextBox ID="idNOTE_CODE" runat="server" Visible="False"></asp:TextBox>
                    <hr />

                    <div class="ALAN6">
                        <table class="KisiTable">
                            <tr>
                                <td width="15%">Tarih
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idSDATE" Width="100%" Height="30px" TextMode="Date" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Açıklama
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idEXPLANATION" Width="100%" Height="100px" TextMode="MultiLine" MaxLength="1000" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                        </table>

                    </div>

                </div>

            </div>
            <div class="frame" id="Firsat"></div>
            <div class="frame" id="Teklif"></div>
            <div class="frame" id="Numune"></div>
            <div class="frame" id="Proforma"></div>
            <div class="frame" id="Fatura"></div>
            <div class="frame" id="EkForm"></div>
            <div class="frame" id="AileBilgileri">
                <div class="KisiTableHizalama">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="idButtonAileBilgileriYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonAileBilgileriKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" OnClick="idButtonAileBilgileriKaydet_Click" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonAileBilgileriSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                            </td>
                        </tr>
                    </table>
                    <asp:TextBox ID="idAileBilgileriCONTACT_CODE" runat="server" Visible="False"></asp:TextBox>
                    <hr />

                    <div class="ALAN6">
                        <table class="KisiTable">
                            <tr>
                                <td width="40%">Medeni Hali
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <%-- <asp:DropDownList ID="idISMARRIED" runat="server" Height="30px" Width="100%" OnSelectedIndexChanged="idISMARRIED_SelectedIndexChanged">
                                        </asp:DropDownList>--%>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">Evlilik Yıldönümü
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idANNIVERSARY_DATE" Width="100%" Height="30px" TextMode="Date" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">Eşinin Adı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idPARTNER_NAME" Width="100%" Height="30px" MaxLength="30" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">Eşinin İkinci Adı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idPARTNER_MIDDLE_NAME" Width="100%" Height="30px" MaxLength="30" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">Eşinin Soyadı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idPARTNER_SURNAME" Width="100%" Height="30px" MaxLength="30" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">Çocuk Sayısı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idCHILD_COUNT" Width="100%" Height="30px" MaxLength="10" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">Evi var mı?
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idHAVE_HOME" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">Ev Skalası
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idHOME_RATING" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>

    </div>

</asp:Content>
