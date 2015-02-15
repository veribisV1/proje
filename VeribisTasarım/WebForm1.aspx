<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="VeribisTasarım.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="idADDRESS" runat="server" AutoGenerateColumns="False" Width="250px">
        <Columns>
            <asp:BoundField DataField="ADRES">
            <ItemStyle Width="70%" />
            </asp:BoundField>
            <asp:BoundField DataField="BELDE">
            <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="ILCE">
            <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="IL">
            <ItemStyle Width="10%" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <p> şsljdf asf as as şasd şalsjd aşlsjd şlasjd lakjsd lakjsd la jsdlaj sdlka slkdj alskdj alksdj laksjd lkasjd laksj dlasj dlkaj sdlkjas dlkja sldj alsdj alsdj lasjd lakjsd lajsd lakjs dlkaj sdlkaj sdlkaj sldj lasd şalsjd aşlsjd şlasjd lakjsd lakjsd la jsdlaj sdlka slkdj alskdj alksdj laksjd lkasjd laksj dlasj dlkaj sdlkjas dlkja sldj alsdj alsdj lasjd lakjsd lajsd lakjs dlkaj sdlkaj sdlkaj sldj </p>
</asp:Content>
