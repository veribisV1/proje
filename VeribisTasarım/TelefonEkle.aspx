<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelefonEkle.aspx.cs" Inherits="VeribisTasarım.TelefonEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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

        <div>
            <h3>Telefon Ekle</h3>                            
                <div class="KisiTableHizalama">
                        <asp:TextBox ID="idPHONE_CODE" runat="server" Visible="False"></asp:TextBox>
                        <hr />
                        <div class="ALAN12">
                            <table>
                                <tr>
                                    <td width="35%">Kayıt Grubu
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idPHONE_TYPE_ID" Height="30px" runat="server" Width="100%"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Ülke Kodu
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOUNTRY_CODE" Height="30px" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="idCOUNTRY_CODE_SelectedIndexChanged" ViewStateMode="Enabled"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Alan Kodu
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idAREA_CODE" Height="30px" runat="server" Width="100%"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Numara
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPHONE_NUMBER" MaxLength="50" Height="30px" Width="100%" runat="server" TextMode="Phone"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Dahili
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idINTERNAL_CODE" MaxLength="30" Height="30px" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>

                            </table>

                        </div>

                         <div class="ALAN12">
                             <table style="float: right; margin-right: 10px;">
                                 <tr>
                                     <td>
                                         <asp:Button ID="idButtonTelefonKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" OnClick="idButtonTelefonKaydet_Click" />
                                     </td>

                                     <td>
                                         <asp:Button ID="idButtonTelefonIptal" runat="server" CssClass="bg-blue fg-white" Text="İptal" Height="30px" />
                                     </td>
                                 </tr>
                             </table>
                        </div>
                    </div>
            <asp:TextBox ID="idCOMPANY_CODE" runat="server" Visible="False"></asp:TextBox>
        </div>
    </form>
</body>
</html>
