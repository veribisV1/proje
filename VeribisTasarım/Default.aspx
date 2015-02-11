<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>İÇ SAYFA</h1>
<div class="ALAN6">
    <h3>Tab Menu 1</h3>
    <div class="tabmenu">
        <ul>
            <li><a href="#tab1">Birinci</a></li>
            <li><a href="#tab2">İkinci</a></li>
            <li><a href="#tab3">Üçüncü</a></li>
        </ul>
        <div id="tab1"></div>
        <div id="tab2"></div>
        <div id="tab3"></div>
    </div>

</div>
<div class="ALAN6">
    <h3>Tab Menu 2</h3>
    <div class="tabmenu">
        <ul>
            <li><a href="#tab4">Birinci</a></li>
            <li><a href="#tab5">İkinci</a></li>
            <li><a href="#tab6">Üçüncü</a></li>
        </ul>
        <div id="tab4"></div>
        <div id="tab5"></div>
        <div id="tab6"></div>
    </div>

</div>
<div class="ALAN12">
        <h3>Tab Menu 3</h3>
        <div class="tabmenu">
            <ul>
                <li><a href="#tab7">Birinci</a></li>
                <li><a href="#tab8">İkinci</a></li>
                <li><a href="#tab9">Üçüncü</a></li>
            </ul>
            <div id="tab7"></div>
            <div id="tab8"></div>
            <div id="tab9"></div>
        </div>
    </div>
</asp:Content>

