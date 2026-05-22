using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class VoucherNegocio
    {
        public Voucher buscarVoucher(string codigo)
        {
            AccesoDatos datos = new AccesoDatos();
            datos.setearConsulta("SELECT CodigoVoucher, IdCliente, FechaCanje, IdArticulo FROM Vouchers WHERE CodigoVoucher = @codigo");
            datos.setearParametro("@codigo", codigo);

            datos.ejecutarLectura();
            try
            {
                if (datos.Lector.Read())
                {
                    var nuevoVoucher = new Voucher();

                    nuevoVoucher.CodigoVoucher = datos.Lector["CodigoVoucher"] as string;

                    nuevoVoucher.IdCliente = datos.Lector["IdCliente"] != DBNull.Value
                        ? Convert.ToInt32(datos.Lector["IdCliente"])
                        : 0; 

                    nuevoVoucher.FechaCanje = datos.Lector["FechaCanje"] != DBNull.Value
                        ? Convert.ToDateTime(datos.Lector["FechaCanje"])
                        : DateTime.MinValue;

                    nuevoVoucher.IdArticulo = datos.Lector["IdArticulo"] != DBNull.Value
                        ? (int?)Convert.ToInt32(datos.Lector["IdArticulo"])
                        : null;

                    return nuevoVoucher;
                }
                return null;
            }
            catch (Exception)
            {
                throw; 
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        public void registrarVoucherCliente(string codigoVoucher, int idArticulo, int idCliente)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("UPDATE Vouchers SET IdArticulo = @idArt, IdCliente = @idCli, FechaCanje = GETDATE() WHERE CodigoVoucher = @codigo");
                datos.setearParametro("@codigo", codigoVoucher);
                datos.setearParametro("@idArt", idArticulo);
                datos.setearParametro("@idCli", idCliente);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        public bool hayVouchersDisponibles()
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT TOP(1) CodigoVoucher FROM Vouchers WHERE IdCliente IS NULL");
                datos.ejecutarLectura();
                return datos.Lector.Read();
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
