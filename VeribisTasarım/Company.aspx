<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="VeribisTasarım.Company" SmartNavigation="True" MaintainScrollPositionOnPostback="true" %>

<%@ Import Namespace="VeribisTasarım.Controller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="Content/js/metro/metro-tab-control.js"></script>

    <%--fancy_box uygulamasını başlatan fonksiyon ve ilgili script--%>
    <script type="text/javascript" src="fancyBox/source/jquery.fancybox.js?v=2.1.5"></script>
    <script>
        function GoToPage(url, companyCode) {
            window.location.href = url;

            if (companyCode != '') {
                window.location.href = url + '?param=' + companyCode;
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

    <link href="Content/css/multiple-select.css" rel="stylesheet" />
    <script src="Content/js/jquery.multiple.select.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ALAN12">
        <h3><%=ResGetir.resGetir(2)%></h3>

        <div class="tab-control" data-role="tab-control">
            <ul class="tabs">

                <li id="liste"><a href="#ListeAdi" class="active"><%=ResGetir.resGetir(217)%></a></li>
                <li id="firma"><a href="#FirmaEkle"><%=ResGetir.resGetir(131)%></a></li>
                <li><a href="#MakinaParki"><%=ResGetir.resGetir(126)%></a></li>
                <li><a href="#RakipFirma"><%=ResGetir.resGetir(175)%></a></li>
                <li><a href="#RakipUrun"><%=ResGetir.resGetir(176)%></a></li>
                <li><a href="#Kontak" onclick="OpenPage('KisiListe.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),600,400);return false;"><%=ResGetir.resGetir(1)%></a></li>
                <li><a href="#Numune" onclick="GoToPage('Numune.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val());return false;"><%=ResGetir.resGetir(637)%></a></li>
                <li><a href="#Proforma" onclick="GoToPage('Proforma.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val());return false;"><%=ResGetir.resGetir(636)%></a></li>
                <li><a href="#Fatura" onclick="GoToPage('Fatura.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val());return false;"><%=ResGetir.resGetir(211)%></a></li>
                <li><a href="#EkForm"><%=ResGetir.resGetir(573)%></a></li>


            </ul>

            <div class="frames" style="float: left; width: 100%">

                <div class="frame" id="ListeAdi">
                    <div class="KisiTableHizalama">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="nGrid" DataKeyNames="COMPANY_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="Firma bilgisine rastlanmadı.">

                            <Columns>

                                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClick="editCompany" CommandArgument='<%# Eval("COMPANY_CODE")%>'></asp:ImageButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="FİRMA ADI">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCOMPANY_NAME" runat="server" Text='<%# Eval("COMPANY_NAME")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="ADRESS">
                                    <ItemTemplate>
                                        <asp:Label ID="lblADDRESS" runat="server"
                                            Text='<%# Eval("ADDRESS")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="SEKTÖR">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSECTOR" runat="server" Text='<%# Eval("SECTOR")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="TELEFON">
                                    <ItemTemplate>
                                        <asp:Label ID="lblPHONE" runat="server" Text='<%# Eval("PHONE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="E-POSTA">
                                    <ItemTemplate>
                                        <asp:Label ID="lblMAIL" runat="server" Text='<%# Eval("MAIL")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="WEB ADRESİ">
                                    <ItemTemplate>
                                        <asp:Label ID="lblWEBADDRESS" runat="server" Text='<%# Eval("WEBADDRESS")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>

                    </div>
                </div>

                <div class="frame" id="FirmaEkle">
                    <div class="KisiTableHizalama">
                        <table>

                            <tr>
                                <td>
                                    <asp:Button ID="idButtonFirmaEkleYeni" runat="server" CssClass="bg-blue fg-white" PostBackUrl="#FirmaEkle" OnClick="idButtonFirmaEkleYeni_Click" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonAdresYeni" runat="server" CssClass="bg-blue fg-white" Height="30" OnClientClick="if($('#ContentPlaceHolder1_idCOMPANY_CODE').val()!='') OpenPage('AdresEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),600,400);return false;" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonTelefonYeni" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClientClick="if($('#ContentPlaceHolder1_idCOMPANY_CODE').val()!='') OpenPage('TelefonEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),600,400);return false;" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonFirmaEkleKaydet" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClick="idButtonFirmaEkleKaydet_Click1" OnClientClick="return confirm('Firma bilgisi kaydedilmiştir.')" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonFirmaEkleSil" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>

                                <td>
                                    <asp:Button ID="idButtonKisileriListele" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClientClick="OpenPage('KisiListe.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),600,400);return false;" />
                                </td>
                            </tr>
                        </table>

                        <hr />

                        <div class="ALAN4">
                            <table class="KisiTable" id="Table1">

                                <tr>
                                    <td width="35%">Firma Adı
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCOMPANY_NAME" MaxLength="200" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Kodu
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCOMPANY_COMMERCIAL_CODE" Height="30px" Width="100%" MaxLength="30" runat="server"></asp:TextBox>
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
                                        <div style="visibility: hidden;">
                                            <asp:TextBox ID="idCOMPANY_CODE" runat="server" Width="100%" Visible="True"></asp:TextBox>

                                            <asp:TextBox ID="idADDRESS" runat="server" Width="100%" Visible="true"></asp:TextBox>
                                        </div>

                                    </td>
                                </tr>

                            </table>


                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(14)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_SPECIAL_TYPE" runat="server" Width="100%" Height="30px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(16)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSTATUS" runat="server" Width="100%" Height="30px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(23)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idUPPER_COMPANY_CODE" runat="server" Width="100%" Height="30px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(18)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_REGION" runat="server" Width="100%" Height="30px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(19)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idTAX_DEPARTMENT" MaxLength="30" Height="30px" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(20)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idTAX_NO" MaxLength="30" Height="30px" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(17)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:ListBox ID="idGROUP_CODE" runat="server" Width="100%" Height="30px" SelectionMode="Multiple"></asp:ListBox>
                                        <script type="text/javascript">
                                            $('#ContentPlaceHolder1_idGROUP_CODE').multipleSelect();
                                        </script>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(11)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMAIL" MaxLength="100" Height="30px" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(12)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idWEBADDRESS" MaxLength="150" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(15)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>

                                        <asp:TextBox ID="idFOUNDATION_DATE" Width="100%" Height="30px" TextMode="Date" runat="server"></asp:TextBox>

                                    </td>
                                </tr>


                            </table>

                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(13)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_REFERANCE" runat="server" Width="100%" Height="30px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(30)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idENDORSEMENT" MaxLength="20" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(31)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDISCOUNT_RATIO" MaxLength="20" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(32)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCURRENCY_TYPE" runat="server" Width="100%" Height="30px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(24)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCOMPANY_OWNER" MaxLength="30" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(25)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPAYMENT_PERSON" MaxLength="30" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(26)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPURCHASE_PERSON" MaxLength="30" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(27)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idWAREHOUSE_PERSON" MaxLength="30" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(28)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idPAYMENT_TYPE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(29)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPAYMENT_DAY" MaxLength="30" Width="100%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>

                        </div>
                        <div class="ALAN6">
                            <br />

                            <asp:Button ID="idAdresEkle" runat="server" CssClass="bg-blue fg-white" Text="Adres Ekle" OnClientClick="if($('#ContentPlaceHolder1_idCOMPANY_CODE').val()!='') OpenPage('AdresEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),600,400);return false;" />


                            <table class="KisiTable">
                                <tr>

                                    <td>
                                        <div class="gridDivAdres">


                                            <asp:GridView ID="grdADDRESS" runat="server"
                                                AutoGenerateColumns="False" CssClass="mGrid" DataKeyNames="ADDRESS_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="Adres bilgisi mevcut değil.">

                                                <Columns>

                                                    <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ImageUrl="~/image/Deleteicon.png" ID="lnkRemove" runat="server" OnClientClick="return confirm('Gerçekten silmek istiyor musunuz?')" OnClick="lnkRemove_Click" CommandArgument='<%# Eval("ADDRESS_CODE")%>'></asp:ImageButton>
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


                            <asp:Button ID="idTelefonEkle" runat="server" CssClass="bg-blue fg-white" Text="Telefon Ekle" OnClientClick="if($('#ContentPlaceHolder1_idCOMPANY_CODE').val()!='') OpenPage('TelefonEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),600,400);return false;" />


                            <table class="KisiTable">
                                <tr>

                                    <td>
                                        <div class="gridDivTelefon">
                                            <asp:GridView ID="gridPHONE" runat="server"
                                                AutoGenerateColumns="False" CssClass="mGrid" DataKeyNames="PHONE_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="Telefon bilgisi mevcut değil.">

                                                <Columns>

                                                    <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ImageUrl="~/image/Deleteicon.png" ID="lnkRemove" runat="server" OnClientClick="return confirm('Gerçekten silmek istiyor musunuz?')" OnClick="telefonSil" CommandArgument='<%# Eval("PHONE_CODE")+ "," + Eval("PHONE_TYPE_ID")%>'></asp:ImageButton>
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


                <div class="frame" id="MakinaParki">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonMakinaParkiYeni" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonMakinaParkiKaydet" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClick="idButtonMakinaParkiKaydet_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonMakinaParkiSil" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                            </tr>
                        </table>

                        <hr />
                        <div class="ALAN12">

                            <table class="KisiTable">
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(141)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idNAME" runat="server" Height="30px" Width="60%"></asp:DropDownList>
                                    </td>

                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(298)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMODEL" runat="server" MaxLength="50" Height="30px" Width="60%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(151)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_YILI" runat="server" Height="30px" Width="60%"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(142)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idAMOUNT" runat="server" MaxLength="20" Width="60%" Height="30px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(18)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMAKINAPARKI_DEGER1" runat="server" MaxLength="20" Width="60%" Height="30px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(18)%>2
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMAKINAPARKI_DEGER2" runat="server" MaxLength="20" Width="60%" Height="30px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(14)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP1" runat="server" Height="30px" Width="60%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(14)%>2
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP2" runat="server" Height="30px" Width="60%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(14)%>3
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP3" runat="server" Height="30px" Width="60%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(14)%>4
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP4" runat="server" Height="30px" Width="60%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(14)%>5
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMAKINAPARKI_TIP5" runat="server" Height="30px" Width="60%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(206)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idMAKINAPARKI_ACIKLAMA" MaxLength="1000" TextMode="MultiLine" Height="70px" Width="100%" runat="server"></asp:TextBox>
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
                                    <asp:Button ID="idButtonRakipFirmaYeni" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClientClick="OpenPage('RakipFirmaEkle.aspx',$('#ContentPlaceHolder1_idCOMPANY_CODE').val(),600,400);return false;" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonRakipFirmaKaydet" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonRakipFirmaSil" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                            </tr>
                        </table>

                        <hr />
                        <div class="ALAN4">

                            <table class="KisiTable">
                                <tr>
                                    <td>
                                        <%--<asp:GridView ID="idRAKIP_FIRMALAR" runat="server"></asp:GridView>
                                        <asp:GridView ID="idBU_FIRMADAKI_RAKIP_FIRMALAR" runat="server"></asp:GridView>--%>
                                        <span style="font-size:small">Rakip Firmalar Listesi</span>
                                        <asp:ListBox ID="idRAKIP_FIRMALAR" runat="server" CssClass="liste"></asp:ListBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="idRakipFirmaEkle" runat="server" Text=">>" width="100%" CssClass="bg-blue fg-white" /><br /><br />
                                        <asp:Button ID="idRakipFirmaCikar" runat="server" Text="<<" width="100%" CssClass="bg-blue fg-white" />

                                    </td>
                                    <td>
                                        <span style="font-size:small">Bu Firmadaki Rakip Firmalar</span>
                                        <asp:ListBox ID="idBU_FIRMADAKI_RAKIP_FIRMALAR" runat="server" CssClass="liste"></asp:ListBox>
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
                                    <asp:Button ID="idButtonRakipUrunYeni" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonRakipUrunKaydet" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonRakipUrunSil" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                            </tr>
                        </table>

                        <hr />
                        <div class="ALAN12">

                            <table class="KisiTable">
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(172)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idRIVAL_COMPANY_NAME" MaxLength="150" Width="40%" Height="30px" runat="server"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(373)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPRODUCT_NAME" MaxLength="150" Width="40%" Height="30px" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(198)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPRICE" MaxLength="20" Width="40%" Height="30px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%"><%=ResGetir.resGetir(32)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCUR_TYPE" runat="server" Height="30px" Width="40%">
                                        </asp:DropDownList>
                                    </td>
                                    <tr>
                                        <td width="15%"><%=ResGetir.resGetir(28)%>
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idPEYMENT_TYPE" runat="server" Height="30px" Width="40%">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="15%"><%=ResGetir.resGetir(197)%>
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="idQUANTITY" Width="40%" Height="30px" runat="server" MaxLength="20"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="15%"><%=ResGetir.resGetir(201)%>
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idUNIT" runat="server" Height="30px" Width="40%">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="15%"><%=ResGetir.resGetir(375)%>
                                        </td>
                                        <td width="2%">:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="idPERIOD" runat="server" Height="30px" Width="40%">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                            </table>


                        </div>
                    </div>
                </div>

                <div class="frame" id="Kontak">
                </div>
                <div class="frame" id="Numune">
                </div>
                <div class="frame" id="Proforma"></div>
                <div class="frame" id="Fatura"></div>
                <div class="frame" id="Ek Form"></div>

            </div>
        </div>
    </div>



</asp:Content>
