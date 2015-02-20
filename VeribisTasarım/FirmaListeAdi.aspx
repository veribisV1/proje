<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirmaListeAdi.aspx.cs" Inherits="VeribisTasarım.FirmaListeAdi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/stil.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
          <asp:Label ID="lblAlert" runat="server" CssClass="ListeAdiGridView" Visible="false" Text="Aradığınız Şartlara Uygun Kayıt Bulunamadı."></asp:Label>
               <asp:GridView ID="GridView1" runat="server" 
                         AutoGenerateColumns="false" AllowPaging="false"
                        DataKeyNames="COMPANY_CODE" OnRowCommand="GridView1_RowCommand" 
                    ShowFooter="true" >
         
                        <Columns>
                          
                            <asp:BoundField DataField="COMPANY_CODE" HeaderText="COMPANY_CODE" />
                            <asp:TemplateField HeaderText="FİRMA ADI">
                    <ItemTemplate>
                    <asp:Label ID="ADI" runat="server" Text='<%# Highlight(Eval("COMPANY_NAME").ToString()) %>'>
                    </asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    <asp:TextBox ID="txtara" runat="server"
                         ></asp:TextBox>
                    <asp:Button ID="btnara"
                                CommandName="Ara"
                                runat="server" Text="Ara"
                                 />
                    <asp:Button ID="btngeri"
                                CommandName="Geri"
                                runat="server" Text="Geri" Visible="false"
                                Width="60px" />
                    </FooterTemplate>
                    </asp:TemplateField>
                            
                            <asp:BoundField DataField="ADDRESS" HeaderText="ADRES" />
                            <asp:BoundField DataField="SECTOR" HeaderText="SEKTÖR" />
                            <asp:BoundField DataField="PHONE" HeaderText="TELEFON" />
                            
                        </Columns>
                    </asp:GridView>

                </div>
            </ContentTemplate>
            </asp:UpdatePanel>

        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            

        <img src="resim/yukleniyor.gif" alt="Aranıyor... Lütfen Bekleyin"/>
        </ProgressTemplate>
    </asp:UpdateProgress>
    
    </div>
    </form>
</body>
</html>
