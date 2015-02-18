<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="VeribisTasarım.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>FİRMA KARTI</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#ListeAdi">Liste Adı</a></li>
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
                            <asp:Button ID="idButtonAdresYeni" runat="server" CssClass="ButtonYeni" Text="Adres Ekle" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <tr>
                        <td>
                            <asp:Button ID="idButtonTelefonYeni" runat="server" CssClass="ButtonYeni" Text="Telefon Ekle" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFirmaEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" OnClick="idButtonFirmaEkleKaydet_Click1" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFirmaEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>


                    <hr />
                    <div class="ALAN4">
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
                                    <asp:DropDownList ID="idCOMPANY_REPRESENT_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Sektörü
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSECTOR" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>


                                </td>
                            </tr>
                            
                            

                            <tr>
                                <td width="35%">&nbsp;</td>
                                <td width="2%"></td>
                                <td>&nbsp;</td>
                            </tr>


                        </table>


                    </div>
                    <div class="ALAN4">
                        <table class="KisiTable">
                            <tr>
                                <td width="35%">Tipi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCOMPANY_SPECIAL_TYPE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Aktif
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSTATUS" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Bağlı Firma
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idUPPER_COMPANY_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Bölgesi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCOMPANY_REGION" runat="server" Height="30px" Width="104%">
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
                                    <asp:DropDownList ID="idGROUP_CODE" runat="server" Height="30px" Width="104%">
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
                                    <asp:TextBox ID="idFOUNDATION_DATE" runat="server" Width="101%" Height="25px" TextMode="Date"></asp:TextBox>

                                </td>
                            </tr>


                        </table>

                    </div>
                    <div class="ALAN4">
                        <table class="KisiTable">
                            <tr>
                                <td width="35%">Referans
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCOMPANY_REFERANCE" runat="server" Height="30px" Width="104%">
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
                                    <asp:DropDownList ID="idCURRENCY_TYPE" runat="server" Height="30px" Width="104%">
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
                                    <asp:DropDownList ID="idPAYMENT_TYPE" runat="server" Height="30px" Width="104%">
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
                    <div class="ALAN6"><br />
                        <asp:Button ID="idAdresEkle" runat="server" CssClass="AdresEkle" Text="Adres Ekle" />
                        <table class="KisiTable">
                            <tr>
                          
                                <td>
                                    <div class="gridDivAdres">
                                        <asp:GridView ID="idADDRESS" runat="server" CssClass="gridEn" EmptyDataText="Adres bilgisi mevcut değil.">
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <EmptyDataRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" Height="50px"/>
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
                    <div class="ALAN6"><br />
                        <asp:Button ID="idTelefonEkle" runat="server" CssClass="TelefonEkle" Text="Telefon Ekle" />
                          <table class="KisiTable">
                              <tr>
                        
                                <td>
                                    <div class="gridDivTelefon">
                                        <asp:GridView ID="idPHONE" runat="server" CssClass="gridEn" EmptyDataText="İletişim bilgisi mevcut değil.">
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#2461BF" />
                                             <EmptyDataRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" Height="50px"/>
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

                </div>
            </div>
            <div id="ListeAdi" style="min-height: 100px">
                <div class="KisiTableHizalama">

                    <tr>

                        <td>
                            <asp:TextBox ID="idTextBoxFirmaArama" runat="server" CssClass="TextBoxArama" Height="20px" Width="30%"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="idButtonFirmaArama" runat="server" CssClass="ButtonArama" Text="Ara" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>

                    <hr />
                    <div class="ALAN12">
                        <div class="KisiTableHizalama">
                            <table class="KisiTable">
                                <tr>
                                    <td>
                                        <asp:GridView ID="idListeAdiGridView" runat="server" CssClass="ListeAdiGridView" AutoGenerateColumns="False" DataKeyNames="COMPANY_CODE" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#012353" GridLines="Horizontal">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="COMPANY_CODE" HeaderText="COMPANY_CODE" ReadOnly="True" SortExpression="COMPANY_CODE" />
                                                <asp:BoundField DataField="COMPANY_NAME" HeaderText="COMPANY_NAME" SortExpression="COMPANY_NAME" />
                                                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                                                <asp:BoundField DataField="SECTOR" HeaderText="SECTOR" SortExpression="SECTOR" />
                                                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                                                <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
                                                <asp:BoundField DataField="WEBADDRESS" HeaderText="WEBADDRESS" SortExpression="WEBADDRESS" />
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:veribis %>" SelectCommand="SELECT [COMPANY_CODE], [COMPANY_NAME], [ADDRESS], [SECTOR], [PHONE], [MAIL], [WEBADDRESS] FROM [COMPANY]"></asp:SqlDataSource>
                                    </td>
                                </tr>

                            </table>

                        </div>
                    </div>



                </div>
            </div>
            <div id="MakinaParki" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonMakinaParkiYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonMakinaParkiKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonMakinaParkiSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>


                    <hr />
                    <div class="ALAN12">

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
            <div id="RakipFirma" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonRakipFirmaYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonRakipFirmaKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonRakipFirmaSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>


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
            <div id="RakipUrun" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonRakipUrunYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonRakipUrunKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonRakipUrunSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>


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
            <div id="Kontak" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonKontakYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonKontakKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonKontakSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>


                    <hr />

                </div>

            </div>
            <div id="Numune" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonNumuneYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonNumuneKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonNumuneSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <hr />
                    <div class="ALAN6">

                        <table class="KisiTable">
                            <tr>
                                <td width="15%">Kodu
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneCOMPANY_COMMERCIAL_CODE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td width="15%">Firma Adı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneCOMPANY_CODE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Kontak
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneCONTACT_CODE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Cinsi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneSELLING_BUYING" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Normal-İade
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneNORMAL_BACK" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak No Seri
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idNumuneDOCUMENT_NO1" MaxLength="20" Height="22px" Width="30%" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="idNumuneDOCUMENT_NO2" MaxLength="20" Height="22px" Width="12%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Evrak Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idNumuneDOCUMENT_DATE" runat="server" TextMode="Date" Width="48%" Height="25px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Firma Temsilcisi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneAPPOINTED_USER_CODE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Depo
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneWAREHOUSE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Stok Bağımsız
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:CheckBoxList ID="idNumuneFREE_STOK" runat="server">
                                        <asp:ListItem Text="" Value="1"></asp:ListItem>
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="ALAN6">
                        <table class="KisiTable">

                            <tr>
                                <td width="15%">Geçerlilik Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idNumuneCERTIFICATE_DATE" runat="server" TextMode="Date" Width="48%" Height="25px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Açık/Kapalı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneOPEN_CLOSE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Takip Yönetimi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneSEARCH_METHOD" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Takip Aşaması
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneSEARCH_STEP" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Kimin İçin
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCURRENT_CODE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Sonuç
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCATEGORY" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Proje
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumunePROJECT_CODE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Revizyon
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNumuneREVISION" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Açıklama
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idNumuneEXPLANATION" runat="server" MaxLength="1000" TextMode="MultiLine" Width="100%" Height="60px"></asp:TextBox>
                                </td>
                            </tr>

                        </table>

                    </div>


                </div>
            </div>
            <div id="Proforma" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonProformaYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonProformaKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonProformaSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>


                    <hr />
                    <div class="ALAN4">

                        <table class="KisiTable">
                            <tr>
                                <td width="35%">Kodu
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idProformaCOMPANY_COMMERCIAL_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td width="35%">Firma Adı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idProformaCOMPANY_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Kontak
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idProformaCONTACT_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Cinsi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idProformaSELLING_BUYING" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak No
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idProformaDOCUMENT_NO1" MaxLength="20" Height="22px" Width="62%" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="idProformaDOCUMENT_NO2" MaxLength="20" Height="22px" Width="30%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idProformaDOCUMENT_DATE" TextMode="Date" Height="25px" Width="63%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Temsilcisi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idProformaAPPOINTED_USER_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>

                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Stok Bağımsız
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:CheckBoxList ID="idProformaFREE_STOK" runat="server">
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
                                    <asp:TextBox ID="idProformaEXPLANATION" runat="server" Width="102%" Height="90px" TextMode="MultiLine"></asp:TextBox>
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
                                    <asp:DropDownList ID="idProformaSIPARIS_YOLU" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Ödeme Şekli
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idProformaPAYMENT_TYPE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Teslim Şekli
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idProformaDELIVERY_TYPE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Mensei
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idProforma_MENSEI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Banka Bilgisi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="PROFORMA_BANKA_BILGISI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Geçerlilik Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="PROFORMA_GECERLILIK_TARIHI" runat="server" Width="102%" TextMode="DateTime" Height="22px"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Sevk Adresi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="PROFORMA_SEVK_ADRESI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Fatura Adresi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="PROFORMA_FATURA_ADRESI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Ambalajlama
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="PROFORMA_AMBALAJLAMA" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Nakliye Tipi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="PROFORMA_NAKLIYE_TIPI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Nakliye Firması
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="PROFORMA_NAKLIYE_FIRMASI" runat="server" Height="30px" Width="104%">
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
                                    <asp:TextBox ID="PROFORMA_SIPARIS_NO" runat="server" Width="100%" Height="22px"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Sipariş Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="PROFORMA_SIPARIS_TARIHI" runat="server" Width="102%" TextMode="DateTime" Height="22px"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Neden Kaybettik
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="PROFORMA_NEDEN_KAYBETTIK" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Kazanan Rakip Firma
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="PROFORMA_KAZANAN_RAKIP_FIRMA" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                        </table>

                    </div>

                </div>
            </div>
            <div id="Fatura" style="min-height: 100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFaturaYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFaturaKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="idButtonFaturaSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>


                    <hr />
                    <div class="ALAN4">

                        <table class="KisiTable">

                            <tr>
                                <td width="35%">Firma Adı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFaturaCOMPANY_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Cinsi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFaturaSELLING_BUYING" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Normal/İade
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFaturaNORMAL_BACK" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak No
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idFaturaDOCUMENT_NO1" MaxLength="20" Height="22px" Width="62%" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="idFaturaDOCUMENT_NO2" MaxLength="20" Height="22px" Width="30%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idFaturaDOCUMENT_DATE" TextMode="DateTime" Height="22px" Width="63%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Temsilcisi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFaturaAPPOINTED_USER_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>

                                </td>
                        </table>


                    </div>
                    <div class="ALAN4">
                        <table class="KisiTable">


                            <tr>
                                <td width="35%">Depo
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFaturaWAREHOUSE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Ödeme Şekli
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFaturaPAYMENT_TYPE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
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
                                <td width="35%">Açık/Kapalı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFaturaOPEN_CLOSE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Grubu
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFaturaGROUPS" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Açıklama
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idFaturaEXPLANATION" runat="server" Width="102%" Height="90px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>

                        </table>

                    </div>
                    <div class="ALAN4">
                        <table class="KisiTable">
                        </table>

                    </div>

                </div>
            </div>
            <div id="Ek Form"></div>
        </div>
    </div>

</asp:Content>