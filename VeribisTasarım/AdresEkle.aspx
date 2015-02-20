<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdresEkle.aspx.cs" Inherits="VeribisTasarım.AdresEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/stil.css"/>
 <link href="script/jqueryui/jquery-ui.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="style/responsive.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="script/jqueryui/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {
            $(".menubutton").click(function () {
                $(".menuhidden").toggle(1000);
            });
            $(".tabmenu").tabs();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ALAN4">
        <h3>Adres Ekle</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#AdresEkle">Adres Ekle</a></li>
                
            </ul>
            <div id="AdresEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
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
                    </tr>
                    <asp:TextBox ID="idADDRESS_CODE" runat="server" Visible="False"></asp:TextBox>
                <hr />
                    <div class="ALAN4">
                        <table class="KisiTable">
                            <tr>
                        <td width="35%">
                        Tipi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="idADDRESS_TYPE_ID" Height="25px" runat="server" Width="150%"></asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Ülke
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="idCOUNTY" Height="25px" runat="server" Width="300%"></asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        İli
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="idCITY" Height="25px" runat="server" Width="300%"></asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        İlçe
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="idCOUNTY1" Height="25px" runat="server" Width="300%"></asp:DropDownList>
                        </td>
                    </tr>
                             <tr>
                        <td width="35%">
                        Adres 1
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="idADDRESS1" MaxLength="200" Height="22px" Width="520%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Adres 2
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="idADDRESS2" MaxLength="200" Height="22px" Width="520%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Adres 3
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="idADDRESS3" MaxLength="200" Height="22px" Width="520%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Mevki
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                   <asp:TextBox ID="idCOUNTY2" MaxLength="100" Height="22px" Width="300%" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Posta Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                   <asp:TextBox ID="idPOSTCODE" MaxLength="30" Height="22px" Width="300%" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Uzaklık
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                   <asp:TextBox ID="idDISTANCE" MaxLength="10" Height="22px" Width="300%" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Enlem
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                   <asp:TextBox ID="idGPS_LATITUDE" MaxLength="20" Height="22px" Width="300%" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Boylam
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                   <asp:TextBox ID="idGPS_LONGITUDE" MaxLength="20" Height="22px" Width="300%" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                        </table>

                    </div>

                </div>
    
    </div>
    </form>
</body>
</html>
