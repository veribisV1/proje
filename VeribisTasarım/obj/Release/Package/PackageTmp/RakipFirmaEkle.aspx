<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RakipFirmaEkle.aspx.cs" Inherits="VeribisTasarım.RakipFirmaEkle" %>

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
            <h3>Rakip Firma Ekle</h3>                            
                <div class="KisiTableHizalama">
                        <asp:TextBox ID="idPHONE_CODE" runat="server" Visible="False"></asp:TextBox>
                        <hr />
                        <div class="ALAN12">
                            <table>
                                <tr>
                                    <td width="35%">Rakip Firma Adı</td>
                                    <td width="2%">:
                                    </td>
                                    <td><asp:TextBox ID="idRIVAL_COMPANY_NAME" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td width="35%">Grubu</td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idRIVAL_GROUP_CODE" Height="30px" runat="server" Width="100%" ViewStateMode="Enabled"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Not</td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idNOTE" Height="30px" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                </tr>
                                

                            </table>

                        </div>

                         <div class="ALAN12">
                             <table style="float: right; margin-right: 10px;">
                                 <tr>
                                     <td>
                                         <asp:Button ID="idButtonRakipFirmaKaydet" runat="server" CssClass="bg-blue fg-white" Text="Kaydet" Height="30px"  OnClick="idButtonRakipFirmaKaydet_Click"/>
                                     </td>

                                     <td>
                                         <asp:Button ID="idButtonRakipFirmaIptal" runat="server" CssClass="bg-blue fg-white" Text="İptal" Height="30px" OnClientClick="parent.$.fancybox.close();" />
                                     </td>
                                 </tr>
                             </table>
                        </div>
                    </div>
            <div style="visibility:hidden;">
                   <asp:TextBox ID="idRIVAL_COMPANY_CODE" runat="server"></asp:TextBox>
            
            </div>
          
        </div>
    </form>
</body>
</html>
