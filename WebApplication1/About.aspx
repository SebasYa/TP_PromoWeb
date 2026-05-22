<%@ Page Title="Acerca de" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="about-page-wrapper">

        <div class="about-orb about-orb-1"></div>
        <div class="about-orb about-orb-2"></div>
        <div class="about-orb about-orb-3"></div>

        <section class="about-hero-section">
            <div class="about-hero-inner">

                <div class="about-eyebrow-badge">
                    <span class="eyebrow-dot"></span>
                    UTN FRGP &middot; Programaci&oacute;n III
                </div>

                <h1 class="about-hero-title">
                    Trabajo<br />
                    <span class="about-title-gradient">Pr&aacute;ctico</span><br />
                    Acad&eacute;mico.
                </h1>

                <p class="about-hero-sub">
                    Proyecto integrador desarrollado para la materia&nbsp;<strong>Programaci&oacute;n III</strong>&nbsp;en la
                    <strong>Universidad Tecnol&oacute;gica Nacional &ndash; Facultad Regional General Pacheco</strong>.
                </p>

                <div class="about-hero-stats">
                    <div class="about-stat-pill">
                        <span class="stat-number">3</span>
                        <span class="stat-label">Capas</span>
                    </div>
                    <div class="about-stat-pill">
                        <span class="stat-number">1</span>
                        <span class="stat-label">Base de Datos</span>
                    </div>
                    <div class="about-stat-pill">
                        <span class="stat-number">100%</span>
                        <span class="stat-label">Funcional</span>
                    </div>
                </div>
            </div>
        </section>

        <section class="about-section-block">
            <div class="about-section-container">

                <div class="about-section-label">
                    <span class="section-label-line"></span>
                    Arquitectura del Sistema
                    <span class="section-label-line"></span>
                </div>

                <h2 class="about-section-heading">
                    Tecnolog&iacute;as e<br /><span class="about-title-gradient">Implementaci&oacute;n Real</span>
                </h2>

                <p class="about-section-lead">
                    El objetivo principal fue aplicar conceptos de programaci&oacute;n orientada a objetos en capas y
                    desarrollo web tradicional, con una arquitectura directa, funcional y escalable.
                </p>

                <div class="about-cards-grid">

                    <div class="about-layer-card about-layer-card--primary">
                        <div class="layer-card-number">01</div>
                        <div class="layer-card-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="2" y="3" width="20" height="14" rx="2" ry="2"/><line x1="8" y1="21" x2="16" y2="21"/><line x1="12" y1="17" x2="12" y2="21"/>
                            </svg>
                        </div>
                        <h3 class="layer-card-title">Capa de Presentaci&oacute;n</h3>
                        <p class="layer-card-text">
                            Construida con <strong>ASP.NET Web Forms</strong>, usando Master Pages, formularios interactivos,
                            validaciones JavaScript nativas y Bootstrap 5 para el soporte responsivo.
                        </p>
                        <div class="layer-card-tags">
                            <span class="tech-tag">ASP.NET</span>
                            <span class="tech-tag">Bootstrap 5</span>
                            <span class="tech-tag">JavaScript</span>
                        </div>
                    </div>

                    <div class="about-layer-card about-layer-card--accent">
                        <div class="layer-card-number">02</div>
                        <div class="layer-card-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/>
                            </svg>
                        </div>
                        <h3 class="layer-card-title">Capa de Negocio y Dominio</h3>
                        <p class="layer-card-text">
                            Desarrollada en bibliotecas de clases en <strong>C# (.NET Framework 4.8)</strong>, gestionando
                            reglas del negocio, mapeo de objetos (Voucher, Cliente, Art&iacute;culo) y flujos l&oacute;gicos.
                        </p>
                        <div class="layer-card-tags">
                            <span class="tech-tag">C#</span>
                            <span class="tech-tag">.NET 4.8</span>
                            <span class="tech-tag">OOP</span>
                        </div>
                    </div>

                    <div class="about-layer-card about-layer-card--teal">
                        <div class="layer-card-number">03</div>
                        <div class="layer-card-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                <ellipse cx="12" cy="5" rx="9" ry="3"/><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"/><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"/>
                            </svg>
                        </div>
                        <h3 class="layer-card-title">Base de Datos</h3>
                        <p class="layer-card-text">
                            Almacenamiento estructurado en <strong>Microsoft SQL Server</strong>. Acceso a datos mediante
                            consultas SQL directas y parametrizadas encapsuladas en la clase <code>AccesoDatos</code>.
                        </p>
                        <div class="layer-card-tags">
                            <span class="tech-tag">SQL Server</span>
                            <span class="tech-tag">ADO.NET</span>
                            <span class="tech-tag">SQL</span>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="about-purpose-section">
            <div class="about-section-container">
                <div class="about-purpose-glass">

                    <div class="purpose-left">
                        <div class="purpose-icon-ring">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" style="width:28px;height:28px;">
                                <path d="M12 2L2 7l10 5 10-5-10-5z"/><path d="M2 17l10 5 10-5"/><path d="M2 12l10 5 10-5"/>
                            </svg>
                        </div>
                        <h3 class="purpose-title">Prop&oacute;sito Acad&eacute;mico</h3>
                    </div>

                    <div class="purpose-divider"></div>

                    <div class="purpose-right">
                        <p class="purpose-text">
                            El sistema simula una campa&ntilde;a promocional real: validaci&oacute;n de un c&oacute;digo de voucher &uacute;nico,
                            selecci&oacute;n de un cat&aacute;logo de premios consumido desde una base de datos preexistente, y el registro
                            o actualizaci&oacute;n de la informaci&oacute;n del cliente en base a su DNI para formalizar la participaci&oacute;n.
                        </p>
                        <div class="purpose-features">
                            <div class="purpose-feature-item">
                                <span class="pfi-dot"></span> Validaci&oacute;n de Voucher
                            </div>
                            <div class="purpose-feature-item">
                                <span class="pfi-dot pfi-dot--teal"></span> Cat&aacute;logo de Premios
                            </div>
                            <div class="purpose-feature-item">
                                <span class="pfi-dot pfi-dot--purple"></span> Registro de Cliente
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="about-cta-section">
            <div class="about-section-container about-cta-inner">
                <p class="about-cta-tagline">&iquest;Listo para explorar el proyecto?</p>
                <a href="Inicio.aspx" class="about-cta-btn" id="btnAboutGoHome">
                    Ir al Inicio
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" style="width:16px;height:16px;">
                        <line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/>
                    </svg>
                </a>
            </div>
        </section>

    </div>

    <style type="text/css">

        .about-page-wrapper {
            position: relative;
            overflow: hidden;
            background: #f5f5f7;
            min-height: 100vh;
        }

        .about-orb {
            position: fixed;
            border-radius: 50%;
            pointer-events: none;
            filter: blur(100px);
            opacity: 0.18;
            z-index: 0;
        }
        .about-orb-1 {
            width: 700px; height: 700px;
            background: #384082;
            top: -200px; left: -200px;
            animation: orbDrift1 18s ease-in-out infinite;
        }
        .about-orb-2 {
            width: 500px; height: 500px;
            background: #613882;
            top: 40%; right: -150px;
            animation: orbDrift2 14s ease-in-out infinite;
        }
        .about-orb-3 {
            width: 400px; height: 400px;
            background: #386E82;
            bottom: 0; left: 30%;
            animation: orbDrift3 20s ease-in-out infinite;
        }
        @keyframes orbDrift1 {
            0%, 100% { transform: translate(0, 0) scale(1); }
            50%       { transform: translate(60px, 80px) scale(1.1); }
        }
        @keyframes orbDrift2 {
            0%, 100% { transform: translate(0, 0) scale(1); }
            50%       { transform: translate(-50px, -60px) scale(1.08); }
        }
        @keyframes orbDrift3 {
            0%, 100% { transform: translate(0, 0) scale(1); }
            50%       { transform: translate(40px, -50px) scale(1.05); }
        }

        .about-title-gradient {
            background: linear-gradient(135deg, #384082 0%, #483882 40%, #613882 70%, #386E82 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .about-hero-section {
            position: relative;
            z-index: 2;
            padding: 100px 24px 80px;
            display: flex;
            justify-content: center;
        }
        .about-hero-inner {
            max-width: 820px;
            width: 100%;
        }

        .about-eyebrow-badge {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            background: rgba(56, 64, 130, 0.08);
            border: 1px solid rgba(56, 64, 130, 0.18);
            border-radius: 50px;
            padding: 8px 20px;
            font-size: 0.78rem;
            font-weight: 600;
            color: #384082;
            letter-spacing: 0.04em;
            margin-bottom: 32px;
            backdrop-filter: blur(10px);
        }
        .eyebrow-dot {
            width: 8px; height: 8px;
            border-radius: 50%;
            background: #4ade80;
            animation: eyebrowPulse 2s ease-in-out infinite;
        }
        @keyframes eyebrowPulse {
            0%, 100% { opacity: 1; transform: scale(1); }
            50%       { opacity: 0.5; transform: scale(0.75); }
        }

        .about-hero-title {
            font-size: clamp(3rem, 8vw, 6.5rem);
            font-weight: 900;
            letter-spacing: -0.05em;
            line-height: 0.95;
            color: #1d1d1f;
            margin-bottom: 28px;
        }

        .about-hero-sub {
            font-size: 1.12rem;
            color: rgba(29, 29, 31, 0.65);
            line-height: 1.7;
            max-width: 580px;
            margin-bottom: 44px;
        }
        .about-hero-sub strong { color: #384082; }

        .about-hero-stats {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }
        .about-stat-pill {
            display: flex;
            flex-direction: column;
            align-items: center;
            background: #fff;
            border: 1px solid rgba(56, 64, 130, 0.12);
            border-radius: 18px;
            padding: 18px 28px;
            box-shadow: 0 4px 20px rgba(56, 64, 130, 0.06);
            transition: transform 0.3s cubic-bezier(0.34,1.56,0.64,1), box-shadow 0.3s ease;
            cursor: default;
        }
        .about-stat-pill:hover {
            transform: translateY(-4px) scale(1.03);
            box-shadow: 0 10px 32px rgba(56, 64, 130, 0.14);
        }
        .stat-number {
            font-size: 1.9rem;
            font-weight: 900;
            letter-spacing: -0.04em;
            background: linear-gradient(135deg, #384082, #613882);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            line-height: 1;
            margin-bottom: 4px;
        }
        .stat-label {
            font-size: 0.72rem;
            font-weight: 600;
            color: rgba(29,29,31,0.5);
            text-transform: uppercase;
            letter-spacing: 0.06em;
        }

        .about-section-container {
            max-width: 1100px;
            margin: 0 auto;
            padding: 0 24px;
        }

        .about-section-label {
            display: flex;
            align-items: center;
            gap: 16px;
            justify-content: center;
            font-size: 0.75rem;
            font-weight: 700;
            letter-spacing: 0.12em;
            text-transform: uppercase;
            color: rgba(56, 64, 130, 0.6);
            margin-bottom: 24px;
        }
        .section-label-line {
            flex: 1;
            max-width: 80px;
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(56,64,130,0.25), transparent);
        }

        .about-section-block {
            position: relative;
            z-index: 2;
            padding: 80px 0;
        }
        .about-section-heading {
            font-size: clamp(2rem, 5vw, 3.5rem);
            font-weight: 900;
            letter-spacing: -0.04em;
            line-height: 1.05;
            color: #1d1d1f;
            text-align: center;
            margin-bottom: 20px;
        }
        .about-section-lead {
            text-align: center;
            font-size: 1rem;
            color: rgba(29,29,31,0.6);
            line-height: 1.7;
            max-width: 600px;
            margin: 0 auto 60px;
        }

        .about-cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(290px, 1fr));
            gap: 24px;
        }

        .about-layer-card {
            position: relative;
            background: #fff;
            border-radius: 28px;
            padding: 36px 32px;
            overflow: hidden;
            border: 1px solid rgba(0,0,0,0.05);
            box-shadow: 0 4px 20px rgba(56,64,130,0.06);
            transition: transform 0.4s cubic-bezier(0.34,1.56,0.64,1), box-shadow 0.4s ease;
        }
        .about-layer-card:hover {
            transform: translateY(-8px) scale(1.02);
            box-shadow: 0 20px 60px rgba(56,64,130,0.16);
        }

        .about-layer-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0;
            height: 4px;
            border-radius: 28px 28px 0 0;
        }
        .about-layer-card--primary::before { background: linear-gradient(90deg, #384082, #483882); }
        .about-layer-card--accent::before  { background: linear-gradient(90deg, #483882, #613882); }
        .about-layer-card--teal::before    { background: linear-gradient(90deg, #386E82, #385782); }

        .layer-card-number {
            font-size: 4.5rem;
            font-weight: 900;
            letter-spacing: -0.06em;
            line-height: 1;
            color: rgba(56,64,130,0.06);
            position: absolute;
            top: 20px;
            right: 24px;
            font-variant-numeric: tabular-nums;
        }

        .layer-card-icon {
            width: 52px; height: 52px;
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 22px;
        }
        .about-layer-card--primary .layer-card-icon {
            background: linear-gradient(135deg, rgba(56,64,130,0.1), rgba(72,56,130,0.1));
            color: #384082;
        }
        .about-layer-card--accent .layer-card-icon {
            background: linear-gradient(135deg, rgba(72,56,130,0.1), rgba(97,56,130,0.1));
            color: #483882;
        }
        .about-layer-card--teal .layer-card-icon {
            background: linear-gradient(135deg, rgba(56,110,130,0.1), rgba(56,87,130,0.1));
            color: #386E82;
        }
        .layer-card-icon svg { width: 26px; height: 26px; }

        .layer-card-title {
            font-size: 1.15rem;
            font-weight: 800;
            letter-spacing: -0.02em;
            color: #1d1d1f;
            margin-bottom: 12px;
        }
        .layer-card-text {
            font-size: 0.9rem;
            color: rgba(29,29,31,0.62);
            line-height: 1.65;
            margin-bottom: 22px;
        }
        .layer-card-text strong { color: #1d1d1f; }
        .layer-card-text code {
            font-size: 0.82rem;
            background: rgba(56,64,130,0.08);
            color: #384082;
            padding: 2px 7px;
            border-radius: 6px;
        }

        .layer-card-tags { display: flex; gap: 8px; flex-wrap: wrap; }
        .tech-tag {
            font-size: 0.72rem;
            font-weight: 600;
            letter-spacing: 0.04em;
            padding: 4px 12px;
            border-radius: 50px;
            background: rgba(56,64,130,0.07);
            color: #384082;
            border: 1px solid rgba(56,64,130,0.12);
            transition: background 0.25s ease;
        }
        .about-layer-card--accent .tech-tag  { background: rgba(97,56,130,0.07);  color: #613882; border-color: rgba(97,56,130,0.12); }
        .about-layer-card--teal   .tech-tag  { background: rgba(56,110,130,0.07); color: #386E82; border-color: rgba(56,110,130,0.12); }

        .about-purpose-section {
            position: relative;
            z-index: 2;
            padding: 0 0 80px;
        }
        .about-purpose-glass {
            display: flex;
            gap: 0;
            align-items: stretch;
            background: linear-gradient(135deg, #384082 0%, #483882 50%, #613882 100%);
            border-radius: 32px;
            overflow: hidden;
            box-shadow: 0 20px 70px rgba(56,64,130,0.28), 0 0 0 1px rgba(255,255,255,0.06);
            position: relative;
        }
        .about-purpose-glass::before {
            content: '';
            position: absolute;
            top: -60%; right: -10%;
            width: 450px; height: 450px;
            border-radius: 50%;
            background: radial-gradient(circle, rgba(255,255,255,0.08) 0%, transparent 65%);
            pointer-events: none;
        }

        .purpose-left {
            padding: 50px 44px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            min-width: 260px;
            max-width: 300px;
        }
        .purpose-icon-ring {
            width: 64px; height: 64px;
            border-radius: 20px;
            background: rgba(255,255,255,0.12);
            border: 1px solid rgba(255,255,255,0.2);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            margin-bottom: 20px;
            backdrop-filter: blur(10px);
        }
        .purpose-title {
            font-size: 1.55rem;
            font-weight: 900;
            letter-spacing: -0.03em;
            color: #fff;
            line-height: 1.15;
            margin: 0;
        }

        .purpose-divider {
            width: 1px;
            background: rgba(255,255,255,0.12);
            align-self: stretch;
            flex-shrink: 0;
        }

        .purpose-right {
            flex: 1;
            padding: 50px 44px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .purpose-text {
            font-size: 1rem;
            color: rgba(255,255,255,0.8);
            line-height: 1.75;
            margin-bottom: 28px;
        }
        .purpose-features {
            display: flex;
            gap: 24px;
            flex-wrap: wrap;
        }
        .purpose-feature-item {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.85rem;
            font-weight: 600;
            color: rgba(255,255,255,0.85);
            letter-spacing: 0.01em;
        }
        .pfi-dot {
            width: 8px; height: 8px;
            border-radius: 50%;
            background: #4ade80;
            flex-shrink: 0;
        }
        .pfi-dot--teal   { background: #38bdf8; }
        .pfi-dot--purple { background: #c084fc; }

        .about-cta-section {
            position: relative;
            z-index: 2;
            padding: 20px 0 100px;
        }
        .about-cta-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 24px;
        }
        .about-cta-tagline {
            font-size: 1.6rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            color: #1d1d1f;
            margin: 0;
        }
        .about-cta-btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            background: linear-gradient(135deg, #384082 0%, #613882 100%);
            color: #fff !important;
            font-size: 1rem;
            font-weight: 700;
            padding: 16px 32px;
            border-radius: 50px;
            text-decoration: none !important;
            box-shadow: 0 8px 28px rgba(56,64,130,0.32);
            transition: transform 0.35s cubic-bezier(0.34,1.56,0.64,1), box-shadow 0.35s ease;
            letter-spacing: -0.01em;
        }
        .about-cta-btn:hover {
            transform: translateY(-3px) scale(1.04);
            box-shadow: 0 14px 40px rgba(56,64,130,0.42);
        }
        .about-cta-btn:active { transform: scale(0.97); }

        body.dark-mode .about-page-wrapper { background: #0a0a0f; }
        body.dark-mode .about-orb { opacity: 0.12; }

        body.dark-mode .about-eyebrow-badge {
            background: rgba(56,64,130,0.2);
            border-color: rgba(56,64,130,0.35);
            color: #7b8fe0;
        }
        body.dark-mode .about-hero-title { color: #f5f5f7; }
        body.dark-mode .about-hero-sub   { color: rgba(245,245,247,0.55); }
        body.dark-mode .about-hero-sub strong { color: #7b8fe0; }

        body.dark-mode .about-stat-pill {
            background: rgba(255,255,255,0.05);
            border-color: rgba(255,255,255,0.08);
            box-shadow: none;
        }
        body.dark-mode .about-stat-pill:hover { box-shadow: 0 10px 30px rgba(0,0,0,0.3); }

        body.dark-mode .about-section-heading { color: #f5f5f7; }
        body.dark-mode .about-section-lead    { color: rgba(245,245,247,0.5); }

        body.dark-mode .about-layer-card {
            background: rgba(255,255,255,0.04);
            border-color: rgba(255,255,255,0.07);
            box-shadow: none;
        }
        body.dark-mode .about-layer-card:hover { box-shadow: 0 20px 60px rgba(0,0,0,0.4); }

        body.dark-mode .layer-card-title { color: #f5f5f7; }
        body.dark-mode .layer-card-text  { color: rgba(245,245,247,0.55); }
        body.dark-mode .layer-card-text strong { color: #f5f5f7; }
        body.dark-mode .layer-card-text code { background: rgba(120,140,255,0.1); color: #7b8fe0; }

        body.dark-mode .about-layer-card--primary .layer-card-icon { background: rgba(56,64,130,0.2); }
        body.dark-mode .about-layer-card--accent  .layer-card-icon { background: rgba(97,56,130,0.2); }
        body.dark-mode .about-layer-card--teal    .layer-card-icon { background: rgba(56,110,130,0.2); }

        body.dark-mode .tech-tag {
            background: rgba(56,64,130,0.18);
            border-color: rgba(56,64,130,0.3);
            color: #7b8fe0;
        }
        body.dark-mode .about-layer-card--accent .tech-tag  { background: rgba(97,56,130,0.18); color: #c084fc; border-color: rgba(97,56,130,0.3); }
        body.dark-mode .about-layer-card--teal   .tech-tag  { background: rgba(56,110,130,0.18); color: #38bdf8; border-color: rgba(56,110,130,0.3); }

        body.dark-mode .about-cta-tagline { color: #f5f5f7; }

        @media (max-width: 768px) {
            .about-hero-section { padding: 80px 20px 60px; }
            .about-hero-title   { font-size: 3.2rem; }
            .about-purpose-glass { flex-direction: column; }
            .purpose-left { min-width: unset; max-width: unset; padding: 36px 28px 20px; }
            .purpose-divider { width: 100%; height: 1px; }
            .purpose-right { padding: 20px 28px 36px; }
            .about-cta-inner { flex-direction: column; align-items: flex-start; }
        }

    </style>

</asp:Content>