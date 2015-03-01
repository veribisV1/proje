<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Proforma.aspx.cs" Inherits="VeribisTasarım.Proforma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>PROFORMA</h3>
        <div class="tab-control" data-role="tab-control">
            <ul class="tabs">
                <li class="active"><a href="#ProformaEkle">Proforma Ekle</a></li>
            </ul>
            <div class="frames" style="float: left; width: 100%">
                <div class="frame" id="ProformaEkle">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonProformaEkleYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonProformaEkleKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" OnClick="idButtonProformaEkleKaydet_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonProformaEkleSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonGeriDon" runat="server" CssClass="bg-blue fg-white" Text="Geri Dön" Height="30px"/>
                                </td>
                            </tr>
                        </table>
                       
                        <asp:TextBox ID="idOPPORTUNITY_CODE" runat="server" Visible="False"></asp:TextBox>
                        <hr />
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%">Firma Adı
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_CODE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Kontak
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCONTACT_CODE" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
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
                                    <td width="35%">Evrak Tarihi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDOCUMENT_DATE" TextMode="Date" Height="30px" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
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
                                    <td width="15%">Stok Bağımsız
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:CheckBoxList ID="idFREE_STOK" runat="server">
                                            <asp:ListItem Text="" Value="1"></asp:ListItem>
                                        </asp:CheckBoxList>
                                    </td>
                                </tr>


                                <tr>
                                    <td width="35%">Açıklama
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idEXPLANATION" runat="server" Width="100%" Height="90px" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>
                                    </td>
                                </tr>


                            </table>


                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%">Sipariş Yolu
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSIPARIS_YOLU" runat="server" Height="30px" Width="100%">
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
                                    <td width="35%">Mensei
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMENSEI" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Banka Bilgisi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idBANKA_BILGISI" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Geçerlilik Tarihi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCERTIFICATE_DATE" runat="server" Width="100%" TextMode="DateTime" Height="30px"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Sevk Adresi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSEVK_ADRESI" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Fatura Adresi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idFATURA_ADRESI" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Ambalajlama
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idAMBALAJLAMA" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Nakliye Tipi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idNAKLIYE_TIPI" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Nakliye Firması
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idNAKLIYE_FIRMASI" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                            </table>

                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%">Siparis No
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idSIPARIS_NO" runat="server" Width="100%" Height="30px"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Sipariş Tarihi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idSIPARIS_TARIHI" runat="server" Width="100%" TextMode="DateTime" Height="30px"></asp:TextBox>

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
