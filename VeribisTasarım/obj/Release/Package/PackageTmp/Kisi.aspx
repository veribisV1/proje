<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Kisi.aspx.cs" Inherits="_Kisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="grid12">
        <h3>KİŞİ KARTI</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#Yeni">Kişi Ekle</a></li>
                <li><a href="#tab8">İkinci</a></li>
                <li><a href="#tab9">Üçüncü</a></li>
            </ul>
            <div id="Yeni" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonSil" runat="server" CssClass="ButtonSil" Text="Sil" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                <hr />

                
                <div class="grid4">              
                <table class="KisiTable" id="Tablo1"> 
                    <tr>
                        <td width="35%">
                        Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtKisiAdi" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Kontak İkinci Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtKontakİkinciAdi" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Soyadı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtKisiSoyadi" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Kişi Özel Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtKisiOzelKodu" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Kontak Kısa Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtKontakKisaAdi" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="DropDownListKisiCalistigiFirma" runat="server" Height="30px" Width="104%">
                            
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Cinsiyet
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownCinsiyet" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Erkek" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Kadın" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Telefon
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtTelefon" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        İl
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownListİl" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="İstanbul" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Ankara" Value="2"></asp:ListItem>
                             <asp:ListItem Text="İzmir" Value="3"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        İlçe
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownListİlce" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Beyoğlu" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Bostancı" Value="2"></asp:ListItem>
                             <asp:ListItem Text="Ataşehir" Value="3"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Adres
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtKisiAdres" MaxLength="30" TextMode="MultiLine"  runat="server"></asp:TextBox>
                        </td>
                    </tr>

                </table>
                    <table class="KisiTable" id="Table2"> 
                     <tr>
                        <td width="35%">
                        Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TextBox1" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Kontak İkinci Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TextBox2" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Soyadı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TextBox3" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Kişi Özel Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TextBox4" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Kontak Kısa Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TextBox5" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="104%">
                            
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Cinsiyet
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownList4" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Erkek" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Kadın" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Telefon
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TextBox6" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        İl
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownList5" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="İstanbul" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Ankara" Value="2"></asp:ListItem>
                             <asp:ListItem Text="İzmir" Value="3"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        İlçe
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownList6" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Beyoğlu" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Bostancı" Value="2"></asp:ListItem>
                             <asp:ListItem Text="Ataşehir" Value="3"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Adres
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TextBox7" MaxLength="30" TextMode="MultiLine"  runat="server"></asp:TextBox>
                        </td>
                    </tr>
                  
                  </table>
                </div>                
                <div class="grid4">
                   <table class="KisiTable" > 
                    <tr>
                        <td width="35%">
                        Departmanı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownListKisiDepartmani" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Ar-ge" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Bilgi Teknolojileri" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Ünvanı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownListKisiUnvani" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Genel Müdür" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Genel Müdür Yardımcısı" Value="2"></asp:ListItem>
                         </asp:DropDownList>
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
                          <asp:DropDownList ID="DropDownListKisiGrubu" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Ürünlerimizi Bilen" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Karar Verici" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Temsilcisi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownListKisiTemsilcisi" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Deneme Kisi" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Deneme Abc" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Aktif
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownListKisiAktif" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Çalışıyor" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Part-Time" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Doğum Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:TextBox ID="TxtKisiDogumTarihi" MaxLength="30" runat="server" Height="25px" Width="102%" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Bildiği Diller
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownListBildigiDiller" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="İngilizce" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Almanca" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Üye Dernekler
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownListKisiUyeDernekler" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Acil İhtiyaç Projesi" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Örnek Proje" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Hitap
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownListKisiHitap" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Bay" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Bayan" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                       <tr>
                        <td width="35%">
                        Mail Adresi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                           <asp:TextBox ID="TxtKisiMailAdresi" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                       <tr>
                        <td width="35%">
                        Web Adresi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                           <asp:TextBox ID="TxtKisiWebAdresi" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                       </table>

                    </div>
                  <div class="grid4">
              <table class="KisiTable" > 
                    <tr>
                        <td width="35%">
                        Referans
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                        <asp:DropDownList ID="DropDownListKisiReferans" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Firma İçi Referans" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Müşteri Referans" Value="2"></asp:ListItem>
                         </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Eğitimi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownListKisiEgitimi" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Üniversite" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Yüksek Lisans" Value="2"></asp:ListItem>
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
                         <asp:TextBox ID="TxtKisiSonDurum" MaxLength="50" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    
                       </table>
                      
                  </div>
                    
                    </div>
                 </div>
            <div id="tab8">Phasellus mattis tincidunt nibh. Cras orci urna, blandit id, pretium vel, aliquet ornare, felis. Maecenas scelerisque sem non nisl. Fusce sed lorem in enim dictum bibendum.</div>
            <div id="tab9">Nam dui erat, auctor a, dignissim quis, sollicitudin eu, felis. Pellentesque nisi urna, interdum eget, sagittis et, consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.</div>
        </div>
    </div>
</asp:Content>

