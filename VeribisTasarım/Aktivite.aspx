<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Aktivite.aspx.cs" Inherits="VeribisTasarım.Aktivite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="ALAN12">
        <h3>AKTİVİTE</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#AktiviteEkle">AktiAktivite Ekle</a></li>
                
            </ul>
            <div id="AktiviteEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                <tr>         
                        <td>
                            <asp:Button ID="idButtonAktiviteYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonAktiviteKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" OnClick="idButtonAktiviteKaydet_Click" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonAktiviteSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <asp:TextBox ID="idACTIVITY_CODE" runat="server" Visible="False"></asp:TextBox>
                <hr />
                <div class="ALAN4"> 
                   
                                   
                    <table class="KisiTable" id="Table1">
                       
                    <tr>
                        <td width="35%">
                        Adı
                        >
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="idCONTACT_CODE" Height="30px" runat="server" Width="104%"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Firma Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                            <asp:DropDownList ID="idCOMPANY_CODE" Height="30px" runat="server" Width="104%"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Aktivite Tipi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                            <asp:DropDownList ID="idACTIVITY_TYPE" Height="30px" runat="server" Width="104%"> </asp:DropDownList>
                        </td>
                    </tr>
                        
                    <tr>
                        <td width="35%">
                        Evrak No
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="22px" Width="70%" runat="server"></asp:TextBox>  <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="22px"  Width="23%"  runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Başlangıç
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                            <asp:TextBox ID="idSDATE" runat="server" TextMode="Date" Height="25px" Width="72%"></asp:TextBox> <asp:TextBox ID="idSDATE_TIME" runat="server" TextMode="Time" Height="25px" Width="25%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Bitiş
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                     <asp:TextBox ID="idEDATE" runat="server" TextMode="Date" Height="25px" Width="72%"></asp:TextBox> <asp:TextBox ID="idEDATE_TIME" runat="server" TextMode="Time" Height="25px" Width="25%"></asp:TextBox>

                        </td>
                    </tr> 
                        <tr>
                        <td width="35%">
                        Sonuç Grubu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                           <asp:DropDownList ID="idJOINER_CODE" Height="30px" runat="server" Width="104%">
                     </asp:DropDownList>
                        </td>
                    </tr>                      
                       

                </table>             
                
                   
                </div>                
                <div class="ALAN4">
                   <table class="KisiTable" > 
                        <tr>
                        <td width="35%">
                        Konu Grubu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="idSUBJECT_CODE" runat="server" Height="30px" Width="104%">
                   
                         </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Konu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="idSUBJECT" MaxLength="1000" Height="22px" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Nerede
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="idLOCATION" runat="server" Height="30px" Width="104%">
  
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Öncelik
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                      <asp:DropDownList ID="idPRIORITY" runat="server" Height="30px" Width="104%">
                         
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Hatırlatma
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="idREMEMBER" runat="server" Height="30px" Width="104%">
                         
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Renk
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="idCOLOR" MaxLength="100" Height="22px" Width="102%" runat="server" TextMode="Color"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Grubu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                        <asp:DropDownList ID="idACTIVITY_GROUP" runat="server" Height="30px" Width="104%">
                            </asp:DropDownList>
                        </td>
                    </tr>
                      
                       </table>
                    
                    </div>
                  <div class="ALAN4">
              <table class="KisiTable" > 
                    <tr>
                        <td width="35%">
                        Temsilcisi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                            <asp:DropDownList ID="idAPPOINTED_USER_CODE" runat="server" Height="30px" Width="104%">
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Proje
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="idPROJECT" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                   <tr>
                        <td width="35%">
                        Sonuç
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                      <asp:TextBox ID="idNOTE" TextMode="MultiLine" MaxLength="1000" Height="160px" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                   
                       </table>
                      
                      
                  </div>
                  
                    </div>
                
                 </div>
            
        </div>
    </div>

</asp:Content>
