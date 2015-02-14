<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Kisi.aspx.cs" Inherits="VeribisTasarım.Kisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="ALAN12">
        <h3>KİŞİ KARTI</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#KisiEkle">Kişi Ekle</a></li>
                <li><a href="#AktivitePlanla">Aktivite Planla</a></li>
                <li><a href="#NotEkle">Not Ekle</a></li>
                <li><a href="#Fırsat">Fırsat</a></li>
                <li><a href="#Teklif">Teklif</a></li>
                <li><a href="#Numune">Numune</a></li>
                <li><a href="#Proforma">Proforma</a></li>
                <li><a href="#Fatura">Fatura</a></li>
                <li><a href="#EkForm">Ek Form</a></li>
                <li><a href="#AileBilgileri">Aile Bilgileri</a></li>
            </ul>
            <div id="KisiEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonKisiEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonKisiEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonKisiEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                <hr />

                
                <div class="ALAN4">              
                <table class="KisiTable" id="Tablo1"> 
                    <tr>
                        <td width="35%">
                        Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="KISI_ADI" MaxLength="200" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_IKINCI_ADI" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_SOYADI" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_OZEL_KODU" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_KISA_ADI" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="KISI_FIRMA" runat="server" Height="30px" Width="104%">
                            
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
                         <asp:DropDownList ID="KISI_CINSIYET" runat="server" Height="30px" Width="104%">
 
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
                         <asp:TextBox ID="KISI_TELEFON" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_ADRES" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    

                </table>
                   
                </div>                
                <div class="ALAN4">
                   <table class="KisiTable" > 
                    <tr>
                        <td width="35%">
                        Departmanı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="KISI_DEPARTMANI" runat="server" Height="30px" Width="104%">
                        
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
                          <asp:DropDownList ID="KISI_UNVANI" runat="server" Height="30px" Width="104%">
                         
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
                          <asp:DropDownList ID="KISI_GRUBU" runat="server" Height="30px" Width="104%">
                           
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
                         <asp:DropDownList ID="KISI_TEMSILCISI" runat="server" Height="30px" Width="104%">
                            
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
                         <asp:DropDownList ID="KISI_AKTIF" runat="server" Height="30px" Width="104%">
                           
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
                          <asp:TextBox ID="KISI_DOGUM_TARIHI" MaxLength="30" runat="server" Height="25px" Width="102%" TextMode="DateTime"></asp:TextBox>
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
                         <asp:DropDownList ID="KISI_BILDIGI_DILLER" runat="server" Height="30px" Width="104%">
                           
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
                          <asp:DropDownList ID="KISI_UYE_DERNEKLER" runat="server" Height="30px" Width="104%">
                            
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
                          <asp:DropDownList ID="KISI_HITAP" runat="server" Height="30px" Width="104%">
                            
                         </asp:DropDownList>
                        </td>
                    </tr>
                       
                       </table>

                    </div>
                  <div class="ALAN4">
              <table class="KisiTable" > 
                  <tr>
                        <td width="35%">
                        Mail Adresi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                           <asp:TextBox ID="KISI_MAIL_ADRESI" MaxLength="30" runat="server"></asp:TextBox>
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
                           <asp:TextBox ID="KISI_WEB_ADRESI" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Referans
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                        <asp:DropDownList ID="KISI_REFERANS" runat="server" Height="30px" Width="104%">
                     
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
                          <asp:DropDownList ID="KISI_EGITIMI" runat="server" Height="30px" Width="104%">
                   
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
                         <asp:TextBox ID="KISI_SON_DURUM" MaxLength="50" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    
                       </table>
                      
                  </div>
                    
                    </div>
                 </div>
            <div id="AktivitePlanla"></div>
            <div id="NotEkle"style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonNotEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonNotEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonNotEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                <hr />
                    <div class="ALAN6">
                        <table class="KisiTable">
                            <tr>
                        <td width="15%">
                        Tarih
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="NOT_EKLE_TARIH" Width="30%" Height="20px" TextMode="DateTime" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                             <tr>
                        <td width="15%">
                        Açıklama
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="NOT_EKLE_ACIKLAMA" Width="100%" Height="100px" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                        </table>

                    </div>
                
                </div>

            </div>
            <div id="Fırsat"></div>
            <div id="Teklif"></div>
            <div id="Numune"></div>
            <div id="Proforma"></div>
            <div id="Fatura"></div>
            <div id="EkForm"></div>
            <div id="AileBilgileri"style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonAileBilgileriYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonAileBilgileriKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonAileBilgileriSil" runat="server" CssClass="ButtonSil" Text="Sil" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                <hr />


                
                <div class="ALAN6">
                    <table class="KisiTable">
                        <tr>
                        <td width="15%">
                        Medeni Hali
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="AILE_BILGILERI_MEDENI_HALI" runat="server" Height="26px" Width="32%">
                            
                         </asp:DropDownList>
                        </td>
                    </tr>
                          <tr>
                        <td width="15%">
                        Evlilik Yıldönümü
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="AILE_BILGILERI_EVLILIK_YILDONUMU" Width="30%" Height="20px" TextMode="DateTime" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Eşinin Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="AILE_BILGILERI_ESININ_ADI" Width="30%" Height="20px" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Eşinin İkinci Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="AILE_BILGILERI_ESININ_IKINCI_ADI" Width="30%" Height="20px" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Eşinin Soyadı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="AILE_BILGILERI_ESININ_SOYADI" Width="30%" Height="20px" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Çocuk Sayısı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="AILE_BILGILERI_COCUK_SAYISI" Width="30%" Height="20px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Evi var mı?
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="AILE_BILGILERI_EVI_VAR_MI" runat="server" Height="26px" Width="32%">
                            
                         </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Ev Skalası
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="AILE_BILGILERI_EV_SKALASI" runat="server" Height="26px" Width="32%">
                            
                         </asp:DropDownList>
                        </td>
                    </tr>

                    </table>

                </div>

             </div>
            </div>
        </div>
    </div>

</asp:Content>
