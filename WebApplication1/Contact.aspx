<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="contact-page-wrapper">

        <div class="contact-orb contact-orb-1"></div>
        <div class="contact-orb contact-orb-2"></div>
        <div class="contact-orb contact-orb-3"></div>

        <section class="contact-hero-section">
            <div class="contact-hero-inner">

                <div class="contact-identity-col">

                    <div class="contact-eyebrow-badge">
                        <span class="contact-badge-dot"></span>
                        Desarrollador &amp; Estudiante
                    </div>

                    <h1 class="contact-hero-title">
                        Sebasti&aacute;n<br />
                        <span class="contact-title-gradient">Yanni</span>
                    </h1>

                    <p class="contact-hero-role">
                        Aspiring iOS Developer &middot; Estudiante UTN FRGP
                    </p>

                    <p class="contact-hero-bio">
                        Cursando en la <strong>Universidad Tecnol&oacute;gica Nacional (UTN)</strong>, una de las
                        instituciones t&eacute;cnicas m&aacute;s prestigiosas de Argentina y Latinoam&eacute;rica.
                        Mi pasi&oacute;n: el desarrollo mobile, con el firme objetivo de convertirme en el mejor
                        <strong>iOS Developer</strong>, combinando formaci&oacute;n acad&eacute;mica con aprendizaje
                        autodidacta intensivo del ecosistema Apple.
                    </p>

                    <p class="contact-hero-bio" style="margin-top: -4px;">
                        Me dedico a perfeccionar mis habilidades en <strong>Swift, SwiftUI y Arquitecturas de Software
                        m&oacute;viles</strong>, dise&ntilde;ando experiencias de usuario funcionales, robustas y
                        visualmente memorables.
                    </p>

                    <div class="contact-skills-row">
                        <span class="contact-skill-chip contact-skill-chip--a">Swift</span>
                        <span class="contact-skill-chip contact-skill-chip--b">SwiftUI</span>
                        <span class="contact-skill-chip contact-skill-chip--c">iOS Dev</span>
                        <span class="contact-skill-chip contact-skill-chip--d">C#</span>
                        <span class="contact-skill-chip contact-skill-chip--e">ASP.NET</span>
                    </div>

                </div>

                <div class="contact-links-col">
                    <div class="contact-links-card">

                        <div class="links-card-header">
                            <span class="links-card-header-dot"></span>
                            <span class="links-card-header-dot" style="background:#f59e0b;"></span>
                            <span class="links-card-header-dot" style="background:#4ade80;"></span>
                            <span class="links-card-header-title">Mis Redes y Portafolio</span>
                        </div>

                        <a href="https://www.sebastianyanni.com/" target="_blank" id="linkWebsite" class="contact-profile-btn">
                            <div class="contact-profile-btn-icon contact-profile-btn-icon--web">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="12" cy="12" r="10"/>
                                    <line x1="2" y1="12" x2="22" y2="12"/>
                                    <path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/>
                                </svg>
                            </div>
                            <div class="contact-profile-btn-body">
                                <span class="cpb-label">P&aacute;gina Web Personal</span>
                                <span class="cpb-url">sebastianyanni.com</span>
                            </div>
                            <div class="contact-profile-btn-arrow">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                    <line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/>
                                </svg>
                            </div>
                        </a>

                        <a href="https://www.linkedin.com/in/sebastian-yanni/" target="_blank" id="linkLinkedIn" class="contact-profile-btn">
                            <div class="contact-profile-btn-icon contact-profile-btn-icon--li">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/>
                                    <rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/>
                                </svg>
                            </div>
                            <div class="contact-profile-btn-body">
                                <span class="cpb-label">LinkedIn</span>
                                <span class="cpb-url">in/sebastian-yanni</span>
                            </div>
                            <div class="contact-profile-btn-arrow">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                    <line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/>
                                </svg>
                            </div>
                        </a>

                        <a href="https://github.com/SebasYa" target="_blank" id="linkGitHub" class="contact-profile-btn">
                            <div class="contact-profile-btn-icon contact-profile-btn-icon--gh">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"/>
                                </svg>
                            </div>
                            <div class="contact-profile-btn-body">
                                <span class="cpb-label">GitHub</span>
                                <span class="cpb-url">github.com/SebasYa</span>
                            </div>
                            <div class="contact-profile-btn-arrow">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                    <line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/>
                                </svg>
                            </div>
                        </a>

                        <div class="links-card-footer">
                            <span class="links-card-footer-icon">&#9670;</span>
                            <span>Construyendo desde Argentina &mdash; para el mundo.</span>
                        </div>

                    </div>
                </div>

            </div>
        </section>

        <section class="contact-passion-section">
            <div class="contact-section-container">
                <div class="contact-passion-grid">

                    <div class="contact-passion-card contact-passion-card--1">
                        <div class="passion-card-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="5" y="2" width="14" height="20" rx="2" ry="2"/><line x1="12" y1="18" x2="12.01" y2="18"/>
                            </svg>
                        </div>
                        <h3 class="passion-card-title">iOS Ecosystem</h3>
                        <p class="passion-card-text">Swift &bull; SwiftUI &bull; UIKit &bull; Xcode &bull; Core Data</p>
                    </div>

                    <div class="contact-passion-card contact-passion-card--2">
                        <div class="passion-card-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/>
                            </svg>
                        </div>
                        <h3 class="passion-card-title">Backend &amp; Web</h3>
                        <p class="passion-card-text">C# &bull; ASP.NET &bull; SQL Server &bull; .NET Framework</p>
                    </div>

                    <div class="contact-passion-card contact-passion-card--3">
                        <div class="passion-card-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M12 20h9"/><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"/>
                            </svg>
                        </div>
                        <h3 class="passion-card-title">Dise&ntilde;o &amp; UX</h3>
                        <p class="passion-card-text">Apple HIG &bull; Figma &bull; Motion &bull; Glassmorphism</p>
                    </div>

                </div>
            </div>
        </section>

    </div>

    <style type="text/css">

        .contact-page-wrapper {
            position: relative;
            overflow: hidden;
            background: #f5f5f7;
            min-height: 100vh;
        }

        .contact-orb {
            position: fixed;
            border-radius: 50%;
            pointer-events: none;
            filter: blur(110px);
            opacity: 0.16;
            z-index: 0;
        }
        .contact-orb-1 {
            width: 650px; height: 650px;
            background: #483882;
            top: -180px; right: -180px;
            animation: cOrbDrift1 16s ease-in-out infinite;
        }
        .contact-orb-2 {
            width: 500px; height: 500px;
            background: #386E82;
            bottom: 10%; left: -100px;
            animation: cOrbDrift2 20s ease-in-out infinite;
        }
        .contact-orb-3 {
            width: 350px; height: 350px;
            background: #613882;
            top: 50%; left: 40%;
            animation: cOrbDrift3 12s ease-in-out infinite;
        }
        @keyframes cOrbDrift1 {
            0%, 100% { transform: translate(0,0) scale(1); }
            50%       { transform: translate(-60px, 70px) scale(1.1); }
        }
        @keyframes cOrbDrift2 {
            0%, 100% { transform: translate(0,0) scale(1); }
            50%       { transform: translate(70px, -50px) scale(1.08); }
        }
        @keyframes cOrbDrift3 {
            0%, 100% { transform: translate(0,0) scale(1); }
            50%       { transform: translate(-40px, 60px) scale(1.06); }
        }

        .contact-title-gradient {
            background: linear-gradient(135deg, #384082 0%, #483882 35%, #613882 65%, #386E82 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .contact-hero-section {
            position: relative;
            z-index: 2;
            padding: 90px 24px 80px;
            display: flex;
            justify-content: center;
        }
        .contact-hero-inner {
            max-width: 1100px;
            width: 100%;
            display: grid;
            grid-template-columns: 1fr 420px;
            gap: 60px;
            align-items: center;
        }

        .contact-identity-col { position: relative; }

        .contact-eyebrow-badge {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            background: rgba(72,56,130,0.08);
            border: 1px solid rgba(72,56,130,0.18);
            border-radius: 50px;
            padding: 8px 20px;
            font-size: 0.78rem;
            font-weight: 600;
            color: #483882;
            letter-spacing: 0.04em;
            margin-bottom: 32px;
            backdrop-filter: blur(10px);
        }
        .contact-badge-dot {
            width: 8px; height: 8px;
            border-radius: 50%;
            background: #4ade80;
            animation: cBadgePulse 2s ease-in-out infinite;
        }
        @keyframes cBadgePulse {
            0%, 100% { opacity: 1; transform: scale(1); }
            50%       { opacity: 0.45; transform: scale(0.75); }
        }

        .contact-hero-title {
            font-size: clamp(3.5rem, 8vw, 6.5rem);
            font-weight: 900;
            letter-spacing: -0.055em;
            line-height: 0.9;
            color: #1d1d1f;
            margin-bottom: 18px;
        }

        .contact-hero-role {
            font-size: 1.05rem;
            font-weight: 600;
            background: linear-gradient(135deg, #384082 0%, #613882 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            letter-spacing: 0.01em;
            margin-bottom: 24px;
        }

        .contact-hero-bio {
            font-size: 0.97rem;
            color: rgba(29,29,31,0.62);
            line-height: 1.72;
            margin-bottom: 16px;
            max-width: 580px;
        }
        .contact-hero-bio strong { color: #1d1d1f; }

        .contact-skills-row {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            margin-top: 28px;
        }
        .contact-skill-chip {
            font-size: 0.75rem;
            font-weight: 700;
            letter-spacing: 0.05em;
            padding: 7px 16px;
            border-radius: 50px;
            border: 1px solid transparent;
            transition: transform 0.3s cubic-bezier(0.34,1.56,0.64,1), box-shadow 0.3s ease;
            cursor: default;
        }
        .contact-skill-chip:hover { transform: translateY(-2px) scale(1.06); }

        .contact-skill-chip--a { background: rgba(56,64,130,0.08);  color: #384082; border-color: rgba(56,64,130,0.2); }
        .contact-skill-chip--b { background: rgba(72,56,130,0.08);  color: #483882; border-color: rgba(72,56,130,0.2); }
        .contact-skill-chip--c { background: rgba(97,56,130,0.08);  color: #613882; border-color: rgba(97,56,130,0.2); }
        .contact-skill-chip--d { background: rgba(56,87,130,0.08);  color: #385782; border-color: rgba(56,87,130,0.2); }
        .contact-skill-chip--e { background: rgba(56,110,130,0.08); color: #386E82; border-color: rgba(56,110,130,0.2); }

        .contact-links-col { position: relative; z-index: 2; }

        .contact-links-card {
            background: #fff;
            border-radius: 28px;
            overflow: hidden;
            box-shadow:
                0 20px 70px rgba(56,64,130,0.14),
                0 0 0 1px rgba(56,64,130,0.07);
            display: flex;
            flex-direction: column;
        }

        .links-card-header {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 16px 22px;
            border-bottom: 1px solid rgba(0,0,0,0.05);
            background: #fafafa;
        }
        .links-card-header-dot {
            width: 12px; height: 12px;
            border-radius: 50%;
            background: #ff5f57;
            flex-shrink: 0;
        }
        .links-card-header-title {
            font-size: 0.8rem;
            font-weight: 600;
            color: rgba(29,29,31,0.4);
            letter-spacing: 0.02em;
            margin-left: auto;
            margin-right: auto;
        }

        .contact-profile-btn {
            display: flex;
            align-items: center;
            gap: 16px;
            padding: 18px 22px;
            text-decoration: none !important;
            border-bottom: 1px solid rgba(0,0,0,0.04);
            transition: background 0.25s ease, transform 0.35s cubic-bezier(0.34,1.56,0.64,1);
            position: relative;
            overflow: hidden;
        }
        .contact-profile-btn::before {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(135deg, rgba(56,64,130,0.04) 0%, rgba(97,56,130,0.04) 100%);
            opacity: 0;
            transition: opacity 0.25s ease;
        }
        .contact-profile-btn:hover::before { opacity: 1; }
        .contact-profile-btn:hover {
            transform: translateX(4px);
        }
        .contact-profile-btn:last-of-type { border-bottom: none; }

        .contact-profile-btn-icon {
            width: 46px; height: 46px;
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }
        .contact-profile-btn-icon svg { width: 22px; height: 22px; }

        .contact-profile-btn-icon--web { background: linear-gradient(135deg, rgba(56,64,130,0.1), rgba(72,56,130,0.1)); color: #384082; }
        .contact-profile-btn-icon--li  { background: linear-gradient(135deg, rgba(56,87,130,0.1), rgba(56,64,130,0.1)); color: #385782; }
        .contact-profile-btn-icon--gh  { background: linear-gradient(135deg, rgba(72,56,130,0.1), rgba(97,56,130,0.1)); color: #483882; }

        .contact-profile-btn-body {
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 2px;
        }
        .cpb-label {
            font-size: 0.95rem;
            font-weight: 700;
            color: #1d1d1f;
            letter-spacing: -0.01em;
        }
        .cpb-url {
            font-size: 0.78rem;
            color: rgba(29,29,31,0.42);
            font-weight: 500;
        }

        .contact-profile-btn-arrow {
            color: rgba(29,29,31,0.25);
            transition: color 0.25s ease, transform 0.35s cubic-bezier(0.34,1.56,0.64,1);
        }
        .contact-profile-btn-arrow svg { width: 16px; height: 16px; }
        .contact-profile-btn:hover .contact-profile-btn-arrow {
            color: #384082;
            transform: translateX(3px);
        }

        .links-card-footer {
            padding: 16px 22px;
            border-top: 1px solid rgba(0,0,0,0.05);
            background: linear-gradient(135deg, rgba(56,64,130,0.04) 0%, rgba(97,56,130,0.04) 100%);
            font-size: 0.78rem;
            font-weight: 500;
            color: rgba(29,29,31,0.45);
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .links-card-footer-icon {
            background: linear-gradient(135deg, #384082, #613882);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-size: 0.85rem;
        }

        .contact-section-container {
            max-width: 1100px;
            margin: 0 auto;
            padding: 0 24px;
        }

        .contact-passion-section {
            position: relative;
            z-index: 2;
            padding: 0 0 100px;
        }
        .contact-passion-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
        }

        .contact-passion-card {
            position: relative;
            border-radius: 28px;
            padding: 36px 32px;
            overflow: hidden;
            transition: transform 0.4s cubic-bezier(0.34,1.56,0.64,1), box-shadow 0.4s ease;
        }
        .contact-passion-card:hover {
            transform: translateY(-6px) scale(1.02);
        }

        .contact-passion-card--1 {
            background: linear-gradient(135deg, #384082 0%, #483882 100%);
            box-shadow: 0 8px 40px rgba(56,64,130,0.3);
        }
        .contact-passion-card--2 {
            background: linear-gradient(135deg, #483882 0%, #613882 100%);
            box-shadow: 0 8px 40px rgba(97,56,130,0.3);
        }
        .contact-passion-card--3 {
            background: linear-gradient(135deg, #385782 0%, #386E82 100%);
            box-shadow: 0 8px 40px rgba(56,110,130,0.3);
        }

        .contact-passion-card::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(circle at 80% 20%, rgba(255,255,255,0.1) 0%, transparent 60%);
            pointer-events: none;
        }

        .passion-card-icon {
            width: 54px; height: 54px;
            border-radius: 16px;
            background: rgba(255,255,255,0.12);
            border: 1px solid rgba(255,255,255,0.2);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            margin-bottom: 20px;
        }
        .passion-card-icon svg { width: 26px; height: 26px; }

        .passion-card-title {
            font-size: 1.2rem;
            font-weight: 800;
            color: #fff;
            letter-spacing: -0.03em;
            margin-bottom: 8px;
        }
        .passion-card-text {
            font-size: 0.875rem;
            color: rgba(255,255,255,0.7);
            line-height: 1.6;
            margin: 0;
        }

        body.dark-mode .contact-page-wrapper { background: #0a0a0f; }
        body.dark-mode .contact-orb { opacity: 0.1; }

        body.dark-mode .contact-eyebrow-badge {
            background: rgba(72,56,130,0.2);
            border-color: rgba(72,56,130,0.35);
            color: #9b85e0;
        }
        body.dark-mode .contact-hero-title { color: #f5f5f7; }
        body.dark-mode .contact-hero-bio   { color: rgba(245,245,247,0.55); }
        body.dark-mode .contact-hero-bio strong { color: #f5f5f7; }

        body.dark-mode .contact-skill-chip--a { background: rgba(56,64,130,0.2);  border-color: rgba(56,64,130,0.35);  color: #7b8fe0; }
        body.dark-mode .contact-skill-chip--b { background: rgba(72,56,130,0.2);  border-color: rgba(72,56,130,0.35);  color: #9b85e0; }
        body.dark-mode .contact-skill-chip--c { background: rgba(97,56,130,0.2);  border-color: rgba(97,56,130,0.35);  color: #c084fc; }
        body.dark-mode .contact-skill-chip--d { background: rgba(56,87,130,0.2);  border-color: rgba(56,87,130,0.35);  color: #60a5fa; }
        body.dark-mode .contact-skill-chip--e { background: rgba(56,110,130,0.2); border-color: rgba(56,110,130,0.35); color: #38bdf8; }

        body.dark-mode .contact-links-card {
            background: rgba(255,255,255,0.04);
            box-shadow: 0 20px 70px rgba(0,0,0,0.4), 0 0 0 1px rgba(255,255,255,0.06);
        }
        body.dark-mode .links-card-header { background: rgba(255,255,255,0.03); border-bottom-color: rgba(255,255,255,0.06); }
        body.dark-mode .contact-profile-btn { border-bottom-color: rgba(255,255,255,0.05); }
        body.dark-mode .contact-profile-btn::before {
            background: linear-gradient(135deg, rgba(120,140,255,0.06) 0%, rgba(180,120,255,0.06) 100%);
        }

        body.dark-mode .contact-profile-btn-icon--web { background: rgba(56,64,130,0.25);  color: #7b8fe0; }
        body.dark-mode .contact-profile-btn-icon--li  { background: rgba(56,87,130,0.25);  color: #60a5fa; }
        body.dark-mode .contact-profile-btn-icon--gh  { background: rgba(72,56,130,0.25);  color: #9b85e0; }

        body.dark-mode .cpb-label { color: #f5f5f7; }
        body.dark-mode .cpb-url   { color: rgba(245,245,247,0.35); }
        body.dark-mode .contact-profile-btn-arrow { color: rgba(245,245,247,0.2); }
        body.dark-mode .contact-profile-btn:hover .contact-profile-btn-arrow { color: #7b8fe0; }

        body.dark-mode .links-card-footer {
            background: rgba(255,255,255,0.02);
            border-top-color: rgba(255,255,255,0.05);
            color: rgba(245,245,247,0.3);
        }

        @media (max-width: 900px) {
            .contact-hero-inner {
                grid-template-columns: 1fr;
                gap: 40px;
            }
            .contact-hero-section { padding: 80px 20px 60px; }
            .contact-hero-title   { font-size: 3.5rem; }
        }
        @media (max-width: 480px) {
            .contact-hero-title { font-size: 2.8rem; }
        }

    </style>

</asp:Content>