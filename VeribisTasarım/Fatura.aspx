<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Fatura.aspx.cs" Inherits="VeribisTasarım.Fatura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3>FATURA</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#FaturaEkle">Fatura Ekle</a></li>
           </ul>
            <div id="FaturaEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonFaturaEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonFaturaEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonFaturaEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
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
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
