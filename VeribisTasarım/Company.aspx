<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="_Firma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="ALAN12">
        <h3>FİRMA KARTI</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#ListeAdi">Liste Adı</a></li>
                <li><a href="#FirmaEkle">Firma Ekle</a></li>
                <li><a href="#MakinaParki">Makina Parkı</a></li>
                <li><a href="#RakipFirma">Rakip Firma</a></li>
                <li><a href="#RakipUrun">Rakip Ürün</a></li>
                <li><a href="#Kontak">Kontak</a></li>
                <li><a href="#Numune">Numune</a></li>
                <li><a href="#Proforma">Proforma</a></li>
                <li><a href="#Fatura">Fatura</a></li>
                <li><a href="#EkForm">Ek Form</a></li>
            </ul>
            <div id="FirmaEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonFirmaEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonFirmaEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonFirmaEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
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
                         <asp:TextBox ID="COMPANY_NAME" MaxLength="200" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="COMPANY_COMMERCIAL_CODE" MaxLength="30" runat="server"></asp:TextBox>
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
                       <asp:DropDownList ID="COMPANY_REPRESENT_CODE" runat="server" Height="30px" Width="104%">

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
                          <asp:DropDownList ID="SECTOR" runat="server" Height="30px" Width="104%">

                      </asp:DropDownList>

                        </td>
                    </tr>
                       
                        
                       
                        
                         <tr>
                        <td width="35%">
                        Kuruluş Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="FOUNDATION_DATE" runat="server" Width="101%" Height="25px" TextMode="DateTime"></asp:TextBox>
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
                      <asp:DropDownList ID="COMPANY_TYPE" runat="server" Height="30px" Width="104%">
                       
                             </asp:DropDownList>
                        </td>
                    </tr>
                        

                </table>             
                
     
                </div>                
                <div class="ALAN4">
                   <table class="KisiTable" > 
                      
                    <tr>
                        <td width="35%">
                        Aktif
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="STATUS" runat="server" Height="30px" Width="104%">
                        
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
                         <asp:DropDownList ID="UPPER_COMPANY_CODE" runat="server" Height="30px" Width="104%">
                              
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
                        <asp:DropDownList ID="COMPANY_REGION" runat="server" Height="30px" Width="104%">

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
                         <asp:TextBox ID="TAX_DEPARTMENT" MaxLength="30" runat="server" ></asp:TextBox>
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
                         <asp:TextBox ID="TAX_NO" MaxLength="30" runat="server"></asp:TextBox>
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
                        <asp:DropDownList ID="COMPANYGROUP" runat="server" Height="30px" Width="104%">
                    
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
                         <asp:TextBox ID="MAIL" MaxLength="100" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="WEBADDRESS" MaxLength="150" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                       
                       </table>

                    </div>
                  <div class="ALAN4">
              <table class="KisiTable" > 
                  <tr>
                        <td width="35%">
                        Referans
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="COMPANY_REFERANCE" runat="server" Height="30px" Width="104%">
                       
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
                         <asp:TextBox ID="ENDORSEMENT" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="DISCOUNT_RATIO" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="CURRENCY_TYPE" runat="server" Height="30px" Width="104%">

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
                         <asp:TextBox ID="COMPANY_OWNER" MaxLength="30" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="PAYMENT_PERSON" MaxLength="30" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="PURCHASE_PERSON" MaxLength="30" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="WAREHOUSE_PERSON" MaxLength="30" runat="server"></asp:TextBox>
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
                        Ödeme Günü
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="PAYMENT_DAY" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                       </table>
                      
                  </div>
                    
                    </div>
                 </div>
            <div id="ListeAdi" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonListeAdiYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonListeAdiKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonListeAdiSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr> 
                        <td>
                       <asp:Label ID="LabelFirmaArama" runat="server" CssClass="LabelArama" Text="Arama Yap"></asp:Label>
                        </td>        
                        <td>
                         <asp:TextBox ID="TextBoxFirmaArama" runat="server" CssClass="TextBoxArama"  Height="20px" Width="30%" ForeColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                    </tr>
                    
                <hr />



            </div></div>
            <div id="MakinaParki"></div>
            <div id="RakipFirma" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonRakipFirmaYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonRakipFirmaKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonRakipFirmaSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                   
                    
                <hr />
                <div class="ALAN4"> 
                                  
                    <table class="KisiTable">

                </table>     
            </div>
            </div>
            </div>
            <div id="RakipUrun" style="min-height:100px">
                  <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonRakipUrunYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonRakipUrunKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonRakipUrunSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                   
                    
                <hr />
                <div class="ALAN12"> 
                                  
                    <table class="KisiTable">
                        <tr>
                        <td width="15%">
                        Rakip Firma Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                            <td>
                         <asp:DropDownList ID="RIVAL_COMPANY_NAME" runat="server" Height="30px" Width="50%">
                              
                             </asp:DropDownList>
                        </td>
                      
                    </tr>
                        <tr>
                        <td width="15%">
                        Ürün Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="PRODUCT_NAME" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Fiyati
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="PRICE" Width="20%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Para Birimi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="CUR_TYPE" runat="server" Height="30px" Width="21%">
                              
                        </asp:DropDownList>
                        </td>
                            <tr>
                        <td width="15%">
                        Ödeme Şekli
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="PEYMENT_TYPE" runat="server" Height="30px" Width="21%">
                              
                        </asp:DropDownList>
                        </td>
                         </tr>
                       <tr>
                        <td width="15%">
                        Miktar
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="QUANTITY" Width="5%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                         <tr>
                        <td width="15%">
                        Birim
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="UNIT" runat="server" Height="30px" Width="21%">
                              
                        </asp:DropDownList>
                        </td>
                         </tr>
                        <tr>
                        <td width="15%">
                        Dönem
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="PERIOD" runat="server" Height="30px" Width="21%">
                              
                        </asp:DropDownList>
                        </td>
                         </tr>

                </table>

            
            </div>
            </div>
            </div>
            <div id="Kontak"></div>
            <div id="Numune" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonNumuneYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonNumuneKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonNumuneSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <hr />
                     <div class="ALAN6"> 
                                  
                    <table class="KisiTable">
                        <tr>
                        <td width="15%">
                       Ticari Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                            <td>
                   <asp:TextBox ID="NUMUNE_COMPANY_COMMERCIAL_CODE" runat="server" MaxLength="30" Width="48%" Height="20px" ></asp:TextBox>
                     </td>
                      </tr>
                        <tr>
                        <td width="15%">
                        Firma Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="NUMUNE_COMPANY_NAME" runat="server" Height="30px" Width="100%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Kişi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="NUMUNE_CONTACT_NAME" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                         <tr>
                        <td width="15%">
                        Cinsi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="NUMUNE_CINSI" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                         <tr>
                        <td width="15%">
                        Normal-İade
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="NORMAL_BACK" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Evrak No Seri
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="DOCUMENT_NO1" MaxLength="20" Height="22px" Width="30%" runat="server"></asp:TextBox>  <asp:TextBox ID="DOCUMENT_NO2" MaxLength="20" Height="22px"  Width="12%"  runat="server"></asp:TextBox>
                        </td>
                    </tr>
                         <tr>
                        <td width="15%">
                       Evrak Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                            <td>
                   <asp:TextBox ID="DOCUMENT_DATE" runat="server" TextMode="DateTime" Width="48%" Height="20px" ></asp:TextBox>
                     </td>
                      </tr>
                        <tr>
                        <td width="15%">
                        Firma Temsilcisi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="APPOINTED_USER_CODE" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Depo
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="WAREHOUSE" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                             <tr>
                        <td width="15%">
                        Stok Bağımsız
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:CheckBoxList ID="CheckBoxListNumuneStokBagimsiz" runat="server">
                             <asp:ListItem Text="" Value="1"></asp:ListItem>
                         </asp:CheckBoxList>
                        </td>
                    </tr>
            </table>
            </div>
                    <div class="ALAN6">
                        <table class="KisiTable">
                            
                            <tr>
                        <td width="15%">
                       Geçerlilik Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                            <td>
                   <asp:TextBox ID="CERTIFICATE_DATE" runat="server" TextMode="DateTime" Width="48%" Height="20px" ></asp:TextBox>
                     </td>
                      </tr>
                            <tr>
                        <td width="15%">
                        Açık/Kapalı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="OPEN_CLOSE" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                             <tr>
                        <td width="15%">
                        Takip Yönetimi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="SEARCH_METHOD" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="15%">
                        Takip Aşaması
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="SEARCH_STEP" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="15%">
                        Kimin İçin
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="CURRENT_CODE" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="15%">
                        Sonuç
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="CATEGORY" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="15%">
                        Proje
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="PROJECT_CODE" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
                        </td>
                    </tr>
                            <tr>
                        <td width="15%">
                        Revizyon
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="REVISION" runat="server" Height="30px" Width="50%">
                              
                        </asp:DropDownList>
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
                   <asp:TextBox ID="EXPLANATION" runat="server" TextMode="MultiLine" Width="100%" Height="60px" ></asp:TextBox>
                     </td>
                      </tr>

                        </table>

                    </div>
            
                
            </div>
            </div>
             <div id="Proforma" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonProformaYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonProformaKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonProformaSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                   
                    
                <hr />
                <div class="ALAN4"> 
                  
                    <table class="KisiTable">
                       
                    <tr>
                        <td width="35%">
                         Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="PROFORMA_COMMERCIAL_CODE" runat="server" Height="30px" Width="50%">

                      </asp:DropDownList>
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
                      <asp:DropDownList ID="PROFORMA_COMPANY_NAME" runat="server" Height="30px" Width="104%">

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
                      <asp:DropDownList ID="PROFORMA_CONTACT" runat="server" Height="30px" Width="104%">

                      </asp:DropDownList>
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
                      <asp:DropDownList ID="PROFORMA_CINSI" runat="server" Height="30px" Width="50%">

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
                         <asp:TextBox ID="PROFORMA_DOCUMENT_NO1" MaxLength="20" Height="22px" Width="62%" runat="server"></asp:TextBox>  <asp:TextBox ID="PROFORMA_DOCUMENT_NO2" MaxLength="20" Height="22px"  Width="30%"  runat="server"></asp:TextBox>
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
                      <asp:TextBox ID="PROFORMA_DOCUMENT_DATE" TextMode="DateTime" Height="22px" Width="63%" runat="server"></asp:TextBox>
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
                          <asp:DropDownList ID="PROFORMA_APPOINTED_USER_CODE" runat="server" Height="30px" Width="104%">

                      </asp:DropDownList>

                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Stok Bağımsız
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:CheckBoxList ID="PROFORMA_STOK_BAGIMSIZ" runat="server">
                             <asp:ListItem Text="" Value="1"></asp:ListItem>
                         </asp:CheckBoxList>
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
                      <asp:TextBox ID="PROFORMA_EXPLANATION" runat="server" Width="102%" Height="50px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                        

                </table>             
                
     
                </div>                
                <div class="ALAN4">
                   <table class="KisiTable"> 
                      
                    <tr>
                        <td width="35%">
                        Ödeme Şekli
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="PROFORMA_PAYMENT_TYPE" runat="server" Height="30px" Width="104%">
                        
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
                         <asp:DropDownList ID="DropDownList5" runat="server" Height="30px" Width="104%">
                              
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
                        <asp:DropDownList ID="DropDownList6" runat="server" Height="30px" Width="104%">

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
                         <asp:TextBox ID="TextBox4" MaxLength="30" runat="server" ></asp:TextBox>
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
                         <asp:TextBox ID="TextBox5" MaxLength="30" runat="server"></asp:TextBox>
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
                        <asp:DropDownList ID="DropDownList7" runat="server" Height="30px" Width="104%">
                    
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
                         <asp:TextBox ID="TextBox6" MaxLength="100" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox7" MaxLength="150" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                       
                       </table>

                    </div>
                  <div class="ALAN4">
              <table class="KisiTable" > 
                  <tr>
                        <td width="35%">
                        Referans
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="DropDownList8" runat="server" Height="30px" Width="104%">
                       
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
                         <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="DropDownList9" runat="server" Height="30px" Width="104%">

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
                         <asp:TextBox ID="TextBox10" MaxLength="30" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox11" MaxLength="30" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox12" MaxLength="30" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox13" MaxLength="30" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="DropDownList10" runat="server" Height="30px" Width="104%">

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
                         <asp:TextBox ID="TextBox14" MaxLength="30" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                       </table>
                      
                  </div>
                    
                    </div>
                 </div>           
            <div id="Fatura"></div>
            <div id="Ek Form"></div>
        </div>
    </div>
</asp:Content>

