using dominio;
using negocio;
using System;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace WebApplication1
{
    public partial class Registro : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["voucher"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }

            if (Session["articuloSeleccionado"] == null)
            {
                Response.Redirect("CatalogoArticulos.aspx");
            }
        }

        protected void btnVolverCatalogo_Click(object sender, EventArgs e)
        {
            Session.Remove("articuloSeleccionado");
            Response.Redirect("CatalogoArticulos.aspx");
        }

        protected void btnBuscarDNI_Click(object sender, EventArgs e)
        {
            string documento = txtDocumento.Text.Trim();
            if (string.IsNullOrEmpty(documento))
            {
                return;
            }

            pnlDatos.Visible = true;

            pnlStep1.CssClass = "registro-step done";
            pnlStep2.CssClass = "registro-step active";

            try
            {
                ClienteNegocio negocio = new ClienteNegocio();
                Cliente cliente = negocio.buscarClientePorDni(documento);

                if (cliente != null)
                {
                    txtNombre.Text = cliente.Nombre;
                    txtApellido.Text = cliente.Apellido;
                    txtEmail.Text = cliente.Email;
                    txtDireccion.Text = cliente.Direccion;
                    txtCiudad.Text = cliente.Ciudad;
                    txtCP.Text = cliente.CP.ToString();

                    lblClienteInfo.Text = "Cliente encontrado - datos precargados";
                    lblClienteInfo.Visible = true;

                    ViewState["clienteId"] = cliente.Id;
                }
                else
                {
                    lblClienteInfo.Text = "Cliente nuevo - completa tus datos";
                    lblClienteInfo.Visible = true;
                    ViewState["clienteId"] = null;
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "Error al buscar el documento:<br />"
                    + Server.HtmlEncode(ex.Message);
                lblError.Visible = true;
            }
        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;

            string documento = txtDocumento.Text.Trim();
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();
            string email = txtEmail.Text.Trim();
            string direccion = txtDireccion.Text.Trim();
            string ciudad = txtCiudad.Text.Trim();
            string cpTexto = txtCP.Text.Trim();

            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(apellido)
                || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(direccion)
                || string.IsNullOrEmpty(ciudad) || string.IsNullOrEmpty(cpTexto))
            {
                lblError.Text = "Todos los campos son obligatorios.";
                lblError.Visible = true;
                return;
            }

            if (!Regex.IsMatch(email, @"^[^@\s]+@[^\s@]+\.[^\s@]+$"))
            {
                lblError.Text = "El formato del email no es valido.";
                lblError.Visible = true;
                return;
            }

            int cp;
            if (!int.TryParse(cpTexto, out cp))
            {
                lblError.Text = "El codigo postal debe ser numerico.";
                lblError.Visible = true;
                return;
            }

            try
            {
                ClienteNegocio clienteNeg = new ClienteNegocio();
                int clienteId;

                if (ViewState["clienteId"] != null)
                {
                    clienteId = (int)ViewState["clienteId"];
                    Cliente cliente = new Cliente
                    {
                        Id = clienteId,
                        Documento = documento,
                        Nombre = nombre,
                        Apellido = apellido,
                        Email = email,
                        Direccion = direccion,
                        Ciudad = ciudad,
                        CP = cp
                    };
                    clienteNeg.actualizar(cliente);
                }
                else
                {
                    Cliente nuevo = new Cliente
                    {
                        Documento = documento,
                        Nombre = nombre,
                        Apellido = apellido,
                        Email = email,
                        Direccion = direccion,
                        Ciudad = ciudad,
                        CP = cp
                    };
                    clienteId = clienteNeg.agregar(nuevo);
                }

                Voucher voucher = Session["voucher"] as Voucher;
                int articuloId = int.Parse(Session["articuloSeleccionado"].ToString());

                VoucherNegocio voucherNeg = new VoucherNegocio();
                voucherNeg.registrarVoucherCliente(voucher.CodigoVoucher, articuloId, clienteId);

                Session["clienteNombre"] = nombre;

                Response.Redirect("Exito.aspx");
            }
            catch (Exception ex)
            {
                lblError.Text = "Hubo un error al registrar tu participacion:<br />"
                    + Server.HtmlEncode(ex.Message);
                lblError.Visible = true;
            }
        }
    }
}