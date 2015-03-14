<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="VeribisTasarım.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        button, input {
            line-height: normal;
        }

        *, *::before, *::after {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        button, input, select, textarea {
            margin: 0;
            font-family: inherit;
            font-size: 100%;
        }

        .boxed {
            margin-bottom: 20px;
        }

            .boxed .inner::after {
                content: "";
                clear: both;
                display: block;
            }

        .login-title {
            padding-bottom: 20px;
        }

        .input-group {
            position: relative;
            display: table;
            border-collapse: separate;
        }

            .input-group .form-control {
                width: 100%;
                margin-bottom: 0px;
            }

            .input-group-addon, .input-group-btn, .input-group .form-control {
                display: table-cell;
            }

        .boxed .inner input {
            width: 100%;
        }

        p {
            margin: 0 0 10px;
        }

        .input-group :first-child.form-control, :first-child.input-group-addon, :first-child.input-group-btn > .btn, :first-child.input-group-btn > .dropdown-toggle, :last-child.input-group-btn > :not(:last-child):not(.dropdown-toggle).btn {
            border-top-right-radius: 0px;
            border-bottom-right-radius: 0px;
        }

        :first-child.input-group-addon {
            border-right: 0;
        }

        h5 {
            font-size: 18px;
        }

        .boxed .inner h1, .boxed .inner h2, .boxed .inner h3, .boxed .inner h4, .boxed .inner h5, .boxed .inner h6 {
            margin: 0px;
            padding: 0px;
        }

        body.login-page .login-page-container * {
            line-height: normal;
        }

        body.login-page .boxed {
            display: inline-block;
            width: 100%;
            position: absolute;
            top: 30%;
            margin-top: -150px;
        }

        body.login-page .login-page-container {
            width: 320px;
            position: relative;
            margin: 0 auto;
        }

        .row {
            margin-right: -15px;
            margin-left: -15px;
        }

            .row::before, .row::after {
                display: table;
                content: " ";
            }

            .row::after {
                clear: both;
            }

            .row::before, .row::after {
                display: table;
                content: " ";
            }

            .row::after {
                clear: both;
            }

        .container {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
        /* @media all and (min-width:768px) */
        .container {
            width: 750px;
        }
        /* @media all and (min-width:992px) */
        .container {
            width: 970px;
        }
        /* @media all and (min-width:1200px) */
        .container {
            width: 1170px;
        }

            .container::before, .container::after {
                display: table;
                content: " ";
            }

            .container::after {
                clear: both;
            }

            .container::before, .container::after {
                display: table;
                content: " ";
            }

            .container::after {
                clear: both;
            }

        .content-liquid {
            height: 100%;
        }

        .content {
            height: 100%;
            width: 100%;
            position: relative;
        }

        html {
            overflow: hidden;
        }

        body.login-page {
            /*background: url('/Content/Images/login.jpg') top left no-repeat transparent;*/
            background-size: cover;
        }

        .boxed .inner {
            padding: 12px 20px;
            background-color: #ffffff;
            border-radius: 3px;
            -webkit-box-shadow: 0px 3px 0px rgba(219, 223, 224, 1);
            -moz-box-shadow: 0px 3px 0px rgba(219, 223, 224, 1);
            box-shadow: 0px 3px 0px rgba(219,223,224,1);
            color: #7f95a9;
            overflow: hidden;
            border: 1px solid #D1D1D1;
        }

        .text-center {
            text-align: center;
        }

        body.login-page .input-group {
            margin-bottom: 10px;
            height: 39px;
        }

        input, button, select, textarea {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }

            button, html input[type='button'], input[type='reset'], input[type='submit'] {
                cursor: pointer;
                -webkit-appearance: button;
            }

        body.login-page .submit {
            width: 100%;
            height: 100px;
        }

        body.login-page p.footer {
            text-align: center;
            margin-top: 10px;
        }

        :-ms-input-placeholder.form-control {
            color: #999;
        }

        .input-group-addon, .input-group-btn {
            width: 1%;
            white-space: nowrap;
            vertical-align: middle;
        }

        .input-group-addon {
            padding: 6px 12px;
            font-size: 14px;
            font-weight: normal;
            line-height: 1;
            color: #555;
            text-align: center;
            background-color: #eee;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .input-group-addon {
            min-width: 40px;
        }

        body.login-page .input-group-addon {
            background-color: #1ba1e2;
        }

        .form-control {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.4285;
            color: #555;
            vertical-align: middle;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0px 1px 1px rgba(0,0,0,0.075);
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }

        :-ms-input-placeholder {
            color: #bfc3c4;
        }

        body.login-page .input-group input {
            height: 39px;
        }

        .input-group :last-child.form-control, :last-child.input-group-addon, :last-child.input-group-btn > .btn, :last-child.input-group-btn > .dropdown-toggle, :first-child.input-group-btn > :not(:first-child).btn {
            border-bottom-left-radius: 0px;
            border-top-left-radius: 0px;
        }

        body.login-page .input-group i {
            color: #ffffff;
        }

        h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
            font-weight: 500;
            line-height: 1.1;
            color: inherit;
        }

        h4, h5, h6 {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        h4, .h4 {
            font-size: 18px;
        }

        h5, .h5 {
            font-size: 14px;
        }

        h1, h2, h3, h4, h5, h6 {
            font-family: "Lato", sans-serif;
            font-weight: 300;
            color: #7b8b9d;
            margin-top: 0px;
        }

        h4 {
            font-size: 20px;
        }
    </style>


</head>
<body class="login-page">
    <form id="form1" runat="server">

        <section class="content login-page">
            <div class="content-liquid">
                <div class="container">
                    <div class="row">
                        <div class="login-page-container" style="line-height: 805px; min-height: 805px;">
                            <div class="boxed animated flipInY">

                                <div class="inner">

                                    <div class="login-title text-center">
                                        <h4>Kullanıcı Girişi <%--<%#Eval(Res.resGetir(483))%>--%></h4>

                                    </div>

                                    <div id="ticarikod" class="input-group">
                                        <span class="input-group-addon"></span>
                                        <asp:TextBox CssClass="form-control" ID="_txtTicariKod" runat="server" placeholder="Ticari Kod"></asp:TextBox>
                                    </div>

                                    <div id="kullaniciadi" class="input-group">
                                        <span class="input-group-addon"></span>
                                        <asp:TextBox CssClass="form-control" ID="_txtKullaniciAdi" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
                                    </div>

                                    <div id="sifre" class="input-group">
                                        <span class="input-group-addon"></span>
                                        <asp:TextBox CssClass="form-control" ID="_txtSifre" runat="server" TextMode="Password" placeholder="Şifre"></asp:TextBox>
                                    </div>

                                    <asp:Button ID="btnGiris" runat="server" Text="Sisteme Giriş" OnClick="btnGiris_Click" />                                   
                                </div>

                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </section>
    </form>
</body>
</html>
