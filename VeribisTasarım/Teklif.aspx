﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Teklif.aspx.cs" Inherits="VeribisTasarım.Teklif" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="ALAN12">
        <h3>TEKLİF</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#ListeAdi">Liste Adı</a></li>
                <li><a href="#TeklifEkle">Teklif Ekle</a></li>
                
            </ul>
            <div id="TeklifEkle" style="min-height:100px">
                <div class="KisiTableHizalama">
                <tr>         
                        <td>
                            <asp:Button ID="idButtonTeklifEkleYeni" runat="server" CssClass="ButtonYeni" Text="Yeni" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonTeklifEkleKaydet" runat="server" CssClass="ButtonKaydet" Text="Kaydet" Height="30px" BackColor="#012353" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>         
                        <td>
                            <asp:Button ID="idButtonTeklifEkleSil" runat="server" CssClass="ButtonSil" Text="Sil" Height="30px" BackColor="#012353" ForeColor="White" />
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
                    <asp:DropDownList ID="idCOMPANY_CODE" Height="30px" runat="server" Width="104%">
                 
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
                 <asp:DropDownList ID="idCONTACT_CODE" Height="30px" runat="server" Width="104%">
                 
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
                          <asp:DropDownList ID="idDOCUMENT_TYPE" Height="30px" runat="server" Width="104%">
                           
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
                         <asp:TextBox ID="idDOCUMENT_NO1" MaxLength="20" Height="22px" Width="70%" runat="server"></asp:TextBox>  <asp:TextBox ID="idDOCUMENT_NO2" MaxLength="20" Height="22px"  Width="24%"  runat="server"></asp:TextBox>
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
                         <asp:DropDownList ID="idSELLING_BUYING" runat="server" Height="30px" Width="104%">
                          
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
                         <asp:TextBox ID="idDOCUMENT_DATE" runat="server" TextMode="Date" Height="25px" Width="101%"></asp:TextBox>
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
                         <asp:DropDownList ID="idAPPOINTED_USER_CODE" runat="server" Height="30px" Width="104%">
                            
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
                         <asp:CheckBoxList ID="idFREE_STOK" runat="server">
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
                          <asp:DropDownList ID="idREVISION" runat="server" Height="30px" Width="104%">
                        
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
                      <asp:DropDownList ID="idDELIVERY_TYPE" runat="server" Height="30px" Width="104%">
                         
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
                          <asp:DropDownList ID="idPAYMENT_TYPE" runat="server" Height="30px" Width="104%">
                       
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
                         <asp:DropDownList ID="idSEARCH_METHOD" runat="server" Height="30px" Width="104%">
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
                        <asp:DropDownList ID="idSEARCH_STEP" runat="server" Height="30px" Width="104%">
 
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
                         <asp:TextBox ID="idCERTIFICATE_DATE" runat="server" TextMode="Date" Height="25px" Width="101%"></asp:TextBox>
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
                         <asp:DropDownList ID="idPROJECT_CODE" runat="server" Height="30px" Width="104%">
                         
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
                        <asp:DropDownList ID="idLAST_POSITION" runat="server" Height="30px" Width="104%">
            
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
                         <asp:DropDownList ID="idWHY_LOST" runat="server" Height="30px" Width="104%">
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
                          <asp:DropDownList ID="idRIVAL_COMPANY_CODE" runat="server" Height="30px" Width="104%">
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
                         <asp:TextBox ID="idEXPLANATION" TextMode="MultiLine" Height="60px" runat="server" MaxLength="1000"></asp:TextBox>
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
                       <asp:TextBox ID="idTextBoxTeklifArama" runat="server" CssClass="EvrakListesiArama"  Height="20px" Width="13%" ></asp:TextBox>

                        </td>
                        <td>
                        <asp:Button ID="idButtonTeklifArama" runat="server" CssClass="EvrakListesiButonArama" Text="Button" />
                        </td>

                    </tr>
                   <asp:Label ID="idLabelTeklifDurum" runat="server" Text="Açık/Kapalı" CssClass="LabelFirsatDurum"></asp:Label><asp:DropDownList ID="idDropDownFirsatDurum" runat="server" CssClass="DropDownFirsatDurum"></asp:DropDownList>
                   <asp:Label ID="idLabelTeklifBaslangic" runat="server" Text="Başlangıç" CssClass="LabelBaslangic"></asp:Label><asp:TextBox ID="idFirsatBaslangicTarih" runat="server" TextMode="DateTimeLocal" CssClass="FirsatBaslangicTarih"></asp:TextBox><br />
                   <asp:Label ID="idLabelTeklifBitis" runat="server" Text="Bitiş" CssClass="LabelBitis"></asp:Label><asp:TextBox ID="idFirsatBitisTarih" runat="server" TextMode="DateTimeLocal" CssClass="FirsatBitisTarih"></asp:TextBox>


                    <hr />
  
                </div>

            </div>
        </div>
    </div>

</asp:Content>
