<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Teklif.aspx.cs" Inherits="VeribisTasarım.Teklif" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>TEKLİF</h3>
        <div class="tab-control" data-role="tab-control">
            <ul class="tabs">              
                <li><a href="#ListeAdi">Liste Adı</a></li>
                <li><a href="#TeklifEkle">Teklif Ekle</a></li>
            </ul>
            <div class="frames" style="float: left; width: 100%">
                <div class="frame" id="ListeAdi" style="min-height: 100px">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="idTextBoxTeklifArama" runat="server" CssClass="EvrakListesiArama" Height="20px" Width="13%"></asp:TextBox>

                                </td>
                                <td>
                                    <asp:Button ID="idButtonTeklifArama" runat="server" CssClass="bg-blue fg-white" Text="Ara" />
                                </td>
                            </tr>
                        </table>
                      
                        <asp:Label ID="idLabelTeklifDurum" runat="server" Text="Açık/Kapalı" CssClass="EvrakListesiDurum"></asp:Label><asp:DropDownList ID="idDropDownTeklifDurum" runat="server" CssClass="EvrakListesiDropdownDurum"></asp:DropDownList>
                        <asp:Label ID="idLabelTeklifBaslangic" runat="server" Text="Başlangıç" CssClass="LabelEvrakListesiBaslangic"></asp:Label><asp:TextBox ID="idTeklifBaslangicTarih" runat="server" TextMode="DateTimeLocal" CssClass="EvrakListesiBaslangicTarih"></asp:TextBox><br />
                        <asp:Label ID="idLabelTeklifBitis" runat="server" Text="Bitiş" CssClass="LabelEvrakListesiBitis"></asp:Label><asp:TextBox ID="idTeklifBitisTarih" runat="server" TextMode="DateTimeLocal" CssClass="EvrakListesiBitisTarih"></asp:TextBox>


                        <hr />
                        <div class="ALAN12">
                            <div class="KisiTableHizalama">
                                <table class="KisiTable">
                                    <tr>
                                        <td>
                                            <%--  <asp:GridView ID="idTeklifGridView" runat="server" CssClass="ListeAdiGridView" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                  <Columns>
                                      <asp:BoundField DataField="FİRMA" HeaderText="FİRMA" ReadOnly="True" SortExpression="FİRMA" />
                                      <asp:BoundField DataField="KİŞİ" HeaderText="KİŞİ" ReadOnly="True" SortExpression="KİŞİ" />
                                      <asp:BoundField DataField="TEMSİLCİ" HeaderText="TEMSİLCİ" ReadOnly="True" SortExpression="TEMSİLCİ" />
                                      <asp:BoundField DataField="DOCUMENT_DATE" HeaderText="DOCUMENT_DATE" SortExpression="DOCUMENT_DATE" />
                                      <asp:BoundField DataField="OPEN_CLOSE" HeaderText="OPEN_CLOSE" SortExpression="OPEN_CLOSE" />
                                  </Columns>
                                       </asp:GridView>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Vdb_Master2014ConnectionString %>" SelectCommand="SELECT [FİRMA], [KİŞİ], [TEMSİLCİ], [DOCUMENT_DATE], [OPEN_CLOSE] FROM [VOTASK]"></asp:SqlDataSource>--%>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="frame" id="TeklifEkle" style="min-height: 100px;">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonTeklifEkleYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonTeklifEkleKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" OnClick="idButtonTeklifEkleKaydet_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonTeklifEkleSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                                </td>
                            </tr>
                        </table>
                  
                        <hr />
                        <asp:TextBox ID="idOPPORTUNITY_CODE" runat="server" Visible="False"></asp:TextBox>
                        <div class="ALAN4">
                            <table class="KisiTable" id="Table1">
                                <tr>
                                    <td width="35%">Firma Adı
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_CODE" Height="30px" runat="server" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Kontak
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCONTACT_CODE" Height="30px" runat="server" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Evrak Tipi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idDOCUMENT_TYPE" Height="30px" runat="server" Width="100%">
                                        </asp:DropDownList>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Evrak No
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="30px" Width="70%" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="30px" Width="28%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Cinsi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSELLING_BUYING" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Evrak Tarihi
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
                                    <td width="35%">Temsilcisi
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
                                    <td width="35%">Revizyon
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idREVISION" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Teslim Şekli
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idDELIVERY_TYPE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
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
                                    <td width="35%">Takip Yön.
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSEARCH_METHOD" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Takip Aşaması
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSEARCH_STEP" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>




                            </table>

                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%">Geçerlilik Tarihi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCERTIFICATE_DATE" runat="server" TextMode="Date" Height="30px" Width="100%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Proje
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idPROJECT_CODE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Son Durum
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idLAST_POSITION" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Neden Kaybettik
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idWHY_LOST" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Kazanan Rakip Firma
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idRIVAL_COMPANY_CODE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="35%">Açıklama
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

                 <asp:Button ID="btnVeriEkle" runat="server" CssClass="bg-blue fg-white" Text="Yeni Kayıt" OnClientClick="OpenPage('FirsatEkle.aspx','',700,500);return false;" Width="75px" />

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
