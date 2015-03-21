<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Aktivite.aspx.cs" Inherits="VeribisTasarım.Aktivite" %>
<%@ Import Namespace="VeribisTasarım.Controller"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/css/multiple-select.css" rel="stylesheet" />
    <script src="Content/js/jquery.multiple.select.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="ALAN12">
        <h3>AKTİVİTE</h3>
        <div class="tab-control" data-role="tab-control">
            <ul class="tabs">
                <li><a href="#ListeAdi">Liste Adı</a></li>
                <li class="active"><a href="#AktiviteEkle">Aktivite Ekle</a></li>
            </ul>
            <div class="frames" style="float: left; width: 100%">
                <div class="frame" id="ListeAdi">
                    <div class="KisiTableHizalama">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="nGrid" DataKeyNames="COMPANY_CODE" AlternatingRowStyle-CssClass="alt" EmptyDataText="Firma bilgisine rastlanmadı.">

                            <Columns>

                                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClick="editActivity" CommandArgument='<%# Eval("ACTIVITY_CODE")%>'></asp:ImageButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="AKTİVİTE KODU">
                                    <ItemTemplate>
                                        <asp:Label ID="lblACTIVITY_CODE" runat="server" Text='<%# Eval("ACTIVITY_CODE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="KİŞİ KODU">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCONTACT_CODE" runat="server"
                                            Text='<%# Eval("CONTACT_CODE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="FİRMA KODU">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCOMPANY_CODE" runat="server" Text='<%# Eval("COMPANY_CODE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="BAŞLANGIÇ TARİHİ">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSDATE" runat="server" Text='<%# Eval("SDATE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="BİTİŞ TARİHİ">
                                    <ItemTemplate>
                                        <asp:Label ID="lblEDATE" runat="server" Text='<%# Eval("EDATE")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="SÜRE">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDURATION" runat="server" Text='<%# Eval("DURATION")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>

                        
                    </div>
                </div>
                <div class="frame" id="AktiviteEkle" style="min-height: 100px;">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonAktiviteYeni" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClick="idButtonAktiviteYeni_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonAktiviteKaydet" runat="server" CssClass="bg-blue fg-white"  Height="30px" OnClick="idButtonAktiviteKaydet_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonAktiviteSil" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonAktiviteKapat" runat="server" CssClass="bg-blue fg-white" OnClientClick="if($('#ContentPlaceHolder1_idACTIVITY_CODE').val()==null){alert('Aktiviteyi Kaydedin..'); return false;}" Height="30px" OnClick="idButtonAktiviteKapat_Click" />
                                </td>
                            </tr>
                        </table>
                        <div hidden="hidden">
                            <asp:TextBox ID="idACTIVITY_CODE" runat="server"></asp:TextBox>
                            <asp:TextBox ID="idOPENORCLOSE" runat="server"></asp:TextBox>
                        </div>

                        <hr />
                        <div class="ALAN4">
                            <table class="KisiTable" id="Table1">
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(3)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_CODE" runat="server" CssClass="dropdown" OnSelectedIndexChanged="idCOMPANY_CODE_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(1)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCONTACT_CODE" runat="server" CssClass="dropdown"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(71)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idACTIVITY_TYPE" runat="server" CssClass="dropdown"></asp:DropDownList>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(188)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="30px" Width="70%" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="30px" Width="28%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(72)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                     <%--   <input id="datetimepicker" type="text" />--%>
                                       
                                        <asp:TextBox ID="idSDATE" runat="server" CssClass="textbox"></asp:TextBox>
                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(73)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idEDATE" runat="server" CssClass="textbox"></asp:TextBox>
                                       
     
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(75)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idJOINER_CODE" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(169)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>

                                        <asp:ListBox ID="idSUBJECT_CODE" runat="server" Height="30px" Width="100%">
                                        </asp:ListBox>
                                        <script type="text/javascript">
                                            $('#ContentPlaceHolder1_idSUBJECT_CODE').multipleSelect();
                                        </script>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(76)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idSUBJECT" MaxLength="1000" runat="server" CssClass="textbox"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(77)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idLOCATION" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(78)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idPRIORITY" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(79)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idREMEMBER" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(55)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCOLOR" MaxLength="100" CssClass="textbox" runat="server" TextMode="Color"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(17)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idACTIVITY_GROUP" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(6)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idAPPOINTED_USER_CODE" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(81)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idPROJECT" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(84)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idNOTE" TextMode="MultiLine" MaxLength="1000" CssClass="multilinetextbox" runat="server"></asp:TextBox>

                                    </td>
                                </tr>

                            </table>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>

</asp:Content>
