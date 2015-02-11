<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="_Firma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="grid12">
        <h3>FİRMA KARTI</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#Yeni">Firma Ekle</a></li>
                <li><a href="#MakinaParki">Makina Parkı</a></li>
                <li><a href="#RakipFirma">Rakip Firma</a></li>
                <li><a href="#RakipUrun">Rakip Ürün</a></li>
                <li><a href="#Kontak">Kontak</a></li>
                <li><a href="#Siparis">Sipariş</a></li>
                <li><a href="#Proforma">Proforma</a></li>
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
                <div class="grid4"> 
                   
                                   
                    <table class="KisiTable" id="Table1">
                       
                    <tr>
                        <td width="35%">
                        Firma Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtFirmaAdi" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtFirmaTicariKodu" MaxLength="50" runat="server"></asp:TextBox>
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
                       <asp:DropDownList ID="DropDownListFirmaTemsilcisi" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Deneme Kişi" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Deneme Abc" Value="2"></asp:ListItem>
                             <asp:ListItem Text="Deneme fgh" Value="3"></asp:ListItem>
                      </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Sektörü
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownListFirmaSektoru" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Enerji" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Tekstil" Value="2"></asp:ListItem>
                             <asp:ListItem Text="Sağlık" Value="3"></asp:ListItem>
                      </asp:DropDownList>

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
                         <asp:DropDownList ID="DropDownListFirmaİl" runat="server" Height="30px" Width="104%">
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
                         <asp:DropDownList ID="DropDownListFirmaİlce" runat="server" Height="30px" Width="104%">
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
                         <asp:TextBox ID="TxtFirmaAdres" MaxLength="30" TextMode="MultiLine"  runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TxtFirmaTelefon" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Fax
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtFirmaFax" MaxLength="50" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                        

                </table>             
                
                    <table class="KisiTable" id="Table2"> 
                    <tr>
                        <td width="35%">
                        Firma Adı
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
                        Kodu
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
                        Temsilcisi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="DropDownList1" runat="server" Height="30px">
                             <asp:ListItem Text="Deneme Kişi" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Deneme Abc" Value="2"></asp:ListItem>
                             <asp:ListItem Text="Deneme fgh" Value="3"></asp:ListItem>
                      </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Sektörü
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownList2" runat="server" Height="30px">
                             <asp:ListItem Text="Enerji" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Tekstil" Value="2"></asp:ListItem>
                             <asp:ListItem Text="Sağlık" Value="3"></asp:ListItem>
                      </asp:DropDownList>

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
                         <asp:DropDownList ID="DropDownList3" runat="server" Height="30px">
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
                         <asp:DropDownList ID="DropDownList4" runat="server" Height="30px">
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
                         <asp:TextBox ID="TextBox3" MaxLength="30" TextMode="MultiLine"  runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox4" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Fax
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TextBox5" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        
                  
                  
                  </table>
                </div>                
                <div class="grid4">
                   <table class="KisiTable" > 
                       <tr>
                        <td width="35%">
                        Kuruluş Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtKuruluşTarihi" MaxLength="50" runat="server" Width="102%" Height="25px" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                     
                    <tr>
                        <td width="35%">
                        Tipi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                      <asp:DropDownList ID="DropDownListFirmaTipi" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="Müşteri" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Potansiyel" Value="2"></asp:ListItem>
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
                          <asp:DropDownList ID="DropDownListFirmaAktif" runat="server" Height="30px" Width="104%">
                              <asp:ListItem Text="Aktif" Value="1"></asp:ListItem>
                              <asp:ListItem Text="Pasif" Value="2"></asp:ListItem>
                              <asp:ListItem Text="Kapalı" Value="3"></asp:ListItem>
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Bağlı Firma
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownListFirmaBagliFirma" runat="server" Height="30px" Width="104%">
                              
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Bölgesi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                        <asp:DropDownList ID="DropDownListFirmaBolgesi" runat="server" Height="30px" Width="104%">
                              <asp:ListItem Text="Marmara Bölgesi" Value="1"></asp:ListItem>
                              <asp:ListItem Text="Ege Bölgesi" Value="2"></asp:ListItem>
                              <asp:ListItem Text="Akdeniz Bölgesi" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Karadeniz Bölgesi" Value="4"></asp:ListItem>
                            <asp:ListItem Text="İç Anadolu Bölgesi" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Doğu Anadolu Bölgesi" Value="6"></asp:ListItem>
                            <asp:ListItem Text="GüneyDoğu Anadolu Bölgesi" Value="7"></asp:ListItem>
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Vergi Dairesi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtFirmaVergiDairesi" MaxLength="50" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Vergi Numarası
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtFirmaVergiNumarasi" MaxLength="50" runat="server"></asp:TextBox>
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
                        <asp:DropDownList ID="DropDownListFirmaGrubu" runat="server" Height="30px" Width="104%">
                              <asp:ListItem Text="Danışmanlık" Value="1"></asp:ListItem>
                              <asp:ListItem Text="Denetim" Value="2"></asp:ListItem>
                          
                             </asp:DropDownList>

                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Mail
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtFirmaMail" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TxtFirmaWebAdresi" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="DropDownListFirmaReferans" runat="server" Height="30px" Width="104%">
                              <asp:ListItem Text="Firma İçi Referans" Value="1"></asp:ListItem>
                              <asp:ListItem Text="Müşteri İçi Referans" Value="2"></asp:ListItem>
                          
                             </asp:DropDownList>
                        </td>
                    </tr>
                       <tr>
                        <td width="35%">
                        Yıllık Cirosu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtFirmaYillikCirosu" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        İskonto Oranı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtİskontoOrani" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Para Birimi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownListParaBirimi" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="TL" Value="1"></asp:ListItem>
                             <asp:ListItem Text="USD" Value="2"></asp:ListItem>
                             <asp:ListItem Text="EURO" Value="3"></asp:ListItem>
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Sahibi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtSahibi" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Ödeme Yetkilisi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtOdemeYetkilisi" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Satın Alma Yetkilisi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtSatinAlmaYetkilisi" MaxLength="50" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Teslimat Sorumlusu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtTeslimatSorumlusu" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="DropDownListOdemeSekli" runat="server" Height="30px" Width="104%">
                             <asp:ListItem Text="15 Gün Vade" Value="1"></asp:ListItem>
                             <asp:ListItem Text="30 Gün Vade" Value="2"></asp:ListItem>
                             <asp:ListItem Text="45 Gün Vade" Value="3"></asp:ListItem>
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Ödeme Günü
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TxtOdemeGunu" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                       </table>
                      
                  </div>
                    
                    </div>
                 </div>
            <div id="MakinaParki"></div>
            <div id="RakipFirma"></div>
            <div id="RakipUrun"></div>
            <div id="Kontak"></div>
            <div id="Siparis"></div>
            <div id="Proforma"></div>
        </div>
    </div>
</asp:Content>

