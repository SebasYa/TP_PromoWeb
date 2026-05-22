using dominio;
using negocio;
using System;
using System.Collections.Generic;

namespace WebApplication1
{
    public partial class Exito : System.Web.UI.Page
    {
        public ParticipacionExitosa Resultado { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["voucher"] == null || Session["articuloSeleccionado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }

            try
            {
                Voucher voucher = Session["voucher"] as Voucher;
                int articuloId = int.Parse(Session["articuloSeleccionado"].ToString());

                ArticuloNegocio artNegocio = new ArticuloNegocio();
                List<Articulo> lista = artNegocio.listar();
                Articulo articulo = lista.Find(x => x.Id == articuloId);

                string imagenUrl = null;
                if (articulo != null)
                {
                    ImagenNegocio imgNegocio = new ImagenNegocio();
                    List<Imagen> imagenes = imgNegocio.listar(articuloId);
                    if (imagenes != null && imagenes.Count > 0)
                    {
                        imagenUrl = imagenes[0].ImagenUrl;
                    }
                }

                Resultado = new ParticipacionExitosa
                {
                    CodigoVoucher       = voucher.CodigoVoucher,
                    ClienteNombre       = Session["clienteNombre"] as string,
                    ArticuloSeleccionado = articulo,
                    ImagenUrl           = imagenUrl
                };

                Session.Remove("voucher");
                Session.Remove("articuloSeleccionado");
                Session.Remove("clienteNombre");
            }
            catch (Exception)
            {
                Response.Redirect("Inicio.aspx");
            }
        }
    }
}
