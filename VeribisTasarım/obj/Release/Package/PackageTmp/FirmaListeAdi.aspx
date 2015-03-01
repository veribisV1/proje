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
          <asp:Label ID="lblAlert" runat="server" Visible="false" Text="Aradığınız Şartlara Uygun Kayıt Bulunamadı."></asp:Label>
               <asp:GridView ID="GridView1" runat="server" AllowPaging="true" PageSize="20" CssClass="ListeAdiGridView" 
                         AutoGenerateColumns="False"
                        DataKeyNames="FIRMA_ADI" OnRowCommand="GridView1_RowCommand" 
                    ShowFooter="True" OnPageIndexChanging="GridView1_PageIndexChanging" >
         
                        <Columns>
                          
                           
                            <asp:TemplateField HeaderText="FİRMA ADI">
                    <ItemTemplate>
                    <asp:Label ID="ADI" runat="server" Text='<%# Highlight(Eval("FIRMA_ADI").ToString()) %>'>
                    </asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                  
                       <asp:TextBox ID="txtara" CssClass="TextBoxArama" runat="server"
                         Width="200%"></asp:TextBox>
                    <asp:Button ID="btnara" CssClass="ButtonArama"
                                CommandName="Ara"
                                runat="server" Text="Ara"
                                 />


                    <asp:Button ID="btngeri"
                                CommandName="Geri" CssClass="GridGeri"
                                runat="server" Text="Geri" Visible="false"
                                Width="60px" />
                    </FooterTemplate>

                    </asp:TemplateField>
                            <asp:BoundField DataField="TEMSILCISI" HeaderText="TEMSİLCİSİ" />
                            <asp:BoundField DataField="ACIK_ADRES" HeaderText="ADRES" />
                            <asp:BoundField DataField="ILCE" HeaderText="İLCE" />
                            <asp:BoundField DataField="IL" HeaderText="İL" />
                            <asp:BoundField DataField="TELEFON" HeaderText="TELEFON" />
                            <asp:BoundField DataField="MAIL" HeaderText="MAİL" />
                            <asp:BoundField DataField="WEBADDRESS" HeaderText="WEB ADRESİ" />

                            
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
