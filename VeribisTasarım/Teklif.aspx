<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Teklif.aspx.cs" Inherits="VeribisTasarım.Teklif" %>
<%@ Import Namespace="VeribisTasarım.Controller"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" src="fancyBox/source/jquery.fancybox.js?v=2.1.5"></script>


    <%--fancy_box stil tanımı--%>
    <style type="text/css">
        .fancybox-custom .fancybox-skin {
            box-shadow: 0 0 50px #222;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3><%=ResGetir.resGetir(333)%></h3>
        <div class="tab-control" data-role="tab-control">
            <ul class="tabs">
                <li><a href="#ListeAdi">Liste Adı</a></li>
                <li class="active"><a href="#TeklifEkle"><%=ResGetir.resGetir(136)%></a></li>
            </ul>
            <div class="frames" style="float: left; width: 100%">
                <div class="frame" id="ListeAdi" style="min-height: 100px">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                   
                                     <asp:Label ID="idLabelTeklifArama" runat="server" CssClass="EvrakListesiDurum"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                     <asp:TextBox ID="idTextBoxTeklifArama" runat="server" CssClass="EvrakListesiArama" Width="180px"></asp:TextBox>
                                 
                                </td>
                                 <td>
                                     <asp:Label ID="idLabelTeklifDurum" runat="server" CssClass="EvrakListesiDurum"></asp:Label>
                                </td>
                                   <td>:</td>
                                <td>
                                   <asp:DropDownList ID="idDropDownTeklifDurum" runat="server" CssClass="EvrakListesiDropdownDurum" Width="180px"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                 <td> 
                                    <asp:Label ID="idLabelTeklifBaslangic" runat="server" CssClass="LabelEvrakListesiBaslangic"></asp:Label>
                                 </td>
                                   <td>:</td>
                                 <td> 
                                     <asp:TextBox ID="idTeklifBaslangicTarih" runat="server" Width="180px"  ></asp:TextBox>
                                 </td>
                                <td>
                                    <asp:Label ID="idLabelTeklifBitis" runat="server" CssClass="LabelEvrakListesiBitis"></asp:Label>
                                </td>
                                   <td>:</td>
                                 <td>
                                     <asp:TextBox ID="idTeklifBitisTarih" runat="server" Width="180px" ></asp:TextBox>
                                 </td>
                                <td>
                                      <asp:Button ID="idButtonTeklifArama" runat="server" CssClass="bg-blue fg-white" Text="Ara" />
                                </td>
                            </tr>
                           
                        </table>

                      
                        <hr />

                        <asp:GridView ID="grTeklifListe" runat="server" AutoGenerateColumns="False" CssClass="nGrid" DataKeyNames="OPPORTUNITY_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="TEKLİF EKLEYİNİZ...">

                            <Columns>

                                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClick="editTeklif" CommandArgument='<%# Eval("OPPORTUNITY_CODE")%>'></asp:ImageButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="FİRMA ADI">
                                    <ItemTemplate>
                                        <asp:Label ID="COMPANY_NAME" runat="server" Text='<%# Eval("COMPANY_NAME")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="KONTAK KİŞİ">
                                    <ItemTemplate>
                                        <asp:Label ID="CONTACT_NAME" runat="server" Text='<%# Eval("CONTACT_NAME")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="AÇIKLAMA">
                                    <ItemTemplate>
                                        <asp:Label ID="EXPLANATION" runat="server" Text='<%# Eval("EXPLANATION")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="TAKİP AŞAMASI">
                                    <ItemTemplate>
                                        <asp:Label ID="SEARCH_STEP" runat="server" Text='<%# Eval("SEARCH_STEP")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="TEMSİLCİ">
                                    <ItemTemplate>
                                        <asp:Label ID="APPOINTED_USER_CODE" runat="server" Text='<%# Eval("APPOINTED_USER_CODE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="DÖKÜMAN TARİHİ">
                                    <ItemTemplate>
                                        <asp:Label ID="DOCUMENT_DATE" runat="server" Text='<%# Eval("DOCUMENT_DATE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="TOPLAM DÖVİZ">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTOTAL" runat="server" Text='<%# Eval("TOTAL")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="TOPLAM TL">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTOTALUPB" runat="server" Text='<%# Eval("TOTAL_UPB")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                        </asp:GridView>

                    </div>

                </div>
                <div class="frame" id="TeklifEkle" style="min-height: 100px;">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonTeklifEkleYeni" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClick="idButtonTeklifEkleYeni_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonTeklifEkleKaydet" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClick="idButtonTeklifEkleKaydet_Click" OnClientClick="return confirm('Teklif bilgisi kaydedilmiştir.')" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonTeklifEkleSil" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                            </tr>
                        </table>
                        <hr />
                        <div hidden="hidden"><asp:TextBox ID="idOPPORTUNITY_CODE" runat="server"></asp:TextBox>
                        <asp:TextBox ID="idDOCUMENT_TYPE" runat="server"  Text="2"></asp:TextBox>
                        </div>
                        

                        <div class="ALAN4">
                            <table class="KisiTable" id="Table1">
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(3)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_CODE" Height="30px" runat="server" Width="100%" OnSelectedIndexChanged="idCOMPANY_CODE_SelectedIndexChanged" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(1)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCONTACT_CODE" Height="30px" runat="server" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(186)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idText" runat="server" Enabled="false" Text="Teklif" Height="30px" Width="100%"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(188)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="30px" Width="70%" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="30px" Width="28%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(180)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSELLING_BUYING" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(193)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDOCUMENT_DATE" runat="server" TextMode="Date" Height="30px" Width="100%"></asp:TextBox>
                                    </td>
                                </tr>


                            </table>

                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(6)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idAPPOINTED_USER_CODE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Stok Bağımsız
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:CheckBoxList ID="idFREE_STOK" runat="server">
                                            <asp:ListItem Text=""></asp:ListItem>
                                        </asp:CheckBoxList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(196)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idREVISION" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(454)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idDELIVERY_TYPE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
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
                                    <td width="35%"><%=ResGetir.resGetir(184)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSEARCH_METHOD" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(185)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSEARCH_STEP" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                 <tr>
                                    <td width="35%"><%=ResGetir.resGetir(114)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idOPEN_CLOSE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>



                            </table>

                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(455)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCERTIFICATE_DATE" runat="server" TextMode="Date" Height="30px" Width="100%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(81)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idPROJECT_CODE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(42)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idLAST_POSITION" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(195)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idWHY_LOST" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(172)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idRIVAL_COMPANY_CODE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(206)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idEXPLANATION" TextMode="MultiLine" Width="100%" Height="60px" runat="server" MaxLength="1000"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>


                    <%-- ******* GRIDVIEW *******--%>
                    <div class="ALAN12">
                        <div class="KisiTableHizalama">
                            <table class="KisiTable">
                                <tr>
                                    <td>

                                        <%-- gridle ilgili işlemler başlıyor --%>

                                        <asp:Button ID="btnVeriEkle" runat="server" CssClass="bg-blue fg-white" OnClientClick="OpenPage('FirsatEkle.aspx',$('#ContentPlaceHolder1_idOPPORTUNITY_CODE').val(),700,500);return false;" Width="75px" />

                                        <asp:GridView ID="GridView1" runat="server"
                                            AutoGenerateColumns="False" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" EmptyDataText="ÜRÜN EKLEYİNİZ...">

                                            <Columns>

                                                <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ImageUrl="~/image/Deleteicon.png" ID="lnkRemove" runat="server" OnClientClick="return confirm('Gerçekten silmek istiyor musunuz?')" OnClick="gridSatirSil" CommandArgument='<%# Eval("ROW_ORDER_NO")%>'></asp:ImageButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClick="gridSatirDuzenle" CommandArgument='<%# Eval("ROW_ORDER_NO")%>'></asp:ImageButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="ROW_ORDER_NO" ItemStyle-Width="5%" Visible="true">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblROW_ORDER_NO" runat="server" Text='<%# Eval("ROW_ORDER_NO")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="KOD" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSTOK_CODE" runat="server" Text='<%# Eval("STOK_CODE")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="STOK ADI" ItemStyle-Width="15%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPRODUCT_NAME" runat="server"
                                                            Text='<%# Eval("PRODUCT_NAME")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="MİKTAR" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblQUANTITY" runat="server" Text='<%# Eval("QUANTITY")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="BİRİM" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblUNIT" runat="server" Text='<%# Eval("UNIT")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="FİYAT" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblUNIT_PRICE" runat="server" Text='<%# Eval("UNIT_PRICE")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="VERGİ(%)" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTAX_PERCENT" runat="server" Text='<%# Eval("TAX_PERCENT")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="PARA BİRİMİ" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCUR_TYPE" runat="server" Text='<%# Eval("CUR_TYPE")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="KUR" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCUR_VALUE" runat="server" Text='<%# Eval("CUR_VALUE")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="DÖVİZ TUTARI" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTOTAL" runat="server" Text='<%# Eval("TOTAL")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="TL TUTARI" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTOTAL_UPBK" runat="server" Text='<%# Eval("TOTAL_UPBK")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="İSKONTO(%)" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDISCOUNT_PERCENT" runat="server" Text='<%# Eval("DISCOUNT_PERCENT")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="İSKONTO MİKTARI" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDISCOUNT_TOTAL" runat="server" Text='<%# Eval("DISCOUNT_TOTAL")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="MASRAF(%)" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblEXPENSE_PERCENT" runat="server" Text='<%# Eval("EXPENSE_PERCENT")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="MASRAF MİKTARI" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblEXPENSE_TOTAL" runat="server" Text='<%# Eval("EXPENSE_TOTAL")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="DÖVİZ NET TUTAR" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTOTAL_UNTAX" runat="server" Text='<%# Eval("TOTAL_UNTAX")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="TL NET TUTAR" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTOTAL_UPBK_UNTAX" runat="server" Text='<%# Eval("TOTAL_UPBK_UNTAX")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="AÇIKLAMA" ItemStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblEXPLANATION" runat="server" Text='<%# Eval("EXPLANATION")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                            </Columns>



                                        </asp:GridView>

                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <%-- gridle ilgili işlemler bitiyor --%>
                </div>

            </div>
        </div>

    </div>

</asp:Content>
