using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CatalogoArticulos : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos { get; set; }
        public List<Imagen> listaImagenes { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["voucher"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }
            Voucher voucher = Session["voucher"] as Voucher;
            lblVoucher.Text = voucher.CodigoVoucher;

            try
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                listaArticulos = negocio.listar();

                ImagenNegocio imagenNegocio = new ImagenNegocio();
                listaImagenes = imagenNegocio.listar();
            }
            catch (Exception ex)
            {
                Session["error"] = ex.ToString();
            }
        }

        public List<Imagen> obtenerImagenes(int idArticulo)
        {
            List<Imagen> filtradas = new List<Imagen>();
            if (listaImagenes != null)
            {
                foreach (var img in listaImagenes)
                {
                    if (img.IdArticulo == idArticulo)
                    {
                        filtradas.Add(img);
                    }
                }
            }
            return filtradas;
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            string articuloId = hfArticuloId.Value;
            if (!string.IsNullOrEmpty(articuloId))
            {
                Session["articuloSeleccionado"] = articuloId;
                Response.Redirect("Registro.aspx");
            }
        }
    }
}