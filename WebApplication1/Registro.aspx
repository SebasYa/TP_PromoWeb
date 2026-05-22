<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Registro.aspx.cs" 
    Inherits="WebApplication1.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero-section" style="min-height: 100vh; align-items: flex-start; padding-top: 60px;">

        <div class="hero-stars" aria-hidden="true">
            <span style="width:3px;height:3px;top:12%;left:8%;--dur:4s;--delay:0s;"></span>
            <span style="width:2px;height:2px;top:35%;left:78%;--dur:5.5s;--delay:0.7s;"></span>
            <span style="width:3px;height:3px;top:70%;left:15%;--dur:3.8s;--delay:1.2s;"></span>
            <span style="width:2px;height:2px;top:85%;left:88%;--dur:6s;--delay:0.4s;"></span>
            <span style="width:2px;height:2px;top:50%;left:50%;--dur:4.5s;--delay:2s;"></span>
        </div>

        <div class="hero-card" style="max-width: 600px;">

            <div class="registro-step-indicator">
                <asp:Panel ID="pnlStep1" runat="server" CssClass="registro-step active">1</asp:Panel>
                <div class="registro-step-line"></div>
                <asp:Panel ID="pnlStep2" runat="server" CssClass="registro-step">2</asp:Panel>
                <div class="registro-step-line"></div>
                <div class="registro-step">&#10003;</div>
            </div>

            <div class="hero-decorative-badge">
                <span class="badge-dot"></span>
                Registro de Participaci&oacute;n
            </div>

            <h1 class="hero-title">Registr&aacute;<br />tus datos.</h1>
            <p class="hero-subtitle">
                Complet&aacute; el formulario para participar con tu voucher.
            </p>

            <asp:Button
                ID="btnVolverCatalogo"
                runat="server"
                Text="&#8592; Volver al Cat&aacute;logo"
                CssClass="btn hero-btn-ghost"
                OnClick="btnVolverCatalogo_Click" />

            <div class="mb-4">
                <label class="hero-label" for="<%= txtDocumento.ClientID %>">Documento (DNI)</label>
                <div style="display:flex; gap:10px;">
                    <asp:TextBox ID="txtDocumento" runat="server" 
                        CssClass="form-control hero-input" 
                        placeholder="Ej: 32333222" 
                        style="flex:1;" />
                    <asp:Button ID="btnBuscarDNI" runat="server" 
                        Text="Buscar" 
                        CssClass="btn hero-btn" 
                        style="width:auto !important; padding:12px 24px !important;"
                        OnClick="btnBuscarDNI_Click" />
                </div>
            </div>

            <asp:Panel ID="pnlDatos" runat="server" Visible="false">

                <asp:Label ID="lblClienteInfo" runat="server" 
                    CssClass="hero-decorative-badge" 
                    style="margin-bottom:20px; color:rgba(255,255,255,0.9);" 
                    Visible="false" />

                <div class="mb-3">
                    <label class="hero-label" for="<%= txtNombre.ClientID %>">Nombre</label>
                    <asp:TextBox ID="txtNombre" runat="server" 
                        CssClass="form-control hero-input" 
                        placeholder="Tu nombre" />
                    <span class="validation-message" id="val_<%= txtNombre.ClientID %>">El nombre es obligatorio.</span>
                </div>

                <div class="mb-3">
                    <label class="hero-label" for="<%= txtApellido.ClientID %>">Apellido</label>
                    <asp:TextBox ID="txtApellido" runat="server" 
                        CssClass="form-control hero-input" 
                        placeholder="Tu apellido" />
                    <span class="validation-message" id="val_<%= txtApellido.ClientID %>">El apellido es obligatorio.</span>
                </div>

                <div class="mb-3">
                    <label class="hero-label" for="<%= txtEmail.ClientID %>">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" 
                        CssClass="form-control hero-input" 
                        TextMode="Email"
                        placeholder="tu@email.com" />
                    <span class="validation-message" id="val_<%= txtEmail.ClientID %>">El email es obligatorio y debe tener un formato v&aacute;lido.</span>
                </div>

                <div class="mb-3">
                    <label class="hero-label" for="<%= txtDireccion.ClientID %>">Direcci&oacute;n</label>
                    <asp:TextBox ID="txtDireccion" runat="server" 
                        CssClass="form-control hero-input" 
                        placeholder="Ej: Av. Corrientes 1234" />
                    <span class="validation-message" id="val_<%= txtDireccion.ClientID %>">La direcci&oacute;n es obligatoria.</span>
                </div>

                <div class="mb-3" style="display:flex; gap:10px;">
                    <div style="flex:2;">
                        <label class="hero-label" for="<%= txtCiudad.ClientID %>">Ciudad</label>
                        <asp:TextBox ID="txtCiudad" runat="server" 
                            CssClass="form-control hero-input" 
                            placeholder="Ej: CABA" />
                        <span class="validation-message" id="val_<%= txtCiudad.ClientID %>">La ciudad es obligatoria.</span>
                    </div>
                    <div style="flex:1;">
                        <label class="hero-label" for="<%= txtCP.ClientID %>">C&oacute;digo Postal</label>
                        <asp:TextBox ID="txtCP" runat="server" 
                            CssClass="form-control hero-input" 
                            TextMode="Number"
                            placeholder="1234" />
                        <span class="validation-message" id="val_<%= txtCP.ClientID %>">El CP debe ser num&eacute;rico.</span>
                    </div>
                </div>

                <asp:Label ID="lblError" runat="server" 
                    CssClass="hero-error-msg" Visible="false" />

                <asp:Button ID="btnParticipar" runat="server" 
                    Text="&iexcl;Participar!" 
                    CssClass="btn hero-btn" 
                    style="margin-top:16px;"
                    OnClientClick="return validarFormulario();"
                    OnClick="btnParticipar_Click" />
            </asp:Panel>

        </div>
    </section>

    <script type="text/javascript">
        function validarFormulario() {
            var isValid = true;
            
            var fields = [
                { id: '<%= txtNombre.ClientID %>', type: 'required' },
                { id: '<%= txtApellido.ClientID %>', type: 'required' },
                { id: '<%= txtEmail.ClientID %>', type: 'email' },
                { id: '<%= txtDireccion.ClientID %>', type: 'required' },
                { id: '<%= txtCiudad.ClientID %>', type: 'required' },
                { id: '<%= txtCP.ClientID %>', type: 'number' }
            ];
            
            fields.forEach(function (f) {
                var input = document.getElementById(f.id);
                if (input) {
                    var isFieldValid = checkField(input, f.type);
                    if (!isFieldValid) {
                        isValid = false;
                    }
                }
            });
            
            return isValid;
        }

        function checkField(input, type) {
            var val = input.value.trim();
            var msgSpan = document.getElementById('val_' + input.id);
            var isValid = true;

            if (type === 'required') {
                isValid = val !== '';
            } else if (type === 'email') {
                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                isValid = val !== '' && emailRegex.test(val);
            } else if (type === 'number') {
                isValid = val !== '' && !isNaN(val) && Number(val) > 0;
            }

            if (!isValid) {
                input.classList.add('hero-input-error');
                if (msgSpan) {
                    msgSpan.style.display = 'block';
                }
            } else {
                input.classList.remove('hero-input-error');
                if (msgSpan) {
                    msgSpan.style.display = 'none';
                }
            }
            return isValid;
        }

        document.addEventListener('DOMContentLoaded', function () {
            var fields = [
                { id: '<%= txtNombre.ClientID %>', type: 'required' },
                { id: '<%= txtApellido.ClientID %>', type: 'required' },
                { id: '<%= txtEmail.ClientID %>', type: 'email' },
                { id: '<%= txtDireccion.ClientID %>', type: 'required' },
                { id: '<%= txtCiudad.ClientID %>', type: 'required' },
                { id: '<%= txtCP.ClientID %>', type: 'number' }
            ];

            fields.forEach(function (f) {
                var input = document.getElementById(f.id);
                if (input) {
                    input.addEventListener('blur', function () {
                        checkField(input, f.type);
                    });
                    
                    input.addEventListener('input', function () {
                        var val = input.value.trim();
                        var isValid = false;
                        if (f.type === 'required') {
                            isValid = val !== '';
                        } else if (f.type === 'email') {
                            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                            isValid = val !== '' && emailRegex.test(val);
                        } else if (f.type === 'number') {
                            isValid = val !== '' && !isNaN(val) && Number(val) > 0;
                        }

                        if (isValid) {
                            input.classList.remove('hero-input-error');
                            var msgSpan = document.getElementById('val_' + input.id);
                            if (msgSpan) {
                                msgSpan.style.display = 'none';
                            }
                        }
                    });
                }
            });
        });
    </script>

</asp:Content>