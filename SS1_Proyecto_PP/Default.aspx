<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SS1_Proyecto_PP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



     <style type="text/css">
        * { margin: 0; padding: 0; }
        body { font: 16px Helvetica, Sans-Serif; line-height: 24px; background: url(imagenes/noise.jpg); }
        .clear { clear: both; }
        #page-wrap { width: 800px; margin: 40px auto 60px; }
        #pic { float: right; margin: -30px 0 0 0; }
        h1 { margin: 0 0 16px 0; padding: 0 0 16px 0; font-size: 42px; font-weight: bold; letter-spacing: -2px; border-bottom: 1px solid #999; }
        h2 { font-size: 20px; margin: 0 0 6px 0; position: relative; }
        h2 span { position: absolute; bottom: 0; right: 0; font-style: italic; font-family: Georgia, Serif; font-size: 16px; color: #999; font-weight: normal; }
        p { margin: 0 0 16px 0; }
        a { color: #999; text-decoration: none; border-bottom: 1px dotted #999; }
        a:hover { border-bottom-style: solid; color: black; }
        ul { margin: 0 0 32px 17px; }
        #objective { width: 500px; float: left; }
        #objective p { font-family: Georgia, Serif; font-style: italic; color: #666; }
        dt { font-style: italic; font-weight: bold; font-size: 18px; text-align: right; padding: 0 26px 0 0; width: 150px; float: left; height: 100px; border-right: 1px solid #999;  }
        dd { width: 600px; float: right; }
        dd.clear { float: none; margin: 0; height: 15px; }
     </style>


    <div id="page-wrap">
    
        <img src="imagenes/201313997.jpg" alt="Foto de 201313997" id="pic" width="230" height="300"//>
    
        <div id="contact-info" class="vcard">
        
            <!-- Microformats! -->
        
            <h1 class="fn">Perfil Profesional</h1>
        
            <p>
                <span>Luis Noe Martinez Rivera</span><br />
                Carne: <span>201313997</span><br />
                Email: <span>luis56009@gmail.com</span>
            </p>
        </div>
                
        <div id="objective">
            <p>
               Mensaje Personalizado .... 
            </p>
        </div>
        
        <div class="clear"></div>
        
        <dl>
            <dd class="clear"></dd>
            
            <dt>Otros Datos Personales</dt>
            <dd>
                <p><strong>Edad:</strong>23<br />
                   <strong>Telefono:</strong>5434-4433</p>
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Habilidades</dt>
            <dd><strong>Lengujaes de Programacion:</strong></dd>
            <dd>Java , C, C++ , C# , Php , SQL , Pascal , Basic, Python</dd>

            <dd><strong>Idiomas:</strong></dd>
            <dd>Español Latino</dd>
            <dd>Ingles</dd>
            <dd>Japones</dd>
            <dd class="clear"></dd>
            
            <dt>Experiencia</dt>
            <dd> <strong> Estudiante Universitario </strong></dd>
            <dd> Cursando el 7 Semestre - Ingenieria en Ciencias y Sistemas</dd>
            <dd> Universidad de San Carlos de Guatemala </dd>
            <dd> Facultad de Ingenieria</dd>
            <dd> Escuela de Sistemas</dd>
            
            <dd class="clear"></dd>
            
            <dt>Estudios</dt>
            <dd><strong>Institución Formadora:</strong></dd>
            <dd> Colegio Evangélico Jardín de las Rosas</dd>
            <dd> Liceo Javier Jornada Vespertina - Bachiller en Ciencias y Letras</dd>
            <dd> Fecha 2008-2012</dd>                        
                       
            <dd class="clear"></dd>
            
            <dt>Logros</dt>
            <dd> Diplomado de Didactica de la Matematica</dd>   
            <dd> Fecha 2017 </dd>
            
            <dd class="clear"></dd>

            <dt>Repositorio en Linea</dt>
            <dd>Available on request</dd>
            
            <dd class="clear"></dd>

            <dt>Recomendacion Nueva</dt>
            <dd><strong>Nombre:</strong></dd>
            <dd>
                <asp:TextBox ID="NombreTxt" runat="server" Width="400px" Height="30px"></asp:TextBox>
            </dd>
            <dd><strong>Recomendacion</strong></dd>
            <dd>
                <asp:TextBox ID="RecomendacionTxt" runat="server" TextMode="MultiLine" Width="400px" Height="200px"></asp:TextBox>
            </dd>
            <dd>
                <asp:Button ID="Button1" runat="server" Text="Agregar" Width="91px" Height="32px" OnClick="Button1_Click" />
            </dd>
            
            <dd class="clear"></dd>

            <dt>Recomendacion</dt>
            <dd>

                <asp:GridView ID="TablaRecomendacion" runat="server" Width="400px">
                    <AlternatingRowStyle BackColor="#CCCCCC" BorderColor="#000099" />
                </asp:GridView>

            </dd>
            <dd class="clear"></dd>

        </dl>
        
        <div class="clear"></div>
    
    </div>

</asp:Content>
