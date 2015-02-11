<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="Aktivite.aspx.cs" Inherits="_Aktivite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="ALAN12">
        <h3>AKTİVİTE</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#Yeni">Aktivite Ekle</a></li>
                
            </ul>
            <div id="Yeni" style="min-height:100px">
                <div class="KisiTableHizalama">
                <tr>         
                        <td>
                            <asp:Button ID="ButtonYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
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
                         <asp:TextBox ID="TextBoxAktiviteAdi" MaxLength="50" Height="22px" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBoxAktiviteCalistigiFirma" MaxLength="50" Height="22px" runat="server"></asp:TextBox>
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
                            <asp:DropDownList ID="DropDownListAktiviteTipi" Height="30px" runat="server" Width="104%">
                                <asp:ListItem Text="Ziyaret" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Yapılacak İş" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Toplantı" Value="3"></asp:ListItem>
                                <asp:ListItem Text="İzin" Value="4"></asp:ListItem>
                             
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
                         <asp:TextBox ID="TextBoxAktiviteEvrakNo1" MaxLength="50" Height="22px" Width="70%" runat="server"></asp:TextBox>  <asp:TextBox ID="TextBoxAktiviteEvrakNo2" MaxLength="50" Height="22px"  Width="24%"  runat="server"></asp:TextBox>
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
                            <asp:TextBox ID="TextBoxAktiviteBaslangic" runat="server" TextMode="Date" Height="25px" Width="72%"></asp:TextBox> <asp:TextBox ID="TextBoxAktiviteBaslangıcSaat" runat="server" TextMode="Time" Height="25px" Width="25%"></asp:TextBox>
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
                     <asp:TextBox ID="TextBoxAktiviteBitis" runat="server" TextMode="Date" Height="25px" Width="72%"></asp:TextBox> <asp:TextBox ID="TextBoxAktiviteBitisSaat" runat="server" TextMode="Time" Height="25px" Width="25%"></asp:TextBox>

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
                           <asp:DropDownList ID="DropDownListAktiviteFirmadanKimlerle" Height="30px" runat="server" Width="104%">
                                <asp:ListItem Text="Genel Müdür" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Bilgi İşlem Yetkilisi" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Pazarlama Müdürü" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Genel Müdür Yardımcısıs" Value="4"></asp:ListItem>
                             
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
                         <asp:DropDownList ID="DropDownListAktiviteKonuGrubu" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Rutin Ziyaret Yapıldı" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Sipariş Alındı" Value="2"></asp:ListItem>
                             
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
                       <asp:TextBox ID="TextBoxAktiviteKonu" MaxLength="100" Height="22px" runat="server"></asp:TextBox>

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
                          <asp:DropDownList ID="DropDownListAktiviteNerede" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Müşteri Ofisinde" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Müdür Odası" Value="2"></asp:ListItem>
                             
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
                      <asp:DropDownList ID="DropDownListAktiviteOncelik" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Yüksek" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Orta" Value="2"></asp:ListItem>
                             <asp:ListItem Text="Düşük" Value="3"></asp:ListItem>
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
                          <asp:DropDownList ID="DropDownListAktiviteHatirlatma" runat="server" Height="30px" Width="104%">
                              <asp:ListItem Text="5 Dakika" Value="1"></asp:ListItem>
                              <asp:ListItem Text="15 Dakika " Value="2"></asp:ListItem>
                              <asp:ListItem Text="30 Dakika" Value="3"></asp:ListItem>
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
                       <asp:TextBox ID="TextBoxAktiviteRenk" MaxLength="100" Height="22px" Width="102%" runat="server" TextMode="Color"></asp:TextBox>

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
                        <asp:DropDownList ID="DropDownListAktiviteGrubu" runat="server" Height="30px" Width="104%">
                              <asp:ListItem Text="Satış Görüşmeleri" Value="1"></asp:ListItem>
            
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
                            <asp:DropDownList ID="DropDownListAktiviteTemsilcisi" runat="server" Height="30px" Width="104%">
                              <asp:ListItem Text="Deneme Kişi" Value="1"></asp:ListItem>
                              <asp:ListItem Text="Deneme Abc" Value="2"></asp:ListItem>
            
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
                         <asp:DropDownList ID="DropDownListTeklifProje" runat="server" Height="30px" Width="104%">
                              <asp:ListItem Text="1 Nolu Proje" Value="1"></asp:ListItem>
            
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
                      <asp:TextBox ID="TextBoxAktiviteDetay" MaxLength="50" TextMode="MultiLine" Height="160px" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                   
                       </table>
                      
                      
                  </div>
                  
                    </div>
                
                 </div>
            
        </div>
    </div>
</asp:Content>

