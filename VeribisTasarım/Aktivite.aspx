<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="Aktivite.aspx.cs" Inherits="_Aktivite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="ALAN12">
        <h3>AKTİVİTE</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#AktiviteEkle">Aktivite Ekle</a></li>
                
            </ul>
            <div id="AktiviteEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                <tr>         
                        <td>
                            <asp:Button ID="ButtonAktiviteYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonAktiviteKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonAktiviteSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                <hr />
                <div class="ALAN4"> 
                   
                                   
                    <table class="KisiTable" id="Table1">
                       
                    <tr>
                        <td width="35%">
                        Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                            <asp:DropDownList ID="AKTIVITE_KISI_ADI" Height="30px" runat="server" Width="104%">
                     
                             
                      </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Çalıştığı Firma
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                            <asp:DropDownList ID="AKTIVITE_FIRMA" Height="30px" runat="server" Width="104%">
                     
                             
                      </asp:DropDownList>
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
                            <asp:DropDownList ID="AKTIVITE_AKTIVITE_TIPI" Height="30px" runat="server" Width="104%">
                     
                             
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
                         <asp:TextBox ID="AKTIVITE_EVRAK_NO1" MaxLength="20" Height="22px" Width="70%" runat="server"></asp:TextBox>  <asp:TextBox ID="AKTIVITE_EVRAK_NO2" MaxLength="20" Height="22px"  Width="24%"  runat="server"></asp:TextBox>
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
                            <asp:TextBox ID="AKTIVITE_BASLANGIC" runat="server" TextMode="DateTime" Height="25px" Width="72%"></asp:TextBox> <asp:TextBox ID="AKTIVITE_BASLANGIC_SAAT" runat="server" TextMode="Time" Height="25px" Width="25%"></asp:TextBox>
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
                     <asp:TextBox ID="AKTIVITE_BITIS" runat="server" TextMode="DateTime" Height="25px" Width="72%"></asp:TextBox> <asp:TextBox ID="AKTIVITE_BITIS_SAAT" runat="server" TextMode="Time" Height="25px" Width="25%"></asp:TextBox>

                        </td>
                    </tr> 
                        <tr>
                        <td width="35%">
                        Kimlerle
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                           <asp:DropDownList ID="AKTIVITE_FIRMADAN_KIMLERLE" Height="30px" runat="server" Width="104%">
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
                         <asp:DropDownList ID="AKTIVITE_KONU_GRUBU" runat="server" Height="30px" Width="104%">
                   
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
                       <asp:TextBox ID="AKTIVITE_KONU" Height="22px" runat="server"></asp:TextBox>

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
                          <asp:DropDownList ID="AKTIVITE_NEREDE" runat="server" Height="30px" Width="104%">
  
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
                      <asp:DropDownList ID="AKTIVITE_ONCELIK" runat="server" Height="30px" Width="104%">
                         
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
                          <asp:DropDownList ID="AKTIVITE_HATIRLATMA" runat="server" Height="30px" Width="104%">
                         
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
                       <asp:TextBox ID="AKTIVITE_RENK" MaxLength="100" Height="22px" Width="102%" runat="server" TextMode="Color"></asp:TextBox>

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
                        <asp:DropDownList ID="AKTIVITE_GRUBU" runat="server" Height="30px" Width="104%">
               
            
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
                            <asp:DropDownList ID="AKTIVITE_TEMSILCISI" runat="server" Height="30px" Width="104%">
                           
            
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
                         <asp:DropDownList ID="AKTIVITE_PROJE" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                   <tr>
                        <td width="35%">
                        Detay
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                      <asp:TextBox ID="AKTIVITE_DETAY" TextMode="MultiLine" Height="160px" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                   
                       </table>
                      
                      
                  </div>
                  
                    </div>
                
                 </div>
            
        </div>
    </div>
</asp:Content>

