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
                        Adres
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:TextBox ID="ADDRESS" MaxLength="250" TextMode="MultiLine" Height="50px" runat="server"></asp:TextBox>

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
                          <asp:DropDownList ID="PHONE" runat="server" Height="30px" Width="104%">

                      </asp:DropDownList>

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
                          <asp:DropDownList ID="FAX" runat="server" Height="30px" Width="104%">

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
                     
               
                </table>             
                
     
                </div>                
                <div class="ALAN4">
                   <table class="KisiTable" > 
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
                         <asp:TextBox ID="TextBoxFirmaArama" runat="server" CssClass="TextBoxArama"  Height="20px" Width="30%"></asp:TextBox>
                        </td>
                         <td>
                             <asp:Button ID="ButtonFirmaArama" runat="server" CssClass="ButtonArama" Text="Ara" />
                        </td> 
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                    </tr>
                    
                <hr />
                    <div class="ALAN12">
               <div class="KisiTableHizalama">
                   <table class="KisiTable">
                     <tr>
                         <td>
                       <asp:GridView ID="ListeAdiGridView" runat="server" CssClass="ListeAdiGridView" AutoGenerateColumns="False" DataKeyNames="COMPANY_CODE" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#012353" GridLines="Horizontal">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="COMPANY_CODE" HeaderText="COMPANY_CODE" ReadOnly="True" SortExpression="COMPANY_CODE" />
                               <asp:BoundField DataField="COMPANY_NAME" HeaderText="COMPANY_NAME" SortExpression="COMPANY_NAME" />
                               <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                               <asp:BoundField DataField="SECTOR" HeaderText="SECTOR" SortExpression="SECTOR" />
                               <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                               <asp:BoundField DataField="MAIL" HeaderText="MAIL" SortExpression="MAIL" />
                               <asp:BoundField DataField="WEBADDRESS" HeaderText="WEBADDRESS" SortExpression="WEBADDRESS" />
                           </Columns>
                             <EditRowStyle BackColor="#2461BF" />
                           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                           <RowStyle BackColor="#EFF3FB" />
                           <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                           <SortedAscendingCellStyle BackColor="#F5F7FB" />
                           <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                           <SortedDescendingCellStyle BackColor="#E9EBEF" />
                           <SortedDescendingHeaderStyle BackColor="#4870BE" />
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Vdb_DefaultConnectionString %>" SelectCommand="SELECT [COMPANY_CODE], [COMPANY_NAME], [ADDRESS], [SECTOR], [PHONE], [MAIL], [WEBADDRESS] FROM [COMPANY]"></asp:SqlDataSource>
                         </td>
                     </tr>

                   </table>

                   </div>
                    </div>



            </div></div>
            <div id="MakinaParki" style="min-height:100px">
                  <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonMakinaParkiYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonMakinaParkiKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonMakinaParkiSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                   
                    
                <hr />
                <div class="ALAN12"> 
                                  
                    <table class="KisiTable">
                        <tr>
                        <td width="15%">
                        Adı
                        </td>
                        <td width="2%">
                          :
                        </td>
                            <td>
                        <asp:TextBox ID="MAKINAPARKI_NAME" runat="server" Width="29%" Height="20px"></asp:TextBox>
                        </td>
                      
                    </tr>
                        <tr>
                        <td width="15%">
                        Marka
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                     <asp:TextBox ID="MAKINAPARKI_MODEL" runat="server" MaxLength="50" Width="29%" Height="20px"></asp:TextBox>

                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Adet
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                  <asp:TextBox ID="MAKINAPARKI_AMOUNT" runat="server" Width="9%" Height="20px"></asp:TextBox>
      
                        </td>
                    </tr>
                        <tr>
                        <td width="15%">
                        Tip1
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="MAKINAPARKI_TYPE1" runat="server" Height="30px" Width="10%">
                              
                        </asp:DropDownList>
                        </td>
                            <tr>
                        <td width="15%">
                        Tip2
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="MAKINAPARKI_TYPE2" runat="server" Height="30px" Width="10%">
                              
                        </asp:DropDownList>
                        </td>
                         
                </table>

            
            </div>
            </div>
            </div>
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
                        <tr>
                            <td>
                  <asp:GridView ID="RAKIP_FIRMALAR" runat="server"></asp:GridView>
                  <asp:GridView ID="BU_FIRMADAKI_RAKIP_FIRMALAR" runat="server"></asp:GridView>
                            </td>
                        </tr>

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
                         <asp:DropDownList ID="RIVAL_PRODUCT_NAME" runat="server" Height="30px" Width="50%">
                              
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
                       <asp:TextBox ID="RIVAL_PRICE" Width="20%" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="RIVAL_CUR_TYPE" runat="server" Height="30px" Width="21%">
                              
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
                         <asp:DropDownList ID="RIVAL_PEYMENT_TYPE" runat="server" Height="30px" Width="21%">
                              
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
                       <asp:TextBox ID="RIVAL_QUANTITY" Width="5%" runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="RIVAL_UNIT" runat="server" Height="30px" Width="21%">
                              
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
                         <asp:DropDownList ID="RIVAL_PERIOD" runat="server" Height="30px" Width="21%">
                              
                        </asp:DropDownList>
                        </td>
                         </tr>

                </table>

            
            </div>
            </div>
            </div>
            <div id="Kontak" style="min-height:100px">

            </div>
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
                         <asp:DropDownList ID="NUMUNE_NORMAL_BACK" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:TextBox ID="NUMUNE_DOCUMENT_NO1" MaxLength="20" Height="22px" Width="30%" runat="server"></asp:TextBox>  <asp:TextBox ID="NUMUNE_DOCUMENT_NO2" MaxLength="20" Height="22px"  Width="12%"  runat="server"></asp:TextBox>
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
                   <asp:TextBox ID="NUMUNE_DOCUMENT_DATE" runat="server" TextMode="DateTime" Width="48%" Height="20px" ></asp:TextBox>
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
                         <asp:DropDownList ID="NUMUNE_APPOINTED_USER_CODE" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:DropDownList ID="NUMUNE_WAREHOUSE" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:CheckBoxList ID="NUMUNE_STOK_BAGIMSIZ" runat="server">
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
                   <asp:TextBox ID="NUMUNE_CERTIFICATE_DATE" runat="server" TextMode="DateTime" Width="48%" Height="20px" ></asp:TextBox>
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
                         <asp:DropDownList ID="NUMUNE_OPEN_CLOSE" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:DropDownList ID="NUMUNE_SEARCH_METHOD" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:DropDownList ID="NUMUNE_SEARCH_STEP" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:DropDownList ID="NUMUNE_CURRENT_CODE" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:DropDownList ID="NUMUNE_CATEGORY" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:DropDownList ID="NUMUNE_PROJECT_CODE" runat="server" Height="30px" Width="50%">
                              
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
                         <asp:DropDownList ID="NUMUNE_REVISION" runat="server" Height="30px" Width="50%">
                              
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
                   <asp:TextBox ID="NUMUNE_EXPLANATION" runat="server" TextMode="MultiLine" Width="100%" Height="60px" ></asp:TextBox>
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
                      <asp:TextBox ID="PROFORMA_EXPLANATION" runat="server" Width="102%" Height="90px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                        

                </table>             
                
     
                </div>                
                <div class="ALAN4">
                   <table class="KisiTable"> 
                      
                    
                    <tr>
                        <td width="35%">
                        Sipariş Yolu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="PROFORMA_SIPARIS_YOLU" runat="server" Height="30px" Width="104%">
                              
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
                          <asp:DropDownList ID="PROFORMA_PAYMENT_TYPE" runat="server" Height="30px" Width="104%">
                        
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
                        <asp:DropDownList ID="PROFORMA_DELIVERY_TYPE" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Mensei
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                            <asp:DropDownList ID="PROFORMA_MENSEI" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Banka Bilgisi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="PROFORMA_BANKA_BILGISI" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Geçerlilik Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                     <asp:TextBox ID="PROFORMA_CERTIFICATE_DATE" runat="server" Width="102%" TextMode="DateTime" Height="22px"></asp:TextBox>

                       </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Sevk Adresi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                        <asp:DropDownList ID="PROFORMA_SEVK_ADRESI" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                       <tr>
                        <td width="35%">
                        Fatura Adresi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="PROFORMA_FATURA_ADRESI" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Ambalajlama
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="PROFORMA_AMBALAJLAMA" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Nakliye Tipi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="PROFORMA_NAKLIYE_TIPI" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                       <tr>
                        <td width="35%">
                        Nakliye Firması
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                       <asp:DropDownList ID="PROFORMA_NAKLIYE_FIRMASI" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                       
                       </table>

                    </div>
                  <div class="ALAN4">
              <table class="KisiTable" > 
                  <tr>
                        <td width="35%">
                        Siparis No
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                 <asp:TextBox ID="PROFORMA_SIPARIS_NO" runat="server" Width="100%" Height="22px"></asp:TextBox>
 
                        </td>
                    </tr>
                       <tr>
                        <td width="35%">
                        Sipariş Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                <asp:TextBox ID="PROFORMA_SIPARIS_TARIHI" runat="server" Width="102%" TextMode="DateTime" Height="22px"></asp:TextBox>

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
                         <asp:DropDownList ID="PROFORMA_NEDEN_KAYBETTIK" runat="server" Height="30px" Width="104%">

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
                         <asp:DropDownList ID="PROFORMA_KAZANAN_RAKIP_FIRMA" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                   
                       </table>
                      
                  </div>
                    
                    </div>
                 </div>           
           <div id="Fatura" style="min-height:100px">
                <div class="KisiTableHizalama">
                    <tr>
                        <td>
                            <asp:Button ID="ButtonFaturaYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonFaturaKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonFaturaSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
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
                       <asp:DropDownList ID="FATURA_COMMERCIAL_CODE" runat="server" Height="30px" Width="50%">

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
                      <asp:DropDownList ID="FATURA_COMPANY_NAME" runat="server" Height="30px" Width="104%">

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
                      <asp:DropDownList ID="FATURA_CINSI" runat="server" Height="30px" Width="104%">

                      </asp:DropDownList>
                            </td>
                    </tr>
                         <tr>
                        <td width="35%">
                        Normal/İade
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                      <asp:DropDownList ID="FATURA_NORMAL_IADE" runat="server" Height="30px" Width="50%">

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
                         <asp:TextBox ID="FATURA_DOCUMENT_NO1" MaxLength="20" Height="22px" Width="62%" runat="server"></asp:TextBox>  <asp:TextBox ID="FATURA_DOCUMENT_NO2" MaxLength="20" Height="22px"  Width="30%"  runat="server"></asp:TextBox>
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
                      <asp:TextBox ID="FATURA_DOCUMENT_DATE" TextMode="DateTime" Height="22px" Width="63%" runat="server"></asp:TextBox>
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
                          <asp:DropDownList ID="FATURA_APPOINTED_USER_CODE" runat="server" Height="30px" Width="104%">

                      </asp:DropDownList>

                        </td>
                   
                </table>             
                
     
                </div>                
                <div class="ALAN4">
                   <table class="KisiTable"> 
                      
                    
                    <tr>
                        <td width="35%">
                        Depo
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="FATURA_WAREHOUSE" runat="server" Height="30px" Width="104%">
                              
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
                          <asp:DropDownList ID="FATURA_PAYMENT_TYPE" runat="server" Height="30px" Width="104%">
                        
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
                        <asp:DropDownList ID="FATURA_PROJECT_CODE" runat="server" Height="30px" Width="104%">

                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Açık/Kapalı
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                            <asp:DropDownList ID="FATURA_OPENORCLOSE" runat="server" Height="30px" Width="104%">

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
                         <asp:DropDownList ID="FATURA_GRUBU" runat="server" Height="30px" Width="104%">

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
                      <asp:TextBox ID="FATURA_EXPLANATION" runat="server" Width="102%" Height="90px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                       
                       </table>

                    </div>
                  <div class="ALAN4">
              <table class="KisiTable" > 
                 
                       </table>
                      
                  </div>
                    
                    </div>
                 </div>
            <div id="Ek Form"></div>
        </div>
    </div>
</asp:Content>

