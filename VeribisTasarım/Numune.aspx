<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Numune.aspx.cs" Inherits="VeribisTasarım.Numune" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>NUMUNE</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#NumuneEkle">Numune Ekle</a></li>
           </ul>
            <div id="NumuneEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonNumuneEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonNumuneEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonNumuneEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonGeriDon" runat="server" CssClass="ButtonGeriDon" Text="Geri Dön" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                <hr />
                    <div class="ALAN4">
                        <table class="KisiTable">
                            
                            <tr>
                                <td width="15%">Firma Adı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCOMPANY_CODE" runat="server" Height="30px" Width="100%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Kontak
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idCONTACT_CODE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Cinsi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSELLING_BUYING" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Normal-İade
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idNORMAL_BACK" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="35%">Evrak No Seri
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="22px" Width="30%" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="22px" Width="12%" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Evrak Tarihi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idDOCUMENT_DATE" runat="server" TextMode="Date" Width="48%" Height="25px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Firma Temsilcisi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idAPPOINTED_USER_CODE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Depo
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idWAREHOUSE" runat="server" Height="30px" Width="50%">
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
                                    <asp:TextBox ID="idCERTIFICATE_DATE" runat="server" TextMode="Date" Width="48%" Height="25px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Açık/Kapalı
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idOPEN_CLOSE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Takip Yönetimi
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSEARCH_METHOD" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Takip Aşaması
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idSEARCH_STEP" runat="server" Height="30px" Width="50%">
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
                                    <asp:DropDownList ID="idPROJECT_CODE" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Revizyon
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:DropDownList ID="idREVISION" runat="server" Height="30px" Width="50%">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td width="15%">Açıklama
                                </td>
                                <td width="2%">:
                                </td>
                                <td>
                                    <asp:TextBox ID="idEXPLANATION" runat="server" MaxLength="1000" TextMode="MultiLine" Width="100%" Height="60px"></asp:TextBox>
                                </td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
