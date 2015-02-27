<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Firsat.aspx.cs" Inherits="VeribisTasarım.Fırsat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>FIRSAT</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#ListeAdi">Liste Adı</a></li>
                <li><a href="#FirsatEkle">FırsFırsat Ekle</a></li>

            </ul>
            <div id="FirsatEkle" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFirsatEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFirsatEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" OnClick="idButtonFirsatEkleKaydet_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFirsatEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <asp:TextBox ID="idOPPORTUNITY_CODE" runat="server" Visible="False"></asp:TextBox>
                    <hr />
                    <div class="ALAN4">


                        <table class="KisiTable" id="Table1">

                            <tr>
                                <td width="35%">Firma Adı
                        >
                        <td width="2%">:
                        </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_CODE" Height="30px" runat="server" Width="104%">
                                        </asp:DropDownList>
                                    </td>
                            </tr>
                            <tr>
                                <td width="35%">Kontak
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCONTACT_CODE" Height="30px" runat="server" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td width="35%">Evrak No
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="22px" Width="70%" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="22px" Width="22%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Cinsi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSELLING_BUYING" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idDOCUMENT_DATE" runat="server" TextMode="Date" Height="25px" Width="101%"></asp:TextBox>
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
                                    <asp:DropDownList ID="idAPPOINTED_USER_CODE" runat="server" Height="30px" Width="104%">
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
                                    <asp:DropDownList ID="idREVISION" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Teslim Şekli
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idDELIVERY_TYPE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Ödeme Şekli
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idPAYMENT_TYPE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Takip Yön.
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSEARCH_METHOD" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Takip Aşaması
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSEARCH_STEP" runat="server" Height="30px" Width="104%">
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
                                    <asp:TextBox ID="idCERTIFICATE_DATE" runat="server" TextMode="Date" Height="25px" Width="101%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Proje
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idPROJECT_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Son Durum
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idLAST_POSITION" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>

                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Neden Kaybettik
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idWHY_LOST" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Kazanan Rakip Firma
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idRIVAL_COMPANY_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td width="35%">Açıklama
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idEXPLANATION" TextMode="MultiLine" Height="60px" runat="server" MaxLength="1000"></asp:TextBox>
                                </td>
                            </tr>


                        </table>



                    </div>

                </div>
                <%-- gridle ilgili işlemler başlıyor --%>
                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" FooterStyle-CssClass="footer" AllowPaging="True" ShowFooter="True" OnPageIndexChanging="OnPaging" OnRowEditing="EditCustomer" OnRowUpdating="UpdateCustomer" OnRowCancelingEdit="CancelEdit" PageSize="5" EmptyDataText="ÜRÜN EKLEYİNİZ...">
                    <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                    <Columns>

                        <asp:TemplateField HeaderText="KOD">
                            <ItemTemplate>
                                <asp:Label ID="lblSTOK_CODE" runat="server" Text='<%# Eval("STOK_CODE")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="lstSTOK_CODE" runat="server" Text='<%# Eval("STOK_CODE")%>'></asp:DropDownList>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="lstSTOK_CODE" MaxLength="5" runat="server"></asp:DropDownList>
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="STOK ADI">
                            <ItemTemplate>
                                <asp:Label ID="lblPRODUCT_NAME" runat="server"
                                    Text='<%# Eval("PRODUCT_NAME")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="lstContactName" runat="server" Text='<%# Eval("PRODUCT_NAME")%>'></asp:DropDownList>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="lstPRODUCT_NAME" runat="server"></asp:DropDownList>
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="MİKTAR">
                            <ItemTemplate>
                                <asp:Label ID="lblQUANTITY" runat="server" Text='<%# Eval("QUANTITY")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCompany" runat="server" Text='<%# Eval("QUANTITY")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtQUANTITY" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="UNIT">
                            <ItemTemplate>
                                <asp:Label ID="lblUNIT" runat="server" Text='<%# Eval("UNIT")%>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Label ID="lblUNIT" runat="server"></asp:Label>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="FİYAT">
                            <ItemTemplate>
                                <asp:Label ID="lblUNIT_PRICE" runat="server" Text='<%# Eval("UNIT_PRICE")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtUNIT_PRICE" runat="server" Text='<%# Eval("UNIT_PRICE")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtUNIT_PRICE" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="VERGİ(%)">
                            <ItemTemplate>
                                <asp:Label ID="lblTAX_PERCENT" runat="server" Text='<%# Eval("TAX_PERCENT")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTAX_PERCENT" runat="server" Text='<%# Eval("TAX_PERCENT")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtTAX_PERCENT" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="PARA BİRİMİ">
                            <ItemTemplate>
                                <asp:Label ID="lblCUR_TYPE" runat="server" Text='<%# Eval("CUR_TYPE")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="lstCUR_TYPE" runat="server" Text='<%# Eval("TAX_PERCENT")%>'></asp:DropDownList>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="lstCUR_TYPE" runat="server"></asp:DropDownList>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="KUR">
                            <ItemTemplate>
                                <asp:Label ID="lblCUR_VALUE" runat="server" Text='<%# Eval("CUR_VALUE")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCUR_VALUE" runat="server" Text='<%# Eval("CUR_VALUE")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtCUR_VALUE" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="DÖVİZ TUTARI">
                            <ItemTemplate>
                                <asp:Label ID="lblTOTAL" runat="server" Text='<%# Eval("TOTAL")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTOTAL" runat="server" Text='<%# Eval("TOTAL")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtTOTAL" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="TL TUTARI">
                            <ItemTemplate>
                                <asp:Label ID="lblTOTAL_UPBK" runat="server" Text='<%# Eval("TOTAL_UPBK")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTOTAL_UPBK" runat="server" Text='<%# Eval("TOTAL_UPBK")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtTOTAL_UPBK" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="İSKONTO(%)">
                            <ItemTemplate>
                                <asp:Label ID="lblDISCOUNT_PERCENT" runat="server" Text='<%# Eval("DISCOUNT_PERCENT")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDISCOUNT_PERCENT" runat="server" Text='<%# Eval("DISCOUNT_PERCENT")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDISCOUNT_PERCENT" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="İSKONTO MİKTARI">
                            <ItemTemplate>
                                <asp:Label ID="lblDISCOUNT_TOTAL" runat="server" Text='<%# Eval("DISCOUNT_TOTAL")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDISCOUNT_TOTAL" runat="server" Text='<%# Eval("DISCOUNT_TOTAL")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDISCOUNT_TOTAL" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="MASRAF(%)">
                            <ItemTemplate>
                                <asp:Label ID="lblEXPENSE_PERCENT" runat="server" Text='<%# Eval("EXPENSE_PERCENT")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEXPENSE_PERCENT" runat="server" Text='<%# Eval("EXPENSE_PERCENT")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEXPENSE_PERCENT" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="MASRAF MİKTARI">
                            <ItemTemplate>
                                <asp:Label ID="lblEXPENSE_TOTAL" runat="server" Text='<%# Eval("EXPENSE_TOTAL")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEXPENSE_TOTAL" runat="server" Text='<%# Eval("EXPENSE_TOTAL")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEXPENSE_TOTAL" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="DÖVİZ NET TUTAR">
                            <ItemTemplate>
                                <asp:Label ID="lblTOTAL_UNTAX" runat="server" Text='<%# Eval("TOTAL_UNTAX")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTOTAL_UNTAX" runat="server" Text='<%# Eval("TOTAL_UNTAX")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtTOTAL_UNTAX" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="TL NET TUTAR">
                            <ItemTemplate>
                                <asp:Label ID="lblTOTAL_UPBK_UNTAX" runat="server" Text='<%# Eval("TOTAL_UPBK_UNTAX")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTOTAL_UPBK_UNTAX" runat="server" Text='<%# Eval("TOTAL_UPBK_UNTAX")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtTOTAL_UPBK_UNTAX" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="AÇIKLAMA">
                            <ItemTemplate>
                                <asp:Label ID="lblEXPLANATION" runat="server" Text='<%# Eval("EXPLANATION")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEXPLANATION" runat="server" Text='<%# Eval("EXPLANATION")%>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEXPLANATION" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ItemStyle-Width="100px">
                            <ItemTemplate>
                                <asp:Button ID="lnkRemove" runat="server" OnClientClick="return confirm('Gerçekten silmek istiyor musunuz?')" Text="Sil" OnClick="DeleteCustomer"></asp:Button>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="btnAdd" runat="server" Text="Ekle" OnClick="AddNewCustomer" Width="75px" />
                            </FooterTemplate>

                            <ItemStyle Width="100px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ItemStyle-Width="200px" ButtonType="Button">
                            <ItemStyle Width="200px"></ItemStyle>
                        </asp:CommandField>
                    </Columns>

                    <PagerStyle CssClass="pgr"></PagerStyle>

                </asp:GridView>


                <%-- gridle ilgili işlemler bitiyor --%>
            </div>
            <div id="ListeAdi" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>

                        <td>
                            <asp:TextBox ID="idTextBoxFirsatArama" runat="server" CssClass="EvrakListesiArama" Height="20px" Width="13%"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="idButtonFirsatArama" runat="server" CssClass="EvrakListesiButonArama" Text="Ara" />
                        </td>
                    </tr>
                    <asp:Label ID="idLabelFirsatDurum" runat="server" Text="Açık/Kapalı" CssClass="EvrakListesiDurum"></asp:Label><asp:DropDownList ID="idDropDownFirsatDurum" runat="server" CssClass="EvrakListesiDropdownDurum"></asp:DropDownList>
                    <asp:Label ID="idLabelFirsatBaslangic" runat="server" Text="Başlangıç" CssClass="LabelEvrakListesiBaslangic"></asp:Label><asp:TextBox ID="idFirsatBaslangicTarih" runat="server" TextMode="DateTimeLocal" CssClass="EvrakListesiBaslangicTarih"></asp:TextBox><br />
                    <asp:Label ID="idLabelFirsatBitis" runat="server" Text="Bitiş" CssClass="LabelEvrakListesiBitis"></asp:Label><asp:TextBox ID="idFirsatBitisTarih" runat="server" TextMode="DateTimeLocal" CssClass="EvrakListesiBitisTarih"></asp:TextBox>
                    <asp:Button ID="idUrunHizmetDetayli" runat="server" Text="Ürün Hizmet Detaylı" CssClass="UrunHizmetDetayli" />


                    <hr />
                    <div class="ALAN12">
                        <div class="KisiTableHizalama">
                            <table class="KisiTable">
                                <tr>
                                    <td>

                                        <%-- gridle ilgili işlemler başlıyor --%>

                                        <%-- gridle ilgili işlemler bitiyor --%>
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
