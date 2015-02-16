<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Firsat.aspx.cs" Inherits="VeribisTasarım.Fırsat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="ALAN12">
        <h3>FIRSAT</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#FirsatEkle">Fırsat Ekle</a></li>
                
            </ul>
            <div id="FirsatEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                <tr>         
                        <td>
                            <asp:Button ID="idButtonFirsatEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonFirsatEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonFirsatEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                <hr />
                <div class="ALAN4"> 
                   
                                   
                    <table class="KisiTable" id="Table1">
              
                    <tr>
                        <td width="35%">
                        Firma Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                   <asp:DropDownList ID="COMPANY_CODE" Height="30px" runat="server" Width="104%">                        
                      </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Kontak
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                     <asp:DropDownList ID="CONTACT_CODE" Height="30px" runat="server" Width="104%">                        
                      </asp:DropDownList>
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
                         <asp:TextBox ID="DOCUMENT_NO1" MaxLength="20" Height="22px" Width="70%" runat="server"></asp:TextBox>  <asp:TextBox ID="DOCUMENT_NO2" MaxLength="20" Height="22px"  Width="22%"  runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Cinsi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="SELLING_BUYING" runat="server" Height="30px" Width="104%">
              
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Evrak Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="DOCUMENT_DATE" runat="server" TextMode="Date" Height="25px" Width="101%"></asp:TextBox>
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
                         <asp:DropDownList ID="APPOINTED_USER_CODE" runat="server" Height="30px" Width="104%">
               
                         </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Stok Bağımsız
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:CheckBoxList ID="FREE_STOK" runat="server">
                             <asp:ListItem Text=""></asp:ListItem>
                         </asp:CheckBoxList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Revizyon
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="REVISION" runat="server" Height="30px" Width="104%">
                        </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Teslim Şekli
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                      <asp:DropDownList ID="DELIVERY_TYPE" runat="server" Height="30px" Width="104%">
                             
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Ödeme Şekli
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="PAYMENT_TYPE" runat="server" Height="30px" Width="104%">
                         
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Takip Yön.
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="SEARCH_METHOD" runat="server" Height="30px" Width="104%">
                              
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Takip Aşaması
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                        <asp:DropDownList ID="SEARCH_STEP" runat="server" Height="30px" Width="104%">
                             </asp:DropDownList>
                        </td>
                    </tr>
                     </table>
                    
                    </div>
                  <div class="ALAN4">
              <table class="KisiTable" > 
                    <tr>
                        <td width="35%">
                        Geçerlilik Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="CERTIFICATE_DATE" runat="server" TextMode="Date" Height="25px" Width="101%"></asp:TextBox>
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
                         <asp:DropDownList ID="PROJECT_CODE" runat="server" Height="30px" Width="104%">
                             
                             </asp:DropDownList>
                        </td>
                    </tr>
                   <tr>
                        <td width="35%">
                        Son Durum
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                        <asp:DropDownList ID="LAST_POSITION" runat="server" Height="30px" Width="104%">
                           
                             </asp:DropDownList>

                        </td>
                    </tr>
                   <tr>
                        <td width="35%">
                        Neden Kaybettik
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="WHY_LOST" runat="server" Height="30px" Width="104%">
                              
                          
                             </asp:DropDownList>
                        </td>
                    </tr>
                       <tr>
                        <td width="35%">
                        Kazanan Rakip Firma
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="RIVAL_COMPANY_CODE" runat="server" Height="30px" Width="104%">
                              
                          
                             </asp:DropDownList>
                        </td>
                    </tr>
                   
                    <tr>
                        <td width="35%">
                        Açıklama
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="EXPLANATION" TextMode="MultiLine" Height="60px" runat="server" MaxLength="1000"></asp:TextBox>
                        </td>
                    </tr>
                  
                    
                       </table>
                      
                      
                  </div>
                  
                    </div>
                
                 </div>
            
        </div>
    </div>

</asp:Content>
