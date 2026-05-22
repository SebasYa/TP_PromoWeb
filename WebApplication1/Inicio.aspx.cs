using Microsoft.Ajax.Utilities;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Inicio : System.Web.UI.Page
    {
        public bool vouchersAgotados { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                VoucherNegocio negocio = new VoucherNegocio();
                vouchersAgotados = !negocio.hayVouchersDisponibles();
            }
            catch (Exception)
            {
                vouchersAgotados = false;
            }
        }

        protected void btnVoucher_Click(object sender, EventArgs e)
        {
            // Reset error state
            lblError.Visible = false;
            lblError.Text = "";
            txtVoucher.CssClass = "form-control hero-input";

            string voucherCode = txtVoucher.Text.Trim();
            if (string.IsNullOrEmpty(voucherCode))
            {
                lblError.Text = "Debe ingresar un c\u00f3digo v\u00e1lido.";
                lblError.Visible = true;
                txtVoucher.CssClass = "form-control hero-input hero-input-error";
            }
            else
            {
                VoucherNegocio negocio = new VoucherNegocio();
                try
                {
                    var voucher = negocio.buscarVoucher(voucherCode);
                    if (voucher != null)
                    {
                        if (voucher.IdArticulo != null)
                        {
                            lblError.Text = "Este voucher ya fue canjeado.";
                            lblError.Visible = true;
                        }
                        else
                        {
                            Session["voucher"] = voucher;
                            Response.Redirect("CatalogoArticulos.aspx");
                        }
                    }
                    else
                    {
                        lblError.Text = "El c\u00f3digo ingresado es inexistente.";
                        lblError.Visible = true;
                        txtVoucher.CssClass = "form-control hero-input hero-input-error";
                    }

                }
                catch (Exception ex)
                {
                    lblError.Text = "Hubo un error en la conexión con la bbdd:<br />" + Server.HtmlEncode(ex.Message);
                    lblError.Visible = true;
                }

            }
        }
    }
}