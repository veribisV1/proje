<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="Kisi.aspx.cs" Inherits="_Kisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
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
                         <asp:TextBox ID="KISI_NAME" MaxLength="200" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_MIDDLE_NAME" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_SURNAME" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_SPACIAL_CODE" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_NICNAME" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="KISI_COMPANY_CODE" runat="server" Height="30px" Width="104%">
                            
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
                         <asp:DropDownList ID="KISI_SEXUALITY" runat="server" Height="30px" Width="104%">
 
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
                         <asp:TextBox ID="KISI_PHONE" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="KISI_ADDRESS" runat="server"></asp:TextBox>
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
                          <asp:DropDownList ID="KISI_DEPARTMENT" runat="server" Height="30px" Width="104%">
                        
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
                          <asp:DropDownList ID="KISI_TITLE" runat="server" Height="30px" Width="104%">
                         
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
                          <asp:DropDownList ID="KISI_CONTACTGROUP" runat="server" Height="30px" Width="104%">
                           
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
                         <asp:DropDownList ID="KISI_REPRESENT_CODE" runat="server" Height="30px" Width="104%">
                            
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
                         <asp:DropDownList ID="KISI_STATUS" runat="server" Height="30px" Width="104%">
                           
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
                          <asp:TextBox ID="KISI_BIRTHDATE" MaxLength="30" runat="server" Height="25px" Width="102%" TextMode="DateTime"></asp:TextBox>
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
                         <asp:DropDownList ID="KISI_LANGUAGES" runat="server" Height="30px" Width="104%">
                           
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
                           <asp:TextBox ID="KISI_MAIL" MaxLength="30" runat="server"></asp:TextBox>
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
                           <asp:TextBox ID="KISI_WEB_ADRESS" MaxLength="30" runat="server"></asp:TextBox>
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
            <div id="NotEkle"></div>
            <div id="Fırsat"></div>
            <div id="Teklif"></div>
            <div id="Numune"></div>
            <div id="Proforma"></div>
            <div id="Fatura"></div>
            <div id="EkForm"></div>
            <div id="AileBilgileri"></div>
        </div>
    </div>
</asp:Content>

