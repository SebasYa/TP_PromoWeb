using dominio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace API_PromoWeb.Models
{
    public class ProductoDTO
    {
        [Required(ErrorMessage = "El código es requerido.")]
        [StringLength(50, ErrorMessage = "El código no puede superar los 50 caracteres.")]
        public string Codigo { get; set; }

        [Required(ErrorMessage = "El nombre es requerido.")]
        [StringLength(50, ErrorMessage = "El nombre no puede superar los 50 caracteres.")]
        public string Nombre { get; set; }

        [Required(ErrorMessage = "La descripción es requerida.")]
        [StringLength(150, ErrorMessage = "La descripción no puede superar los 150 caracteres.")]
        public string Descripcion { get; set; }

        [Required(ErrorMessage = "El precio es requerido.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "El precio debe ser mayor a 0.")]
        public decimal Precio { get; set; }

        [Required(ErrorMessage = "La marca es requerida.")]
        [Range(1, int.MaxValue, ErrorMessage = "Debe seleccionar una marca válida.")]
        public int Marca { get; set; }

        [Required(ErrorMessage = "La categoría es requerida.")]
        [Range(1, int.MaxValue, ErrorMessage = "Debe seleccionar una categoría válida.")]
        public int Categoria { get; set; }
    }
}