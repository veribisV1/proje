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
                                   <div hidden="hidden">   <asp:TextBox ID="idCOMPANY_CODE" MaxLength="200" runat="server"></asp:TextBox> </div>
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
            <div id="ListeAdi"></div>
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
            <div id="Kontak"></div>
            <div id="Numune"></div>
            <div id="Proforma"></div>
            <div id="Fatura"></div>
            <div id="Ek Form"></div>
        </div>
    </div>

</asp:Content>