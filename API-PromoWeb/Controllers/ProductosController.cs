using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using dominio;
using negocio;
using API_PromoWeb.Models;

namespace API_PromoWeb.Controllers
{
    public class ProductosController : ApiController
    {
        // GET: api/Productos
        public HttpResponseMessage Get()
        {
            try
            {
                ProductoNegocio negocio = new ProductoNegocio();
                var lista = negocio.Listar();
                if (lista == null || !lista.Any())
                {
                    return Request.CreateResponse(HttpStatusCode.OK, new List<Producto>());
                }

                return Request.CreateResponse(HttpStatusCode.OK, lista);
            }
            catch(Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, "Error al obtener productos: " + ex.Message);
            }
        }

        // GET: api/Productos/5
        public HttpResponseMessage Get(int id)
        {
            try
            {
                if (id <= 0)
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "Id inválido.");

                ProductoNegocio negocio = new ProductoNegocio();
                var producto = negocio.Listar(id);

                if (producto == null)
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Producto no encontrado.");
                }

                return Request.CreateResponse(HttpStatusCode.OK, producto);
            }
            catch(Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, "Error al obtener el producto: " + ex.Message);
            }
        }

        // POST: api/Productos
        public HttpResponseMessage Post([FromBody] ProductoDTO prod)
        {
            try
            {
                if (prod == null)
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "El producto enviado está vacío.");

                if (!ModelState.IsValid)
                    return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ModelState);

                MarcaNegocio marcaNegocio = new MarcaNegocio();
                CategoriaNegocio categoriaNegocio = new CategoriaNegocio();

                var marca = marcaNegocio.listar().Find(m => m.Id == prod.Marca);
                var categoria = categoriaNegocio.listar().Find(c => c.Id == prod.Categoria);

                if (marca == null)
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "La marca no existe.");

                if (categoria == null)
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "La categoría no existe.");

                Articulo nuevo = new Articulo
                {
                    Codigo = prod.Codigo,
                    Nombre = prod.Nombre,
                    Descripcion = prod.Descripcion,
                    Precio = prod.Precio,
                    Marca = marca,
                    Categoria = categoria
                };

                ArticuloNegocio negocio = new ArticuloNegocio();
                negocio.agregar(nuevo);

                return Request.CreateResponse(HttpStatusCode.Created, "Producto agregado correctamente.");
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, ex.Message);
            }
        }

        // PUT: api/Productos/5
        public HttpResponseMessage Put(int id, [FromBody] ProductoDTO prod)
        {
            try
            {
                if (prod == null)
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "El producto enviado está vacío.");

                if (!ModelState.IsValid)
                    return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ModelState);

                ProductoNegocio negocioP = new ProductoNegocio();
                var existente = negocioP.Listar(id);

                if (existente == null)
                    return Request.CreateResponse(HttpStatusCode.NotFound, "El producto no existe.");

                MarcaNegocio marcaNegocio = new MarcaNegocio();
                CategoriaNegocio categoriaNegocio = new CategoriaNegocio();

                var marca = marcaNegocio.listar().Find(m => m.Id == prod.Marca);
                var categoria = categoriaNegocio.listar().Find(c => c.Id == prod.Categoria);

                if (marca == null)
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "La marca no existe.");
                if (categoria == null)
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "La categoría no existe.");

                Articulo nuevo = new Articulo
                {
                    Id = id,
                    Codigo = prod.Codigo,
                    Nombre = prod.Nombre,
                    Descripcion = prod.Descripcion,
                    Precio = prod.Precio,
                    Marca = marca,
                    Categoria = categoria
                };

                ArticuloNegocio negocio = new ArticuloNegocio();
                negocio.modificar(nuevo);

                return Request.CreateResponse(HttpStatusCode.OK, "Producto modificado correctamente.");
            }
            catch(Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, "Error al modificar el producto: " + ex.Message);
            }
        }


        // DELETE: api/Productos/5
        public HttpResponseMessage Delete(int id)
        {
            try
            {
                ProductoNegocio negocioP = new ProductoNegocio();
                var existente = negocioP.Listar(id);

                if (existente == null)
                    return Request.CreateResponse(HttpStatusCode.NotFound, "El producto no existe.");

                ArticuloNegocio negocio = new ArticuloNegocio();
                negocio.eliminar(id);

                return Request.CreateResponse(HttpStatusCode.NoContent);
            }
            catch(Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, "Error al eliminar el producto: " + ex.Message);
            }
        }

    }
}
