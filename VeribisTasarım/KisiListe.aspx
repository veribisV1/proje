<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KisiListe.aspx.cs" Inherits="VeribisTasarım.KisiListe" %>

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
    <link href="style/gridStil.css" rel="stylesheet" /> 
</head>
<body class="metro">
    <form id="form1" runat="server">
        <div>
            <h3>Kişiler</h3>
            <div class="KisiTableHizalama">
                  <asp:Button ID="btnVeriEkle" runat="server" CssClass="bg-blue fg-white" Text="Yeni Kişi" Width="75px" OnClick="btnVeriEkle_Click" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="nGrid" DataKeyNames="CONTACT_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="KİŞİ EKLEYİNİZ...">

                    <Columns>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClick="editContact" CommandArgument='<%# Eval("CONTACT_CODE")%>'></asp:ImageButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="ADI">
                            <ItemTemplate>
                                <asp:Label ID="lblNAME" runat="server" Text='<%# Eval("NAME")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="SOYADI">
                            <ItemTemplate>
                                <asp:Label ID="lblSURNAME" runat="server"
                                    Text='<%# Eval("SURNAME")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                      

                    </Columns>

                </asp:GridView>

            </div>

            <asp:TextBox ID="idCOMPANY_CODE" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="idCONTACT_CODE" runat="server" Visible="False"></asp:TextBox>
        </div>
    </form>
</body>
</html>
