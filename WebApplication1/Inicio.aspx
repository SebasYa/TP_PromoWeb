<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication1.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero-section">

        <div class="hero-stars" aria-hidden="true">
            <span style="width:3px;height:3px;top:15%;left:10%;--dur:3.5s;--delay:0s;"></span>
            <span style="width:2px;height:2px;top:30%;left:75%;--dur:5s;--delay:0.8s;"></span>
            <span style="width:4px;height:4px;top:65%;left:20%;--dur:4s;--delay:1.5s;"></span>
            <span style="width:2px;height:2px;top:80%;left:85%;--dur:6s;--delay:0.3s;"></span>
            <span style="width:3px;height:3px;top:45%;left:55%;--dur:4.5s;--delay:2s;"></span>
            <span style="width:2px;height:2px;top:10%;left:45%;--dur:5.5s;--delay:1s;"></span>
            <span style="width:3px;height:3px;top:72%;left:60%;--dur:3.8s;--delay:0.5s;"></span>
        </div>

        <% string heroAnim = IsPostBack ? "" : " hero-card-animate"; %>
        <div class="hero-card<%= heroAnim %>">

            <div class="hero-decorative-badge">
                <span class="badge-dot <%= vouchersAgotados ? "exhausted" : "" %>"></span>
                <%= vouchersAgotados ? "Sistema de Canje Agotado" : "Sistema de Canje Activo" %>
            </div>

            <h1 class="hero-title">Canje&aacute; tu voucher.</h1>
            <p class="hero-subtitle">Ingres&aacute; tu c&oacute;digo promocional para acceder al cat&aacute;logo de art&iacute;culos disponibles.</p>

            <div class="mb-4">
                <label class="hero-label" for="<%= txtVoucher.ClientID %>">C&oacute;digo de voucher</label>
                <asp:TextBox
                    ID="txtVoucher"
                    runat="server"
                    CssClass="form-control hero-input"
                    placeholder="XXXX-XXXX-XXXX-XXXX" />
            </div>

            <asp:Label ID="lblError" runat="server" CssClass="hero-error-msg" Visible="false" />

            <asp:Button
                ID="btnVoucher"
                runat="server"
                Text="Canjear Voucher"
                CssClass="btn hero-btn"
                OnClick="btnVoucher_Click" />

        </div>

    </section>

    <script type="text/javascript">
        (function () {
            var input = document.getElementById('<%= txtVoucher.ClientID %>');
            if (input) {
                input.addEventListener('input', function () {
                    var err = document.getElementById('<%= lblError.ClientID %>');
                    if (err) { err.style.display = 'none'; }
                    input.className = 'form-control hero-input';
                });
            }
        })();
    </script>

</asp:Content>