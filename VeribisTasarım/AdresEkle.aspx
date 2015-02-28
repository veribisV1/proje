﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdresEkle.aspx.cs" Inherits="VeribisTasarım.AdresEkle" %>

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
        <div>
            <h3>Adres Ekle</h3>
                          
                    <div class="KisiTableHizalama">
                       <%-- <tr>
                            <td>
                                <asp:Button ID="idButtonAdresYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="idButtonAdresKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" OnClick="idButtonAdresKaydet_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="idButtonAdresSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                            </td>
                        </tr>--%>
                        <asp:TextBox ID="idADDRESS_CODE" runat="server" Visible="False"></asp:TextBox>
                        <hr />
                        <div class="ALAN6">
                            <table>
                                <tr>
                                    <td width="35%">Tipi
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idADDRESS_TYPE_ID" Height="30px" runat="server" Width="100%"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Ülke
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOUNTY" Height="30px" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="idCOUNTY_SelectedIndexChanged" ViewStateMode="Enabled"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">İli
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCITY" Height="30px" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="idCITY_SelectedIndexChanged" ViewStateMode="Enabled"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">İlçe
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOUNTY1" Height="30px" runat="server" Width="100%"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Adres 1
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idADDRESS1" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Adres 2
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idADDRESS2" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Adres 3
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idADDRESS3" MaxLength="200" Height="30px" Width="100%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                              
                            </table>

                        </div>
                        <div class="ALAN6">
                            <table>
                                  <tr>
                                    <td width="35%">Mevki
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCOUNTY2" MaxLength="100" Height="30px" Width="100%" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Posta Kodu
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idPOSTCODE" MaxLength="30" Height="30px" Width="100%" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Uzaklık
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDISTANCE" MaxLength="10" Height="30px" Width="100%" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Enlem
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idGPS_LATITUDE" MaxLength="20" Height="30px" Width="100%" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Boylam
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idGPS_LONGITUDE" MaxLength="20" Height="30px" Width="100%" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="ALAN12">
                            <table style="float: right; margin-right: 10px;">
                                <tr>
                                    <td>
                                        <asp:Button ID="idButtonAdresKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" OnClick="idButtonAdresKaydet_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="idButtonAdresIptal" runat="server" CssClass="bg-blue fg-white" Text="İptal" Height="30px" BackColor="#012353" ForeColor="White" />
                                    </td>
                                </tr>
                    
                            </table>
                        </div>
                    </div>
           
            <asp:TextBox ID="idCOMPANY_CODE" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="idCONTACT_CODE" runat="server" Visible="False"></asp:TextBox>
        </div>
    </form>
</body>

</html>
