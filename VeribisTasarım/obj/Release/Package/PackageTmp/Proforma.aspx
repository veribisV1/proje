﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Proforma.aspx.cs" Inherits="VeribisTasarım.Proforma" %>
<%@ Import Namespace="VeribisTasarım.Controller"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript" src="fancyBox/source/jquery.fancybox.js?v=2.1.5"></script>


    <%--fancy_box stil tanımı--%>
    <style type="text/css">
        .fancybox-custom .fancybox-skin {
            box-shadow: 0 0 50px #222;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ALAN12">
        <h3> <%=ResGetir.resGetir(636)%></h3>
        <div class="tab-control" data-role="tab-control">
            <ul class="tabs">
                <li class="active"><a href="#ProformaEkle"> <%=ResGetir.resGetir(123)%></a></li>
            </ul>
            <div class="frames" style="float: left; width: 100%">
                <div class="frame" id="ProformaEkle">
                    <div class="KisiTableHizalama">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="idButtonProformaEkleYeni" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonProformaEkleKaydet" runat="server" CssClass="bg-blue fg-white" Height="30px" OnClick="idButtonProformaEkleKaydet_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonProformaEkleSil" runat="server" CssClass="bg-blue fg-white" Height="30px" />
                                </td>
                                <td>
                                    <asp:Button ID="idButtonGeriDon" runat="server" CssClass="bg-blue fg-white" Height="30px"/>
                                </td>
                            </tr>
                        </table>
                       
                        <asp:TextBox ID="idOPPORTUNITY_CODE" runat="server" Visible="False"></asp:TextBox>
                        <hr />
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(3)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCOMPANY_CODE" runat="server" CssClass="dropdown" OnSelectedIndexChanged="idCOMPANY_CODE_SelectedIndexChanged" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(128)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idCONTACT_CODE" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(180)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSELLING_BUYING" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(188)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="30px" Width="70%" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="30px" Width="28%" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(193)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idDOCUMENT_DATE" CssClass="textbox" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(6)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idAPPOINTED_USER_CODE" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="15%">Stok Bağımsız
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:CheckBoxList ID="idFREE_STOK" runat="server">
                                            <asp:ListItem Text="" Value="1"></asp:ListItem>
                                        </asp:CheckBoxList>
                                    </td>
                                </tr>


                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(206)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idEXPLANATION" runat="server" CssClass="multilinetextbox" TextMode="MultiLine" MaxLength="1000"></asp:TextBox>
                                    </td>
                                </tr>


                            </table>


                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(598)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSIPARIS_YOLU" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(28)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idPAYMENT_TYPE" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(454)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idDELIVERY_TYPE" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%">Mensei
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idMENSEI" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(593)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idBANKA_BILGISI" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(455)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idCERTIFICATE_DATE" runat="server" CssClass="textbox"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(22)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idSEVK_ADRESI" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(21)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idFATURA_ADRESI" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(591)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idAMBALAJLAMA" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(589)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idNAKLIYE_TIPI" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(590)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idNAKLIYE_FIRMASI" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                            </table>

                        </div>
                        <div class="ALAN4">
                            <table class="KisiTable">
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(594)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idSIPARIS_NO" runat="server" CssClass="textbox"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(86)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="idSIPARIS_TARIHI" runat="server" CssClass="textbox"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"> <%=ResGetir.resGetir(195)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idWHY_LOST" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="35%"><%=ResGetir.resGetir(172)%>
                                    </td>
                                    <td width="2%">:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="idRIVAL_COMPANY_CODE" runat="server" CssClass="dropdown">
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                            </table>

                        </div>
                    </div>

                     <%-- ******* GRIDVIEW *******--%>
               <div class="ALAN12">
                   <div class="KisiTableHizalama">
                       <table class="KisiTable">
                           <tr>
                               <td>

                                   <%-- gridle ilgili işlemler başlıyor --%>

                                   <asp:Button ID="btnVeriEkle" runat="server" CssClass="bg-blue fg-white" OnClientClick="OpenPage('FirsatEkle.aspx','',700,500);return false;" Width="75px" />

                                   <asp:GridView ID="GridView1" runat="server"
                                       AutoGenerateColumns="False" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" EmptyDataText="ÜRÜN EKLEYİNİZ...">

                                       <Columns>

                                           <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                               <ItemTemplate>
                                                   <asp:ImageButton ImageUrl="~/image/Deleteicon.png" ID="lnkRemove" runat="server" OnClientClick="return confirm('Gerçekten silmek istiyor musunuz?')" OnClick="gridSatirSil" CommandArgument='<%# Eval("ROW_ORDER_NO")%>'></asp:ImageButton>
                                               </ItemTemplate>
                                           </asp:TemplateField>


                                           <asp:TemplateField ItemStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
                                               <ItemTemplate>
                                                   <asp:ImageButton ImageUrl="~/image/editicon.png" ID="lnkEdit" runat="server" OnClick="gridSatirDuzenle" CommandArgument='<%# Eval("ROW_ORDER_NO")%>'></asp:ImageButton>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="ROW_ORDER_NO" ItemStyle-Width="5%" Visible="true">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblROW_ORDER_NO" runat="server" Text='<%# Eval("ROW_ORDER_NO")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="KOD" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblSTOK_CODE" runat="server" Text='<%# Eval("STOK_CODE")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>


                                           <asp:TemplateField HeaderText="STOK ADI" ItemStyle-Width="15%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblPRODUCT_NAME" runat="server"
                                                       Text='<%# Eval("PRODUCT_NAME")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>


                                           <asp:TemplateField HeaderText="MİKTAR" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblQUANTITY" runat="server" Text='<%# Eval("QUANTITY")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="BİRİM" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblUNIT" runat="server" Text='<%# Eval("UNIT")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="FİYAT" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblUNIT_PRICE" runat="server" Text='<%# Eval("UNIT_PRICE")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="VERGİ(%)" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblTAX_PERCENT" runat="server" Text='<%# Eval("TAX_PERCENT")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="PARA BİRİMİ" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblCUR_TYPE" runat="server" Text='<%# Eval("CUR_TYPE")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="KUR" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblCUR_VALUE" runat="server" Text='<%# Eval("CUR_VALUE")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>


                                           <asp:TemplateField HeaderText="DÖVİZ TUTARI" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblTOTAL" runat="server" Text='<%# Eval("TOTAL")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>


                                           <asp:TemplateField HeaderText="TL TUTARI" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblTOTAL_UPBK" runat="server" Text='<%# Eval("TOTAL_UPBK")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="İSKONTO(%)" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblDISCOUNT_PERCENT" runat="server" Text='<%# Eval("DISCOUNT_PERCENT")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>


                                           <asp:TemplateField HeaderText="İSKONTO MİKTARI" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblDISCOUNT_TOTAL" runat="server" Text='<%# Eval("DISCOUNT_TOTAL")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="MASRAF(%)" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblEXPENSE_PERCENT" runat="server" Text='<%# Eval("EXPENSE_PERCENT")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="MASRAF MİKTARI" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblEXPENSE_TOTAL" runat="server" Text='<%# Eval("EXPENSE_TOTAL")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="DÖVİZ NET TUTAR" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblTOTAL_UNTAX" runat="server" Text='<%# Eval("TOTAL_UNTAX")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="TL NET TUTAR" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblTOTAL_UPBK_UNTAX" runat="server" Text='<%# Eval("TOTAL_UPBK_UNTAX")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="AÇIKLAMA" ItemStyle-Width="5%">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblEXPLANATION" runat="server" Text='<%# Eval("EXPLANATION")%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                       </Columns>



                                   </asp:GridView>

                               </td>
                           </tr>
                       </table>
                   </div>
               </div>
               
                <%-- gridle ilgili işlemler bitiyor --%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
