<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirsatEkle.aspx.cs" Inherits="VeribisTasarım.FirsatEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/css/metro-bootstrap.css" />
    <link rel="stylesheet" href="Content/css/metro-bootstrap-responsive.css" />
    <link href="Content/css/iconFont.css" rel="stylesheet" />
    <script src="Content/js/jquery/jquery.min.js"></script>
    <script src="Content/js/jquery/jquery.widget.min.js"></script>
    <script src="Content/js/jquery/jquery.mousewheel.js"></script>
    <script src="Content/js/metro/metro.min.js"></script>

</head>
<body class="metro">
    <form id="form1" runat="server">
        <div class="ALAN12">
            <h3><%=SayfaAdi%></h3>
            <div class="KisiTableHizalama">
                <asp:TextBox ID="idROW_ORDER_NO" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="idOPPORTUNITY_CODE" runat="server" Visible="False"></asp:TextBox>
                <hr />
                <div class="ALAN6">
                    <table>
                        <tr>
                            <td>Kodu
                            </td>
                            <td>:
                            </td>
                            <td>
                                <asp:TextBox ID="txtStokKod" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnStokKodAra" runat="server" CssClass="bg-blue fg-white" Text="ARA" Height="30px" OnClick="btnStokKodAra_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td colspan="2">
                                <asp:DropDownList ID="idSTOK_CODE" Height="30px" runat="server" Width="100%" AutoPostBack="True" OnTextChanged="elamnlariYuke"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Miktar
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idQUANTITY" MaxLength="200" Height="30px" Width="100%" runat="server" AutoPostBack="True" OnTextChanged="masraf_degisim"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Fiyat
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idUNIT_PRICE" MaxLength="200" Height="30px" Width="100%" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Para Birimi
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:DropDownList ID="idCUR_TYPE" Height="30px" runat="server" Width="100%"></asp:DropDownList>
                            </td>
                        </tr>

                        <tr>
                            <td>Döviz Tutarı
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idTOTAL_UNTAX" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>İskonto %
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idDISCOUNT_PERCENT" MaxLength="200" Height="30px" Width="100%" runat="server" AutoPostBack="True" OnTextChanged="iskonto_degisim"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Masraf %
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idEXPENSE_PERCENT" MaxLength="200" Height="30px" Width="100%" runat="server" AutoPostBack="True" OnTextChanged="masraf_degisim"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Döviz Net Tutar
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idTOTAL" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Açıklama
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idEXPLANATION" MaxLength="200" TextMode="MultiLine" Height="60px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>


                </div>
                <div class="ALAN6">
                    <table>
                        <tr>
                            <td>Stok Adı
                            </td>
                            <td>:
                            </td>
                            <td>
                                <asp:TextBox ID="txtStokAdi" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnStokAdiAra" runat="server" CssClass="bg-blue fg-white" Text="ARA" Height="30px" OnClick="btnStokAdiAra_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td colspan="2">
                                <asp:DropDownList ID="idPRODUCT_NAME" Height="30px" runat="server" Width="100%" AutoPostBack="True" OnTextChanged="elamnlariYuke"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Birimi
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idUNIT" MaxLength="200" Height="30px" Width="100%" runat="server" Enabled="false"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Vergi %
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idTAX_PERCENT" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Kur
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idCUR_VALUE" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>TL Tutarı
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idTOTAL_UPBK_UNTAX" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>İskonto Miktar
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idDISCOUNT_TOTAL" MaxLength="200" Height="30px" Width="100%" runat="server" AutoPostBack="True" OnTextChanged="iskonto_degisim"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Masraf T
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idEXPENSE_TOTAL" MaxLength="200" Height="30px" Width="100%" runat="server" AutoPostBack="True" OnTextChanged="masraf_degisim"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>TL Net Tutar
                            </td>
                            <td>:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="idTOTAL_UPBK" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="ALAN12">
                    <table style="float: right; margin-right: 30px;">
                        <tr>
                            <td>
                                <asp:Button ID="idButtonFirsatKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" OnClick="idButtonFirsatKaydet_Click" />
                            </td>
                            <td>
                                <asp:Button ID="idButtonFirsatIptal" runat="server" CssClass="bg-blue fg-white" Text="İptal" Height="30px" />
                            </td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
