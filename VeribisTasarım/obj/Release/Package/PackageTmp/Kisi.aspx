<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Kisi.aspx.cs" Inherits="VeribisTasarım.Kisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="Content/js/metro/metro-tab-control.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>KİŞİ KARTI</h3>
        <div class="tab-control" data-role="tab-control">
            <ul class="tabs">
                <li class="active"><a href="#KisiEkle">Kişi Ekle</a></li>
                <li><a href="#AktivitePlanla">Aktivite Planla</a></li>
                <li><a href="#NotEkle">Not Ekle</a></li>
                <li><a href="#Fırsat">Fırsat</a></li>
                <li><a href="#Teklif">Teklif</a></li>
                <li><a href="#Numune">Numune</a></li>
                <li><a href="#Proforma">Proforma</a></li>
                <li><a href="#Fatura">Fatura</a></li>
                <li><a href="#EkForm">Ek Form</a></li>
                <li><a href="#AileBilgileri">Aile Bilgileri</a></li>
            </ul>

            <div class="frames" style="float: left; width: 100%">
                <div class="frame" id="KisiEkle">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonKisiEkleYeni" runat="server" CssClass="bg-blue fg-white" Text="Yeni" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonAdresYeni" runat="server" CssClass="bg-blue fg-white" Text="Adres Ekle" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonTelefonYeni" runat="server" CssClass="bg-blue fg-white" Text="Telefon Ekle" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonKisiEkleKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" OnClick="idButtonKisiEkleKaydet_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonKisiEkleSil" runat="server" CssClass="bg-blue fg-white" Text="Sil" Height="30px" />
                                </td>
                            </tr>
                        </table>

                        <asp:TextBox ID="idCONTACT_CODE" runat="server" Visible="False"></asp:TextBox>
                        <hr />

                        <div class="ALAN4">
                            <table class="KisiTable" id="Tablo1">
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
                            <asp:Button ID="idAdresEkle" runat="server" CssClass="bg-blue fg-white" Text="Adres Ekle" />
                            <table class="KisiTable">
                                <tr>

                                    <td>
                                        <div class="gridDivAdresKisi">
                                            <asp:GridView ID="idADDRESS" runat="server" CssClass="gridEn">
                                                <AlternatingRowStyle BackColor="White" />
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
                                        </div>
                                    </td>
                                </tr>
                            </table>

                        </div>
                        <div class="ALAN6">
                            <br />
                            <asp:Button ID="idTelefonEkle" runat="server" CssClass="bg-blue fg-white" Text="Telefon Ekle" />
                            <table class="KisiTable">
                                <tr>

                                    <td>
                                        <div class="gridDivTelefonKisi">
                                            <asp:GridView ID="idPHONE" runat="server" CssClass="gridEn">
                                                <AlternatingRowStyle BackColor="White" />
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
                <div class="frame" id="Fırsat"></div>
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
