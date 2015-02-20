<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Proforma.aspx.cs" Inherits="VeribisTasarım.Proforma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>PROFORMA</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#ProformaEkle">Proforma Ekle</a></li>
           </ul>
            <div id="ProformaEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonProformaEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonProformaEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" OnClick="idButtonProformaEkleKaydet_Click" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonProformaEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonGeriDon" runat="server" CssClass="ButtonGeriDon" Text="Geri Dön" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
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
                                    <asp:DropDownList ID="idCOMPANY_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Kontak
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCONTACT_CODE" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Cinsi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSELLING_BUYING" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak No
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="22px" Width="62%" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="22px" Width="30%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idDOCUMENT_DATE" TextMode="Date" Height="25px" Width="63%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
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
                                    <asp:TextBox ID="idEXPLANATION" runat="server" Width="102%" Height="90px" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>
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
                                    <asp:DropDownList ID="idSIPARIS_YOLU" runat="server" Height="30px" Width="104%">
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
                                <td width="35%">Mensei
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idMENSEI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Banka Bilgisi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idBANKA_BILGISI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Geçerlilik Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idCERTIFICATE_DATE" runat="server" Width="102%" TextMode="DateTime" Height="22px"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Sevk Adresi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSEVK_ADRESI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Fatura Adresi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idFATURA_ADRESI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Ambalajlama
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idAMBALAJLAMA" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Nakliye Tipi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNAKLIYE_TIPI" runat="server" Height="30px" Width="104%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Nakliye Firması
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNAKLIYE_FIRMASI" runat="server" Height="30px" Width="104%">
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
                                    <asp:TextBox ID="idSIPARIS_NO" runat="server" Width="100%" Height="22px"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Sipariş Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idSIPARIS_TARIHI" runat="server" Width="102%" TextMode="DateTime" Height="22px"></asp:TextBox>

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

                        </table>

                    </div>

                
                        
                    </div>
</asp:Content>
