using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;


namespace SS1_Proyecto_PP
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection cn2 = new SqlConnection("Server=tcp:ss1-servidor-proyecto.database.windows.net,1433;Initial Catalog=ss1-base-datos-proyecto;Persist Security Info=False;User ID=admin-201313997;Password=Pikachu2015;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            cn2.Open();
            SqlCommand cmd2 = new SqlCommand("select Nombre, Comentario  from Recomendacion",cn2);
            cmd2.ExecuteNonQuery();
            SqlDataAdapter ad2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            ad2.Fill(dt2);
            cn2.Close();

            TablaRecomendacion.DataSource = dt2;
            TablaRecomendacion.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection cn = new SqlConnection("Server=tcp:ss1-servidor-proyecto.database.windows.net,1433;Initial Catalog=ss1-base-datos-proyecto;Persist Security Info=False;User ID=admin-201313997;Password=Pikachu2015;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into Recomendacion(Nombre, Comentario) values( '" + NombreTxt.Text + "' , '"+ RecomendacionTxt.Text + "')",cn);
            cmd.ExecuteNonQuery();
            cn.Close();

            NombreTxt.Text = "";
            RecomendacionTxt.Text = "";

            Page_Load(sender,e);

        }
    }
}