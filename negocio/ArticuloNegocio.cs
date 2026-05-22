using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class ArticuloNegocio
    {
        public List<Articulo> listar()
        {
			List<Articulo> lista = new List<Articulo>();
			AccesoDatos datos = new AccesoDatos();

			try
			{
				datos.setearConsulta("SELECT A.Id, Codigo, Nombre, A.Descripcion, IdMarca, IdCategoria, M.Descripcion Marca, C.Descripcion Categoria, Precio FROM ARTICULOS A, CATEGORIAS C, MARCAS M WHERE C.Id = A.IdCategoria AND M.Id = A.IdMarca");
				datos.ejecutarLectura();

				while (datos.Lector.Read())
				{
					Articulo aux = new Articulo();
					aux.Id = (int)datos.Lector["Id"];

                    if (!(datos.Lector["Codigo"] is DBNull))
                    {
                        aux.Codigo = (string)datos.Lector["Codigo"];
                    }
                    if (!(datos.Lector["Nombre"] is DBNull))
                    {
                        aux.Nombre = (string)datos.Lector["Nombre"];
                    }
                    if (!(datos.Lector["Descripcion"] is DBNull))
                    {
                        aux.Descripcion = (string)datos.Lector["Descripcion"];
                    }
                    if (!(datos.Lector["Precio"] is DBNull))
                    {
                        aux.Precio = (decimal)datos.Lector["Precio"];
                    }
                    // MARCA
					aux.Marca = new Marca();
                    if (!(datos.Lector["IdMarca"] is DBNull))
                    {
                        aux.Marca.Id = (int)datos.Lector["IdMarca"];
                    }
                    if (!(datos.Lector["Marca"] is DBNull))
                    {
                        aux.Marca.Descripcion = (string)datos.Lector["Marca"];
                    }
                    // CATEGORIA
                    aux.Categoria = new Categoria();
                    if (!(datos.Lector["IdCategoria"] is DBNull))
                    {
                        aux.Categoria.Id = (int)datos.Lector["IdCategoria"];
                    }
                    if (!(datos.Lector["Categoria"] is DBNull))
                    {
                        aux.Categoria.Descripcion = (string)datos.Lector["Categoria"];
                    }
                    // ---- 

					lista.Add(aux);

                }

				return lista;
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

        public int agregar(Articulo nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta(@"INSERT INTO ARTICULOS (Codigo, Nombre, Descripcion, IdMarca, IdCategoria, Precio)
                                       VALUES (@codigo, @nombre, @descripcion, @IdMarca, @IdCategoria, @Precio);
                                       SELECT SCOPE_IDENTITY();");

                datos.setearParametro("@codigo", nuevo.Codigo);
                datos.setearParametro("@nombre", nuevo.Nombre);
                datos.setearParametro("@descripcion", nuevo.Descripcion);
                datos.setearParametro("@IdMarca", nuevo.Marca.Id);
                datos.setearParametro("@IdCategoria", nuevo.Categoria.Id);
                datos.setearParametro("@precio", nuevo.Precio);

                return datos.ejecutarScalar();
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

        public void modificar(Articulo articulo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("UPDATE ARTICULOS SET Codigo = @codigo, Nombre = @nombre, Descripcion = @descripcion, IdMarca = @idMarca, IdCategoria = @idCategoria, Precio = @precio Where Id = @id");
                datos.setearParametro("@id", articulo.Id);
                datos.setearParametro("@codigo", articulo.Codigo);
                datos.setearParametro("@nombre", articulo.Nombre);
                datos.setearParametro("@descripcion", articulo.Descripcion);
                datos.setearParametro("@idMarca", articulo.Marca.Id);
                datos.setearParametro("@idCategoria", articulo.Categoria.Id);
                datos.setearParametro("@precio", articulo.Precio);

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
        public bool existeArticulosEnImagenes(int idArticulo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearConsulta("SELECT TOP 1 Id FROM IMAGENES WHERE IdArticulo = @id");
                datos.setearParametro("@id", idArticulo);

                datos.ejecutarLectura();

                return datos.Lector.Read();

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


        public void eliminar(int id)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("DELETE FROM ARTICULOS WHERE Id = @id");
                datos.setearParametro("@id", id);
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

        public List<Articulo> filtrarArticulo(string campo, string criterio, string filtro)
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                string consulta = "SELECT A.Id, Codigo, Nombre, A.Descripcion, A.IdMarca, A.IdCategoria,  Precio, M.Descripcion Marca, C.Descripcion Producto FROM ARTICULOS A, MARCAS M, CATEGORIAS C WHERE M.Id = A.IdMarca And C.Id = A.IdCategoria AND ";

                switch (campo)
                {
                    case "Precio":

                        switch (criterio)
                        {
                            case "Mayor a":
                                consulta += "Precio > " + filtro;
                                break;
                            case "Menor a":
                                consulta += "Precio < " + filtro;
                                break;
                            default:
                                consulta += "ROUND(Precio, 2, 1) = " + filtro;
                                break;
                        }
                        break;

                    case "Nombre":
                        switch (criterio)
                        {
                            case "Comienza con":
                                consulta += "Nombre like '" + filtro + "%'";
                                break;
                            case "Termina con":
                                consulta += "Nombre like '%" + filtro + "'";
                                break;
                            default:
                                consulta += "Nombre like '%" + filtro + "%'";
                                break;
                        }
                        break;

                    case "Descripción":
                        switch (criterio)
                        {
                            case "Comienza con":
                                consulta += $"A.Descripcion like '{filtro}%'";
                                break;
                            case "Termina con":
                                consulta += $"A.Descripcion like '%{filtro}'";
                                break;
                            default:
                                consulta += $"A.Descripcion like '%{filtro}%'";
                                break;
                        }
                        break;

                    case "Marca":
                        switch (criterio)
                        {
                            case "Comienza con":
                                consulta += $"M.Descripcion like '{filtro}%'";
                                break;
                            case "Termina con":
                                consulta += $"M.Descripcion like '%{filtro}'";
                                break;
                            default:
                                consulta += $"M.Descripcion like '%{filtro}%'";
                                break;
                        }
                        break;

                    case "Categoría":
                        switch (criterio)
                        {
                            case "Comienza con":
                                consulta += $"C.Descripcion like '{filtro}%'";
                                break;
                            case "Termina con":
                                consulta += $"C.Descripcion like '%{filtro}%'";
                                break;
                            default:
                                consulta += $"C.Descripcion like '%{filtro}%'";
                                break;
                        }
                        break;

                    default:
                        break;
                }

                datos.setearConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Articulo aux = new Articulo();
                    aux.Id = (int)datos.Lector["Id"];
                    aux.Codigo = (string)datos.Lector["Codigo"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.Precio = (decimal)datos.Lector["Precio"];

                    aux.Marca = new Marca();
                    aux.Marca.Id = (int)datos.Lector["IdMarca"];
                    aux.Marca.Descripcion = (string)datos.Lector["Marca"];
                    aux.Categoria = new Categoria();
                    aux.Categoria.Id = (int)datos.Lector["IdCategoria"];
                    aux.Categoria.Descripcion = (string)datos.Lector["Producto"];

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

    }
}
