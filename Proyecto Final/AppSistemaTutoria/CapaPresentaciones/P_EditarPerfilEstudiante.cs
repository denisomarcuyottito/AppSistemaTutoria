﻿using System;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Windows.Forms;
using CapaEntidades;
using CapaNegocios;

namespace CapaPresentaciones
{
    public partial class P_EditarPerfilEstudiante : Form
    {
        readonly E_Estudiante ObjEntidad = new E_Estudiante();
        readonly N_Estudiante ObjNegocio = new N_Estudiante();

        public string Usuario = "";
        private string APaterno = "";
        private string AMaterno = "";
        private string Nombre = "";
        private string CodEscuelaP = "";
        private readonly string Key = "123asd"; //Llave de cifrado

        public P_EditarPerfilEstudiante()
        {
            InitializeComponent();
        }

        private void CargarDatosUsuario()
        {
            DataTable Datos = N_Estudiante.BuscarRegistros(Usuario);
            object[] Fila = Datos.Rows[0].ItemArray;

            byte[] Perfil = new byte[0];
            Perfil = E_InicioSesion.Perfil;
            MemoryStream MemoriaPerfil = new MemoryStream(Perfil);

            imgPerfil.Image = HacerImagenCircular(Bitmap.FromStream(MemoriaPerfil));
            txtCodigo.Text = Fila[2].ToString();
            APaterno = Fila[3].ToString();
            AMaterno = Fila[4].ToString();
            Nombre = Fila[5].ToString();
            txtEstudiante.Text = Fila[6].ToString();
            txtDireccion.Text = Fila[8].ToString();
            txtTelefono.Text = Fila[9].ToString();
            CodEscuelaP = Fila[10].ToString();
            txtEscuelaP.Text = Fila[11].ToString();
            txtPReferencia.Text = Fila[12].ToString();
            txtTReferencia.Text = Fila[13].ToString();
            string InfPersonalCifrada = Fila[14].ToString();
            //txtEFisico.Text = Fila[14].ToString();
            //txtEMental.Text = Fila[15].ToString();

            //Descifrar Informacion personal encriptada
            txtIPersonal.Text = E_Criptografia.DesencriptarRSA(InfPersonalCifrada, Key);
        }

        private void MensajeConfirmacion(string Mensaje)
        {
            MessageBox.Show(Mensaje, "Sistema de Tutoría", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void MensajeError(string Mensaje)
        {
            MessageBox.Show(Mensaje, "Sistema de Tutoría", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        public Image HacerImagenCircular(Image img)
        {
            int x = img.Width / 2;
            int y = img.Height / 2;
            int r = Math.Min(x, y);

            Bitmap tmp = null;
            tmp = new Bitmap(2 * r, 2 * r);
            using (Graphics g = Graphics.FromImage(tmp))
            {
                g.SmoothingMode = SmoothingMode.AntiAlias;
                g.TranslateTransform(tmp.Width / 2, tmp.Height / 2);
                GraphicsPath gp = new GraphicsPath();
                gp.AddEllipse(0 - r, 0 - r, 2 * r, 2 * r);
                Region rg = new Region(gp);
                g.SetClip(rg, CombineMode.Replace);
                Bitmap bmp = new Bitmap(img);
                g.DrawImage(bmp, new Rectangle(-r, -r, 2 * r, 2 * r), new Rectangle(x - r, y - r, 2 * r, 2 * r), GraphicsUnit.Pixel);
            }
            return tmp;
        }

        private void btnSubirPerfil_Click(object sender, EventArgs e)
        {
            try
            {
                OpenFileDialog Archivo = new OpenFileDialog();
                Archivo.Filter = "Archivos de Imagen | *.jpg; *.jpeg; *.png; *.gif; *.tif";
                Archivo.Title = "Subir Perfil";

                if (Archivo.ShowDialog() == DialogResult.OK)
                {
                    imgPerfil.Image = HacerImagenCircular(Image.FromFile(Archivo.FileName));
                }
            }
            catch (Exception)
            {
                MensajeError("Error al subir perfil");
            }
        }

        private void btnRestablecerPerfil_Click(object sender, EventArgs e)
        {
            imgPerfil.Image = Image.FromFile("C:/Users/Jeremylazm/Desktop/Documentos/AppSistemaTutoria/CapaPresentaciones/Iconos/Perfil Estudiante.png");
        }

        private void P_EditarPerfilEstudiante_Load(object sender, EventArgs e)
        {
            CargarDatosUsuario();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            DialogResult Opcion;
            Opcion = MessageBox.Show("¿Realmente desea editar el registro?", "Sistema de Tutoría", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (Opcion == DialogResult.OK)
            {
                byte[] Perfil = new byte[0];
                using (MemoryStream MemoriaPerfil = new MemoryStream())
                {
                    imgPerfil.Image.Save(MemoriaPerfil, ImageFormat.Bmp);
                    Perfil = MemoriaPerfil.ToArray();
                }
                E_InicioSesion.Perfil = Perfil;
                ObjEntidad.Perfil = Perfil;
                ObjEntidad.CodEstudiante = txtCodigo.Text;
                ObjEntidad.APaterno = APaterno;
                ObjEntidad.AMaterno = AMaterno;
                ObjEntidad.Nombre = Nombre;
                ObjEntidad.Email = txtCodigo.Text + "@unsaac.edu.pe";
                ObjEntidad.Direccion = txtDireccion.Text.ToUpper();
                ObjEntidad.Telefono = txtTelefono.Text;
                ObjEntidad.CodEscuelaP = CodEscuelaP;
                ObjEntidad.PersonaReferencia = txtPReferencia.Text.ToUpper();
                ObjEntidad.TelefonoReferencia = txtTReferencia.Text;
                //Guardar Informacion personal cifrada
                ObjEntidad.InformacionPersonal = E_Criptografia.EncriptarRSA(txtIPersonal.Text, Key);
                //ObjEntidad.EstadoFisico = txtEFisico.Text.ToUpper();
                //ObjEntidad.EstadoMental = txtEMental.Text.ToUpper();

                ObjNegocio.EditarRegistros(ObjEntidad);
                MensajeConfirmacion("Registro editado exitosamente");
            }
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}