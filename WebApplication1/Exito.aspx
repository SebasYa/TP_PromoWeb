<%@ Page Title="¡Éxito!" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Exito.aspx.cs" 
    Inherits="WebApplication1.Exito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero-section" style="min-height: 100vh; align-items: center; padding: 40px 10px;">

        <div class="hero-stars" aria-hidden="true">
            <span style="width:3px;height:3px;top:10%;left:12%;--dur:4s;--delay:0s;"></span>
            <span style="width:2px;height:2px;top:30%;left:82%;--dur:5s;--delay:0.9s;"></span>
            <span style="width:3px;height:3px;top:65%;left:18%;--dur:3.5s;--delay:1.4s;"></span>
            <span style="width:2px;height:2px;top:78%;left:70%;--dur:6s;--delay:0.3s;"></span>
            <span style="width:2px;height:2px;top:22%;left:50%;--dur:4.8s;--delay:1.8s;"></span>
        </div>

        <div class="hero-card" style="max-width: 900px; padding: 40px;">
            
            <div class="success-checkmark-wrapper" style="margin-bottom: 24px;">
                <div class="success-icon-glow"></div>
                <div class="success-icon-circle">
                    <svg class="success-icon-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
                        <circle class="success-icon-circle-bg" cx="26" cy="26" r="25" fill="none"/>
                        <path class="success-icon-check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/>
                    </svg>
                </div>
            </div>

            <div class="text-center" style="margin-bottom: 35px;">
                <div class="hero-decorative-badge" style="margin: 0 auto 16px auto;">
                    <span class="badge-dot" style="background-color: #34c759;"></span>
                    &iexcl;Participaci&oacute;n Registrada!
                </div>
                <h1 class="hero-title" style="text-align: center; margin-bottom: 10px;">
                    &iexcl;Felicitaciones,<br /><%= Resultado.ClienteNombre %>!
                </h1>
                <p class="hero-subtitle" style="text-align: center; max-width: 600px; margin: 0 auto;">
                    Tu participaci&oacute;n en la promoci&oacute;n ha sido registrada con &eacute;xito. Ya est&aacute;s participando por tu premio.
                </p>
            </div>

            <div class="row g-4" style="margin-bottom: 30px; text-align: left;">
                
                <div class="col-md-5">
                    <div class="exito-info-card" style="display: flex; flex-direction: column; justify-content: space-between;">
                        <div>
                            <h3 style="color: #fff; font-size: 1.25rem; font-weight: 700; margin-bottom: 20px;">Resumen del Canje</h3>
                            
                            <div style="margin-bottom: 16px;">
                                <span style="font-size: 0.8rem; text-transform: uppercase; letter-spacing: 0.05em; color: rgba(255,255,255,0.45); display: block;">C&oacute;digo de Voucher</span>
                                <span style="font-size: 1.4rem; font-weight: 800; color: #fff; font-family: monospace; letter-spacing: 1px;"><%= Resultado.CodigoVoucher %></span>
                            </div>

                            <div style="margin-bottom: 16px;">
                                <span style="font-size: 0.8rem; text-transform: uppercase; letter-spacing: 0.05em; color: rgba(255,255,255,0.45); display: block;">Fecha de Registro</span>
                                <span style="font-size: 1.05rem; font-weight: 600; color: rgba(255,255,255,0.85);"><%= DateTime.Now.ToString("dd/MM/yyyy HH:mm") %> hs</span>
                            </div>
                        </div>

                        <div style="border-top: 1px solid rgba(255,255,255,0.1); padding-top: 16px; margin-top: 20px;">
                            <span style="font-size: 0.85rem; color: rgba(255,255,255,0.5); display: flex; align-items: center; gap: 8px;">
                                <span style="display:inline-block; width:8px; height:8px; border-radius:50%; background-color:#34c759;"></span>
                                Registro verificado en PROMOS_DB
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col-md-7">
                    <div class="exito-info-card" style="display: flex; gap: 20px; align-items: center;">
                        
                        <div style="width: 120px; height: 120px; min-width: 120px; background: rgba(255,255,255,0.08); border: 1px solid rgba(255,255,255,0.1); border-radius: var(--radius-md); overflow: hidden; display: flex; align-items: center; justify-content: center; padding: 8px;">
                            <% if (!string.IsNullOrEmpty(Resultado.ImagenUrl)) { %>
                                <img src="<%= Resultado.ImagenUrl %>" alt="Premio" style="max-width: 100%; max-height: 100%; object-fit: contain; border-radius: var(--radius-sm);" />
                            <% } else { %>
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#86868b" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="width: 40px; height: 40px;">
                                    <rect x="3" y="3" width="18" height="18" rx="2" ry="2"/>
                                    <circle cx="8.5" cy="8.5" r="1.5"/>
                                    <polyline points="21 15 16 10 5 21"/>
                                </svg>
                            <% } %>
                        </div>

                        <div style="flex: 1;">
                            <span style="font-size: 0.8rem; text-transform: uppercase; letter-spacing: 0.05em; color: rgba(255,255,255,0.45); display: block; margin-bottom: 4px;">Tu Premio Seleccionado</span>
                            <h4 style="color: #fff; font-size: 1.3rem; font-weight: 800; margin: 0 0 6px 0; line-height: 1.2;">
                                <%= Resultado.ArticuloSeleccionado != null ? Resultado.ArticuloSeleccionado.Nombre : "Premio Seleccionado" %>
                            </h4>
                            <div style="display: flex; gap: 8px; margin-bottom: 8px;">
                                <% if (Resultado.ArticuloSeleccionado != null && Resultado.ArticuloSeleccionado.Marca != null) { %>
                                    <span style="font-size: 0.75rem; background: rgba(255,255,255,0.1); padding: 3px 8px; border-radius: 20px; color: rgba(255,255,255,0.85); font-weight: 500;">
                                        <%= Resultado.ArticuloSeleccionado.Marca.Descripcion %>
                                    </span>
                                <% } %>
                                <% if (Resultado.ArticuloSeleccionado != null && Resultado.ArticuloSeleccionado.Categoria != null) { %>
                                    <span style="font-size: 0.75rem; background: rgba(255,255,255,0.1); padding: 3px 8px; border-radius: 20px; color: rgba(255,255,255,0.85); font-weight: 500;">
                                        <%= Resultado.ArticuloSeleccionado.Categoria.Descripcion %>
                                    </span>
                                <% } %>
                            </div>
                            <p style="font-size: 0.9rem; color: rgba(255,255,255,0.6); margin: 0; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; line-height: 1.4;">
                                <%= Resultado.ArticuloSeleccionado != null ? Resultado.ArticuloSeleccionado.Descripcion : "" %>
                            </p>
                        </div>
                    </div>
                </div>

            </div>

            <div style="margin-top: 35px; border-top: 1px solid rgba(255,255,255,0.1); padding-top: 30px;">
                <a href="Inicio.aspx" class="btn hero-btn" style="text-decoration: none; display: inline-block; width: auto; padding: 16px 36px !important; font-weight: 700; font-size: 1.1rem; border-radius: var(--radius-lg);">
                    Volver al Inicio
                </a>
            </div>

        </div>
    </section>

    <style type="text/css">
        .success-checkmark-wrapper {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 90px;
        }
        .success-icon-glow {
            position: absolute;
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background: rgba(52, 199, 89, 0.25);
            filter: blur(15px);
            animation: pulse-glow 2s infinite ease-in-out;
        }
        .success-icon-circle {
            position: relative;
            width: 74px;
            height: 74px;
            background: linear-gradient(135deg, #2fd85b, #00b327);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 8px 24px rgba(52, 199, 89, 0.4);
            transform: scale(0);
            animation: pop-in 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275) forwards;
        }
        .success-icon-svg {
            width: 44px;
            height: 44px;
        }
        .success-icon-circle-bg {
            stroke: rgba(255, 255, 255, 0.2);
            stroke-width: 3;
        }
        .success-icon-check {
            stroke: #fff;
            stroke-width: 4.5;
            stroke-linecap: round;
            stroke-linejoin: round;
            stroke-dasharray: 48;
            stroke-dashoffset: 48;
            animation: stroke-checkmark 0.4s cubic-bezier(0.65, 0, 0.45, 1) 0.5s forwards;
        }

        @keyframes pop-in {
            0% { transform: scale(0); }
            100% { transform: scale(1); }
        }
        @keyframes stroke-checkmark {
            100% { stroke-dashoffset: 0; }
        }
        @keyframes pulse-glow {
            0% { transform: scale(0.95); opacity: 0.6; }
            50% { transform: scale(1.1); opacity: 0.9; }
            100% { transform: scale(0.95); opacity: 0.6; }
        }
    </style>

</asp:Content>