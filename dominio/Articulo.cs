using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Articulo
    {
        public int Id { get; set; }
        [DisplayName("SKU")]
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        [DisplayName("Descripción")]
        public string Descripcion { get; set; }
        public Marca Marca { get; set; }
        public Categoria Categoria { get; set; }
        public decimal Precio { get; set; }
        [DisplayName("Precio")] 

        public string PrecioMostrarFactorizado
        {
            get { return ((int)(Precio * (decimal)100) / (decimal)100).ToString("0.00"); }
        }
        public Articulo(){ }
        public Articulo(Articulo art)
        {
            if (art == null) return;
            Id = art.Id;
            Codigo = art.Codigo;
            Nombre = art.Nombre;
            Precio = art.Precio;
            Marca = new Marca
            {
                Id = art.Marca.Id,
                Descripcion = art.Marca.Descripcion
            };
            Categoria = new Categoria
            {
                Id = art.Categoria.Id,
                Descripcion = art.Categoria.Descripcion
            };
        }

        public bool EsIgual(Articulo _articulo)
        {
            if (Codigo != _articulo.Codigo) return false;
            if (Nombre != _articulo.Nombre) return false;
            if (Precio != _articulo.Precio) return false;
            if (Marca.Id != _articulo.Marca.Id) return false;
            if (Categoria.Id != _articulo.Categoria.Id) return false;

            return true;
        }
    }
}
    