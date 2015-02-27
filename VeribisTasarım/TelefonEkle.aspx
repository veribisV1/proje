<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelefonEkle.aspx.cs" Inherits="VeribisTasarım.TelefonEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
   
         <div> 
        <h3>Telefon Ekle</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#TelefonEkle">Telefon Ekle</a></li>
                
            </ul>
            <div id="TelefonEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonTelefonYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonTelefonKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" OnClick="idButtonTelefonKaydet_Click" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonTelefonSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <asp:TextBox ID="idPHONE_CODE" runat="server" Visible="False"></asp:TextBox>
                <hr />
                    <div class="ALAN4">
                        <table class="KisiTable">
                            <tr>
                        <td width="35%">
                        Kayıt Grubu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="idPHONE_TYPE_ID" Height="25px" runat="server" Width="150%"></asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Ülke Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="idCOUNTRY_CODE" Height="25px" runat="server" Width="150%" AutoPostBack="True" OnSelectedIndexChanged="idCOUNTRY_CODE_SelectedIndexChanged" ViewStateMode="Enabled"></asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Alan Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="idAREA_CODE" Height="25px" runat="server" Width="150%"></asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="35%">
                        Numara
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="idPHONE_NUMBER" MaxLength="50" Height="22px" Width="260%" runat="server" TextMode="Phone"></asp:TextBox>

                        </td>
                    </tr>
                             <tr>
                        <td width="35%">
                        Dahili
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="idINTERNAL_CODE" MaxLength="30" Height="22px" Width="100%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                          
                        </table>

                    </div>

                </div>
    
    </div>
         </div>
         <asp:TextBox ID="idCOMPANY_CODE" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
