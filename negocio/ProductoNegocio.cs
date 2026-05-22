using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class ProductoNegocio
    {
        public List<Producto> Listar()
        {
            List<Producto> lista = new List<Producto>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(
                    "SELECT a.Id, a.Codigo, a.Nombre, a.Descripcion, a.Precio, " +
                    "m.Descripcion AS Marca, c.Descripcion AS Categoria " +
                    "FROM ARTICULOS a " +
                    "INNER JOIN MARCAS m ON a.IdMarca = m.Id " +
                    "INNER JOIN CATEGORIAS c ON a.IdCategoria = c.Id");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Producto prod = new Producto
                    {
                        Id = (int)datos.Lector["Id"],
                        Codigo = datos.Lector["Codigo"].ToString(),
                        Nombre = datos.Lector["Nombre"].ToString(),
                        Descripcion = datos.Lector["Descripcion"].ToString(),
                        Precio = (decimal)datos.Lector["Precio"],
                        Marca = datos.Lector["Marca"].ToString(),
                        Categoria = datos.Lector["Categoria"].ToString(),
                        Imagenes = new List<string>()
                    };

                    lista.Add(prod);
                }
                datos.cerrarConexion();

                datos = new AccesoDatos();
                datos.setearConsulta("SELECT IdArticulo, ImagenUrl FROM IMAGENES");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    int idArticulo = (int)datos.Lector["IdArticulo"];
                    string url = datos.Lector["ImagenUrl"].ToString();

                    Producto prod = lista.FirstOrDefault(p => p.Id == idArticulo);
                    if (prod != null)
                        prod.Imagenes.Add(url);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

            return lista;
        }


        public Producto Listar(int id)
        {
            AccesoDatos datos = new AccesoDatos();
            Producto prod = null;

            try
            {
                datos.setearConsulta(
                    "SELECT a.Id, a.Codigo, a.Nombre, a.Descripcion, a.Precio, " +
                    "m.Descripcion AS Marca, c.Descripcion AS Categoria " +
                    "FROM ARTICULOS a " +
                    "INNER JOIN MARCAS m ON a.IdMarca = m.Id " +
                    "INNER JOIN CATEGORIAS c ON a.IdCategoria = c.Id " +
                    "WHERE a.Id = @id");

                datos.setearParametro("@id", id);
                datos.ejecutarLectura();

                if (datos.Lector.Read())
                {
                    prod = new Producto
                    {
                        Id = (int)datos.Lector["Id"],
                        Codigo = datos.Lector["Codigo"].ToString(),
                        Nombre = datos.Lector["Nombre"].ToString(),
                        Descripcion = datos.Lector["Descripcion"].ToString(),
                        Precio = (decimal)datos.Lector["Precio"],
                        Marca = datos.Lector["Marca"].ToString(),
                        Categoria = datos.Lector["Categoria"].ToString(),
                        Imagenes = new List<string>()
                    };
                }

                datos.cerrarConexion();

                datos = new AccesoDatos();
                datos.setearConsulta("SELECT ImagenUrl FROM IMAGENES WHERE IdArticulo = @id");
                datos.setearParametro("@id", id);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    string url = datos.Lector["ImagenUrl"].ToString();
                    if (prod != null)
                        prod.Imagenes.Add(url);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

            return prod;
        }

    }
}
