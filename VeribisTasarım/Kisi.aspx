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
                            <asp:Button ID="idButtonKisiEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonKisiEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonKisiEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" BackColor="#012353" ForeColor="White" Height="30px" />
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
                         <asp:TextBox ID="idNAME" MaxLength="200" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="idMIDDLE_NAME" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="idSURNAME" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="idSPACIAL_CODE" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="idNICNAME" MaxLength="50" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="idCOMPANY_CODE" runat="server" Height="30px" Width="104%">
                            
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
                         <asp:DropDownList ID="idSEXUALITY" runat="server" Height="30px" Width="104%">
 
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
                          <asp:DropDownList ID="idASSOCIATION_CODE" runat="server" Height="30px" Width="104%">
                            
                         </asp:DropDownList>
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
                          <asp:DropDownList ID="idDEPARTMENT" runat="server" Height="30px" Width="104%">
                        
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
                          <asp:DropDownList ID="idTITLE" runat="server" Height="30px" Width="104%">
                         
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
                          <asp:DropDownList ID="idGROUP_CODE" runat="server" Height="30px" Width="104%">
                           
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
                         <asp:DropDownList ID="idCONTACT_REPRESENT_CODE" runat="server" Height="30px" Width="104%">
                            
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
                         <asp:DropDownList ID="idSTATUS" runat="server" Height="30px" Width="104%">
                           
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
                          <asp:TextBox ID="idBIRTHDATE" MaxLength="30" runat="server" Height="25px" Width="102%" TextMode="Date"></asp:TextBox>
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
                         <asp:DropDownList ID="idLANGUAGE_CODE" runat="server" Height="30px" Width="104%">
                           
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
                          <asp:DropDownList ID="idPRETITLE" runat="server" Height="30px" Width="104%">
                            
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
                           <asp:TextBox ID="idMAIL" MaxLength="100" runat="server"></asp:TextBox>
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
                           <asp:TextBox ID="idPERSONALWEBADDRESS" MaxLength="150" runat="server"></asp:TextBox>
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
                        <asp:DropDownList ID="idCONTACT_REFERANCE" runat="server" Height="30px" Width="104%">
                     
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
                          <asp:DropDownList ID="idEDUCATION" runat="server" Height="30px" Width="104%">
                   
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
                         <asp:TextBox ID="idLAST_STATE" MaxLength="1000" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                            <asp:Button ID="idButtonNotEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonNotEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" BackColor="#012353" ForeColor="White" Height="30px" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonNotEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" BackColor="#012353" ForeColor="White" Height="30px" />
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
                         <asp:TextBox ID="idSDATE" Width="30%" Height="20px" TextMode="Date" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="idEXPLANATION" Width="100%" Height="100px" TextMode="MultiLine" MaxLength="1000" runat="server"></asp:TextBox>
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
