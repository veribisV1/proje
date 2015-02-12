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
                <li><a href="#Siparis">Sipariş</a></li>
                <li><a href="#Proforma">Proforma</a></li>
                <li><a href="#Fatura">Fatura</a></li>
                <li><a href="#EkForm">Ek Form</a></li>
            </ul>
            <div id="FirmaEkle" style="min-height:100px">
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
                    <tr> 
                        <td>
                       <asp:Label ID="LabelArama" runat="server" CssClass="LabelArama" Text="Arama Yap"></asp:Label>
                        </td>        
                        <td>
                         <asp:TextBox ID="TextBoxArama" runat="server" CssClass="TextBoxArama"  Height="20px" Width="30%" ForeColor="White"></asp:TextBox>
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
            <div id="ListeAdi"></div>
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
                        <td width="35%">
                        Rakip Firma Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="RIVAL_COMPANY_CODE" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                </table>

            
            </div>
            </div>
            </div>
            <div id="Kontak"></div>
            <div id="Siparis"></div>
            <div id="Proforma"></div>
            <div id="Fatura"></div>
            <div id="Ek Form"></div>
        </div>
    </div>
</asp:Content>

