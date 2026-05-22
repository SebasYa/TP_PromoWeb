<%@ Page Title="Catalogo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CatalogoArticulos.aspx.cs" Inherits="WebApplication1.CatalogoArticulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        function handleImgError(img) {
            img.classList.add('img-error');
            img.classList.remove('active');
            var wrapper = img.closest('.article-card-img-wrapper');
            if (!wrapper) return;
            var valid = wrapper.querySelectorAll('.carousel-slide:not(.img-error)');
            var def = wrapper.querySelector('.article-card-img-default');
            if (valid.length === 0) {
                if (def) def.style.display = 'flex';
            } else if (!wrapper.querySelector('.carousel-slide.active:not(.img-error)')) {
                valid[0].classList.add('active');
            }
            updateCardDots(wrapper);
        }

        function updateCardDots(wrapper) {
            var dotsContainer = wrapper.querySelector('.card-carousel-dots');
            if (!dotsContainer) return;
            var valid = wrapper.querySelectorAll('.carousel-slide:not(.img-error)');
            dotsContainer.innerHTML = '';
            if (valid.length <= 1) {
                dotsContainer.style.display = 'none';
                return;
            }
            dotsContainer.style.display = 'flex';
            for (var i = 0; i < valid.length; i++) {
                var dot = document.createElement('span');
                dot.className = 'card-carousel-dot' + (valid[i].classList.contains('active') ? ' active' : '');
                dotsContainer.appendChild(dot);
            }
        }
    </script>

    <section class="catalog-header">

        <div class="hero-stars" aria-hidden="true">
            <span style="width:3px;height:3px;top:20%;left:8%;--dur:4s;--delay:0s;"></span>
            <span style="width:2px;height:2px;top:60%;left:80%;--dur:5s;--delay:1s;"></span>
            <span style="width:3px;height:3px;top:40%;left:30%;--dur:3.5s;--delay:0.5s;"></span>
            <span style="width:2px;height:2px;top:15%;left:65%;--dur:6s;--delay:1.8s;"></span>
        </div>

        <div class="container">
            <h1 class="catalog-header-title">Cat&aacute;logo de Art&iacute;culos</h1>
            <p class="catalog-header-subtitle">Explor&aacute; los productos disponibles y selecion&aacute; el tuyo.</p>
            <div class="catalog-header-voucher">
                <span>&#9670;</span>
                Voucher:
                <asp:Label ID="lblVoucher" runat="server" />
            </div>
        </div>

        <div class="catalog-header-wave" aria-hidden="true">
            <svg viewBox="0 0 1440 40" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none">
                <path d="M0,20 C240,40 480,0 720,20 C960,40 1200,0 1440,20 L1440,40 L0,40 Z" fill="#f5f5f7" opacity="1"/>
            </svg>
        </div>

    </section>

    <section class="catalog-body">
        <div class="container">

            <% if (listaArticulos != null && listaArticulos.Count > 0) { %>

                <div class="row g-4">
                    <%
                        int cardIndex = 0;
                        foreach (dominio.Articulo art in listaArticulos)
                        {
                            // Obtener imagenes del articulo
                            System.Collections.Generic.List<dominio.Imagen> artImages = null;
                            if (dictImagenes != null && dictImagenes.ContainsKey(art.Id))
                                artImages = dictImagenes[art.Id];

                            string delay = (cardIndex * 80).ToString();
                            int imgCount = (artImages != null) ? artImages.Count : 0;
                            cardIndex++;
                    %>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="article-card article-card-animated"
                             data-delay="<%= delay %>"
                             data-id="<%= art.Id %>"
                             data-nombre="<%: art.Nombre %>"
                             data-descripcion="<%: art.Descripcion %>"
                             data-precio="<%= art.PrecioMostrarFactorizado %>"
                             data-marca="<%: art.Marca != null ? art.Marca.Descripcion : "" %>"
                             data-categoria="<%: art.Categoria != null ? art.Categoria.Descripcion : "" %>"
                             data-codigo="<%: art.Codigo %>">

                            <div class="article-card-img-wrapper">
                                <% if (artImages != null && artImages.Count > 0) {
                                       for (int imgIdx = 0; imgIdx < artImages.Count; imgIdx++) { %>
                                    <img src="<%= artImages[imgIdx].ImagenUrl %>"
                                         alt="<%: art.Nombre %>"
                                         class="carousel-slide<%= imgIdx == 0 ? " active" : "" %>"
                                         onerror="handleImgError(this);" />
                                <%     }
                                   } %>

                                <div class="article-card-img-default"<%= (artImages != null && artImages.Count > 0) ? " style=\"display:none;\"" : "" %>>
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#86868b" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="3" y="3" width="18" height="18" rx="2" ry="2"/>
                                        <circle cx="8.5" cy="8.5" r="1.5"/>
                                        <polyline points="21 15 16 10 5 21"/>
                                    </svg>
                                </div>

                                <% if (art.Categoria != null && !string.IsNullOrEmpty(art.Categoria.Descripcion)) { %>
                                    <span class="article-card-category-badge"><%: art.Categoria.Descripcion %></span>
                                <% } %>

                                <% if (imgCount > 1) { %>
                                    <span class="card-img-count">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="18" height="18" rx="2"/><circle cx="8.5" cy="8.5" r="1.5"/><polyline points="21 15 16 10 5 21"/></svg>
                                        <%= imgCount %>
                                    </span>
                                <% } %>

                                <% if (imgCount > 1) { %>
                                    <div class="card-carousel-dots">
                                        <% for (int dotIdx = 0; dotIdx < imgCount; dotIdx++) { %>
                                            <span class="card-carousel-dot<%= dotIdx == 0 ? " active" : "" %>"></span>
                                        <% } %>
                                    </div>
                                <% } %>
                            </div>

                            <div class="article-card-body">
                                <% if (art.Marca != null && !string.IsNullOrEmpty(art.Marca.Descripcion)) { %>
                                    <span class="article-card-brand"><%: art.Marca.Descripcion %></span>
                                <% } %>

                                <h5 class="article-card-name"><%: !string.IsNullOrEmpty(art.Nombre) ? art.Nombre : "Sin nombre" %></h5>

                                <% if (!string.IsNullOrEmpty(art.Descripcion)) { %>
                                    <p class="article-card-desc"><%: art.Descripcion %></p>
                                <% } %>

                                <div class="article-card-footer">
                                    <div>
                                        <span class="article-card-price-currency">$</span>
                                        <span class="article-card-price"><%= art.PrecioMostrarFactorizado %></span>
                                    </div>
                                    <% if (!string.IsNullOrEmpty(art.Codigo)) { %>
                                        <span class="article-card-sku">SKU: <%: art.Codigo %></span>
                                    <% } %>
                                </div>
                            </div>

                        </div>
                    </div>
                    <% } %>
                </div>

            <% } else { %>

                <div class="empty-state">
                    <svg class="empty-state-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#86868b" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                        <circle cx="11" cy="11" r="8"/>
                        <line x1="21" y1="21" x2="16.65" y2="16.65"/>
                    </svg>
                    <h3 class="empty-state-title">Sin art&iacute;culos disponibles</h3>
                    <p class="empty-state-text">No se encontraron art&iacute;culos en el cat&aacute;logo en este momento.</p>
                </div>

            <% } %>

        </div>
    </section>

    <div class="modal fade article-modal" id="articleModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="btn-close article-modal-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                <div class="row g-0">
                    <div class="col-md-6">
                        <div class="article-modal-img-wrapper">
                            <img id="modalImg" class="article-modal-img" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg'/%3E" alt="Imagen del articulo" />
                            <div id="modalImgDefault" class="article-card-img-default" style="display:none;">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#86868b" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="3" y="3" width="18" height="18" rx="2" ry="2"/>
                                    <circle cx="8.5" cy="8.5" r="1.5"/>
                                    <polyline points="21 15 16 10 5 21"/>
                                </svg>
                            </div>
                            <button type="button" id="modalPrev" class="carousel-arrow carousel-arrow-prev" style="display:none;">&#8249;</button>
                            <button type="button" id="modalNext" class="carousel-arrow carousel-arrow-next" style="display:none;">&#8250;</button>
                            <div id="modalDots" class="carousel-dots"></div>
                        </div>
                        <div id="modalThumbnails" class="modal-thumbnails"></div>
                    </div>
                    <div class="col-md-6 d-flex">
                        <div class="article-modal-details">
                            <span id="modalCategory" class="article-modal-category"></span>
                            <span id="modalBrand" class="article-modal-brand"></span>
                            <h3 id="modalName" class="article-modal-name"></h3>
                            <div class="article-modal-desc-wrapper">
                                <p id="modalDesc" class="article-modal-desc"></p>
                            </div>
                            <div class="article-modal-footer">
                                <div>
                                    <span class="article-modal-price-currency">$</span>
                                    <span id="modalPrice" class="article-modal-price"></span>
                                </div>
                                <span id="modalSku" class="article-card-sku"></span>
                            </div>
                            <button type="button" id="btnSeleccionar" class="btn btn-seleccionar">Seleccionar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="hfArticuloId" runat="server" ClientIDMode="Static" />
    <asp:Button ID="btnSeleccionarServer" runat="server" 
        OnClick="btnSeleccionar_Click" 
        UseSubmitBehavior="false"
        ClientIDMode="Static"
        style="display:block; width:0; height:0; opacity:0; border:0; padding:0; position:absolute; pointer-events:none;" />

    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {

            var animCards = document.querySelectorAll('[data-delay]');
            for (var i = 0; i < animCards.length; i++) {
                animCards[i].style.animationDelay = animCards[i].getAttribute('data-delay') + 'ms';
            }

            var carousels = [];
            var wrappers = document.querySelectorAll('.article-card-img-wrapper');
            for (var w = 0; w < wrappers.length; w++) {
                var slides = wrappers[w].querySelectorAll('.carousel-slide:not(.img-error)');
                if (slides.length > 1) {
                    carousels.push(wrappers[w]);
                }
            }

            function updateCardDotsFromWrapper(wrapper) {
                var dotsContainer = wrapper.querySelector('.card-carousel-dots');
                if (!dotsContainer) return;
                var valid = wrapper.querySelectorAll('.carousel-slide:not(.img-error)');
                var dots = dotsContainer.querySelectorAll('.card-carousel-dot');
                var validIdx = 0;
                for (var i = 0; i < valid.length; i++) {
                    if (dots[i]) {
                        if (valid[i].classList.contains('active')) {
                            dots[i].classList.add('active');
                        } else {
                            dots[i].classList.remove('active');
                        }
                    }
                }
            }

            if (carousels.length > 0) {
                setInterval(function () {
                    for (var c = 0; c < carousels.length; c++) {
                        var wrapper = carousels[c];
                        var valid = [];
                        var allSlides = wrapper.querySelectorAll('.carousel-slide');
                        for (var s = 0; s < allSlides.length; s++) {
                            if (!allSlides[s].classList.contains('img-error')) {
                                valid.push(allSlides[s]);
                            }
                        }
                        if (valid.length <= 1) continue;

                        var active = wrapper.querySelector('.carousel-slide.active:not(.img-error)');
                        if (!active) { valid[0].classList.add('active'); continue; }

                        var idx = -1;
                        for (var v = 0; v < valid.length; v++) {
                            if (valid[v] === active) { idx = v; break; }
                        }
                        active.classList.remove('active');
                        valid[(idx + 1) % valid.length].classList.add('active');

                        updateCardDotsFromWrapper(wrapper);
                    }
                }, 3000);
            }

            var modalEl = document.getElementById('articleModal');
            if (!modalEl) return;

            var bsModal = new bootstrap.Modal(modalEl);
            var modalTimer = null;
            var mIdx = 0;
            var mUrls = [];

            function showModalImg() {
                var img = document.getElementById('modalImg');
                var def = document.getElementById('modalImgDefault');
                var dots = document.getElementById('modalDots');
                var thumbs = document.getElementById('modalThumbnails');

                if (mUrls.length > 0 && mIdx < mUrls.length) {
                    img.src = mUrls[mIdx];
                    img.style.display = 'block';
                    def.style.display = 'none';
                    img.onerror = function () {
                        this.style.display = 'none';
                        def.style.display = 'flex';
                    };
                } else {
                    img.style.display = 'none';
                    def.style.display = 'flex';
                }

                dots.innerHTML = '';
                if (mUrls.length > 1) {
                    for (var d = 0; d < mUrls.length; d++) {
                        var dot = document.createElement('span');
                        dot.className = 'carousel-dot' + (d === mIdx ? ' active' : '');
                        (function(idx) {
                            dot.addEventListener('click', function(e) {
                                e.stopPropagation();
                                mIdx = idx;
                                showModalImg();
                                startAutoplay();
                            });
                        })(d);
                        dots.appendChild(dot);
                    }
                }

                if (thumbs) {
                    var allThumbs = thumbs.querySelectorAll('.modal-thumb');
                    for (var t = 0; t < allThumbs.length; t++) {
                        if (t === mIdx)
                        {
                            allThumbs[t].classList.add('active');
                        }
                        else
                        {
                            allThumbs[t].classList.remove('active');
                        }
                    }
                }
            }

            function buildThumbnails() {
                var thumbs = document.getElementById('modalThumbnails');
                thumbs.innerHTML = '';
                if (mUrls.length <= 1) {
                    thumbs.style.display = 'none';
                    return;
                }
                thumbs.style.display = 'flex';
                for (var i = 0; i < mUrls.length; i++) {
                    var thumb = document.createElement('img');
                    thumb.src = mUrls[i];
                    thumb.className = 'modal-thumb' + (i === 0 ? ' active' : '');
                    thumb.alt = 'Imagen ' + (i + 1);
                    (function(idx) {
                        thumb.addEventListener('click', function(e) {
                            e.stopPropagation();
                            mIdx = idx;
                            showModalImg();
                            startAutoplay();
                        });
                    })(i);
                    thumb.onerror = function() { this.style.display = 'none'; };
                    thumbs.appendChild(thumb);
                }
            }

            function startAutoplay() {
                clearInterval(modalTimer);
                if (mUrls.length > 1) {
                    modalTimer = setInterval(function () {
                        mIdx = (mIdx + 1) % mUrls.length;
                        showModalImg();
                    }, 3500);
                }
            }

            document.getElementById('modalPrev').addEventListener('click', function (e) {
                e.stopPropagation();
                e.preventDefault();
                if (mUrls.length <= 1) return;
                mIdx = (mIdx - 1 + mUrls.length) % mUrls.length;
                showModalImg();
                startAutoplay();
            });

            document.getElementById('modalNext').addEventListener('click', function (e) {
                e.stopPropagation();
                e.preventDefault();
                if (mUrls.length <= 1) return;
                mIdx = (mIdx + 1) % mUrls.length;
                showModalImg();
                startAutoplay();
            });

            modalEl.addEventListener('hidden.bs.modal', function () {
                clearInterval(modalTimer);
            });

            var cards = document.querySelectorAll('.article-card');
            for (var k = 0; k < cards.length; k++) {
                (function (card) {
                    card.addEventListener('click', function (e) {
                        e.preventDefault();

                        var id = card.getAttribute('data-id');

                        document.getElementById('modalName').textContent = card.getAttribute('data-nombre') || 'Sin nombre';
                        document.getElementById('modalDesc').textContent = card.getAttribute('data-descripcion') || '';
                        document.getElementById('modalPrice').textContent = card.getAttribute('data-precio') || '0.00';

                        var brandEl = document.getElementById('modalBrand');
                        var brandVal = card.getAttribute('data-marca') || '';
                        brandEl.textContent = brandVal;
                        brandEl.style.display = brandVal ? 'block' : 'none';

                        var catEl = document.getElementById('modalCategory');
                        var catVal = card.getAttribute('data-categoria') || '';
                        catEl.textContent = catVal;
                        catEl.style.display = catVal ? 'inline-block' : 'none';

                        var skuEl = document.getElementById('modalSku');
                        var skuVal = card.getAttribute('data-codigo') || '';
                        skuEl.textContent = skuVal ? 'SKU: ' + skuVal : '';
                        skuEl.style.display = skuVal ? 'inline-block' : 'none';

                        document.getElementById('btnSeleccionar').setAttribute('data-article-id', id);

                        mUrls = articleImages[id] || [];
                        mIdx = 0;

                        var prevBtn = document.getElementById('modalPrev');
                        var nextBtn = document.getElementById('modalNext');
                        if (mUrls.length > 1) {
                            prevBtn.style.display = 'flex';
                            nextBtn.style.display = 'flex';
                        } else {
                            prevBtn.style.display = 'none';
                            nextBtn.style.display = 'none';
                        }

                        buildThumbnails();
                        showModalImg();
                        startAutoplay();
                        bsModal.show();
                    });
                })(cards[k]);
            }

            document.getElementById('btnSeleccionar').addEventListener('click', function (e) {
                e.stopPropagation();
                e.preventDefault();

                var articleId = this.getAttribute('data-article-id');
                console.log("Seleccionando artículo ID: " + articleId);
                if (articleId) {
                    var hiddenInput = document.getElementById('hfArticuloId');
                    var serverBtn = document.getElementById('btnSeleccionarServer');
                    if (hiddenInput && serverBtn) {
                        hiddenInput.value = articleId;
                        console.log("Haciendo click en el boton de servidor: " + serverBtn.id);
                        serverBtn.click();
                    } else {
                        console.error("No se encontraron los controles ocultos de servidor.");
                    }
                }
            });

        });
    </script>

</asp:Content>