﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Teklif.aspx.cs" Inherits="VeribisTasarım.Teklif" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="ALAN12">
        <h3>TEKLİF</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#TeklifEkle">Teklif Ekle</a></li>
                
            </ul>
            <div id="TeklifEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                <tr>         
                        <td>
                            <asp:Button ID="ButtonTeklifEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonTeklifEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="ButtonTeklifEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                <hr />
                <div class="ALAN4"> 
                   
                                   
                    <table class="KisiTable" id="Table1">
                       
                    <tr>
                        <td width="35%">
                        Kodu
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                    <asp:DropDownList ID="TEKLIF_KODU" Height="30px" runat="server" Width="104%">
                 
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
                    <asp:DropDownList ID="TEKLIF_FIRMA_ADI" Height="30px" runat="server" Width="104%">
                 
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
                 <asp:DropDownList ID="TEKLIF_KONTAK" Height="30px" runat="server" Width="104%">
                 
                      </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Evrak Tipi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="TEKLIF_EVRAK_TIPI" Height="30px" runat="server" Width="104%">
                           
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
                         <asp:TextBox ID="TEKLIF_EVRAK_NO1" MaxLength="20" Height="22px" Width="70%" runat="server"></asp:TextBox>  <asp:TextBox ID="TEKLIF_EVRAK_NO2" MaxLength="20" Height="22px"  Width="24%"  runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="TEKLIF_CINSI" runat="server" Height="30px" Width="104%">
                          
                         </asp:DropDownList>
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
                         <asp:TextBox ID="TEKLIF_EVRAK_TARIHI" runat="server" TextMode="DateTime" Height="25px" Width="101%"></asp:TextBox>
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
                         <asp:DropDownList ID="TEKLIF_TEMSILCISI" runat="server" Height="30px" Width="104%">
                            
                         </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Stok Bağımsız
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:CheckBoxList ID="TEKLIF_STOK_BAGIMSIZ" runat="server">
                           <asp:ListItem Text=""></asp:ListItem>
                         </asp:CheckBoxList>
                        </td>
                    </tr>
                        <tr>
                        <td width="35%">
                        Revizyon
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                          <asp:DropDownList ID="TEKLIF_REVIZYON" runat="server" Height="30px" Width="104%">
                        
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
                      <asp:DropDownList ID="TEKLIF_TESLIM_SEKLI" runat="server" Height="30px" Width="104%">
                         
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
                          <asp:DropDownList ID="TEKLIF_ODEME_SEKLI" runat="server" Height="30px" Width="104%">
                       
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Takip Yön.
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:DropDownList ID="TEKLIF_TAKIP_YON" runat="server" Height="30px" Width="104%">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="35%">
                        Takip Aşaması
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                        <asp:DropDownList ID="TEKLIF_TAKIP_ASAMASI" runat="server" Height="30px" Width="104%">
 
                             </asp:DropDownList>
                        </td>
                    </tr>
                  
                   
                   
                       
                       </table>
                    
                    </div>
                  <div class="ALAN4">
              <table class="KisiTable" > 
                    <tr>
                        <td width="35%">
                        Geçerlilik Tarihi
                        </td>
                        <td width="2%">
                          :
                        </td>
                        <td>
                         <asp:TextBox ID="TEKLIF_GECERLILIK_TARIHI" runat="server" TextMode="DateTime" Height="25px" Width="101%"></asp:TextBox>
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
                         <asp:DropDownList ID="TEKLIF_PROJE" runat="server" Height="30px" Width="104%">
                         
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
                        <asp:DropDownList ID="TEKLIF_SON_DURUM" runat="server" Height="30px" Width="104%">
            
                             </asp:DropDownList>

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
                         <asp:DropDownList ID="TEKLIF_NEDEN_KAYBETTIK" runat="server" Height="30px" Width="104%">
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
                          <asp:DropDownList ID="TEKLIF_KAZANAN_FIRMA" runat="server" Height="30px" Width="104%">
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
                         <asp:TextBox ID="TEKLIF_ACIKLAMA" TextMode="MultiLine" Height="60px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                  
                    
                       </table>
                      
                      
                  </div>
                  
                    </div>
                
                 </div>
            
        </div>
    </div>

</asp:Content>
