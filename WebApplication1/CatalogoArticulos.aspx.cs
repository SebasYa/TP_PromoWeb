using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CatalogoArticulos : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos = new List<Articulo>();
        public Dictionary<int, List<Imagen>> dictImagenes = new Dictionary<int, List<Imagen>>();

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

                // Cargar imagenes para cada articulo
                ImagenNegocio imagenNegocio = new ImagenNegocio();
                foreach (Articulo art in listaArticulos)
                {
                    try
                    {
                        List<Imagen> imagenes = imagenNegocio.listar(art.Id);
                        dictImagenes[art.Id] = imagenes;
                    }
                    catch
                    {
                        dictImagenes[art.Id] = new List<Imagen>();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            string jsonScript = "var articleImages = " + GetImagenesJson() + ";";
            ClientScript.RegisterStartupScript(this.GetType(), "articleImagesJson", jsonScript, true);
        }

        /// <summary>
        /// Serializa el diccionario de imagenes a JSON para uso en JavaScript.
        /// </summary>
        public string GetImagenesJson()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("{");
            bool first = true;
            foreach (var kvp in dictImagenes)
            {
                if (!first) sb.Append(",");
                first = false;
                sb.Append("\"").Append(kvp.Key).Append("\":[");
                for (int i = 0; i < kvp.Value.Count; i++)
                {
                    if (i > 0) sb.Append(",");
                    string url = (kvp.Value[i].ImagenUrl ?? "").Replace("\\", "\\\\").Replace("\"", "\\\"");
                    sb.Append("\"").Append(url).Append("\"");
                }
                sb.Append("]");
            }
            sb.Append("}");
            return sb.ToString();
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