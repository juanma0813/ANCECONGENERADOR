Public Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        CuentaRegresivaSesion(Me.Page, Session)
    End Sub

    Protected Sub rbbRibbon_ButtonClick(sender As Object, e As Telerik.Web.UI.RibbonBarButtonClickEventArgs) Handles rbbRibbon.ButtonClick
        Menu(e.Button.Value)
    End Sub

    Private Sub Menu(btnValue As Integer)
        Select Case btnValue
            Case eBtnPrincipal.Comite
                OpenWindow("Catalogos/Comite.aspx", "..:: Comité ::..", 700, 370)
            Case eBtnPrincipal.Cargos
                OpenWindow("Catalogos/Cargos.aspx", "..::  Cargos ::..", 700, 325)
            Case eBtnPrincipal.Categorias
                OpenWindow("Catalogos/Categorias.aspx", "..:: Categorias ::..", 700, 130)
            Case eBtnPrincipal.Categorias_Revision_Editorial
                OpenWindow("Catalogos/CategoriaRevEditorial.aspx", "..:: Categorias de revisión editorial ::..", 700, 130)
            Case eBtnPrincipal.Directorio
                OpenWindow("Catalogos/Directorio.aspx", "..:: Directorio ::..", 930, 600)
            Case eBtnPrincipal.Nombramientos
                OpenWindow("Catalogos/Nombramientos.aspx", "..:: Nombramientos ::..", 1200, 500)
            Case eBtnPrincipal.Puntos_Revisión_Editoria
                OpenWindow("Catalogos/PuntosRevEditorial.aspx", "..:: Puntos de revisión editorial ::..", 700, 400)
            Case eBtnPrincipal.Remitentes
                OpenWindow("Catalogos/Remitente.aspx", "..:: Remitentes ::..", 700, 500)
            Case eBtnPrincipal.ReporteAsistencia
                OpenWindow("Catalogos/ReporteAsistencia.aspx", "..:: Reporte asistencia ::..", 700, 500)
            Case eBtnPrincipal.Representacion
                OpenWindow("Catalogos/Representacion.aspx", "..:: Representación ::..", 700, 280)
            Case eBtnPrincipal.Sectores
                OpenWindow("Catalogos/Sectores.aspx", "..:: Sectores ::..", 700, 200)
            Case eBtnPrincipal.TitularesSuplentes
                OpenWindow("Catalogos/TitularesSuplentes.aspx", "..:: Titulares y suplentes ::..", 700, 550)
            Case eBtnPrincipal.PNN
                OpenWindow("Procesos/pnn.aspx", "..:: Programa nacional de normalización ::..", 700, 380)
            Case eBtnPrincipal.PNNTemas
                OpenWindow("Procesos/PnnTemas.aspx", "..:: PNN Temas ::..", 900, 700)
            Case eBtnPrincipal.TraspasoTemasPlanes
                OpenWindow("Procesos/TraspasoTemaPlanes.aspx", "..:: Traspaso temas planes ::..", 700, 450)
            Case eBtnPrincipal.CatalogoNormas
                OpenWindow("Procesos/CatalogoNormas.aspx", "..:: Catálogos de normas ::..", 900, 700)
            Case eBtnPrincipal.Noticias
                OpenWindow("Procesos/Noticias.aspx", "..:: Noticias ::..", 900, 350)
            Case eBtnPrincipal.ProgramarSesiones
                OpenWindow("Procesos/ProgramarSesiones.aspx", "..:: Programación de sesiones periódicas ::..", 900, 700)
            Case eBtnPrincipal.ProgramarProximaSesiones
                OpenWindow("Procesos/ProgramarProximasSesiones.aspx", "..:: Programación de próximas sesiones ::..", 900, 700)
            Case eBtnPrincipal.AsignacionRevEditorial
                OpenWindow("Procesos/AsignacionRevEditorial.aspx", "..:: Asignación de revisión editorial ::..", 900, 350)
            Case eBtnPrincipal.RevisionEditorial
                OpenWindow("Procesos/RevisionEditorial.aspx", "..:: Revisión editorial ::..", 900, 590)
            Case eBtnPrincipal.AutorizarRevisionEditorial
                OpenWindow("Procesos/RevisionEditorial.aspx", "..:: Autorizar revisión editorial ::..", 900, 590)
            Case eBtnPrincipal.InspeccionPruebas
                OpenWindow("Procesos/InspeccionPruebas.aspx", "..:: Inspección y Pruebas ::..", 900, 370)
            Case eBtnPrincipal.ProcedimientoNormal
                OpenWindow("Procesos/ProcedimientoNormal.aspx", "..:: Procedimiento normal ::..", 900, 470)
            Case eBtnPrincipal.ResolucionComentarios
                OpenWindow("Procesos/ResolucionComentarios.aspx", "..:: Resolución de comentarios ::..", 900, 470)
            Case eBtnPrincipal.ProcedimientoAlternativo
                OpenWindow("Procesos/ProcedimientoAlternativo.aspx", "..:: Captura de comentarios Proc. alternativo ::..", 900, 470)
            Case eBtnPrincipal.ResolucionComentariosAlternativos
                OpenWindow("Procesos/ResolucionComentariosAlternativos.aspx", "..:: Captura de comentarios Proc. alternativo ::..", 900, 450)
            Case eBtnPrincipal.CerrarSesionesRealizadas
                OpenWindow("Procesos/CerrarSesionesRealizadas.aspx", "..:: Cerrar sesiones realizadas ::..", 900, 450)
            Case eBtnPrincipal.HistorialSesiones
                OpenWindow("Procesos/HistorialSesiones.aspx", "..:: Historial de sesiones ::..", 900, 720)
            Case eBtnPrincipal.GestionDocumentos
                OpenWindow("Procesos/GestionDocumentos.aspx", "..:: Gestión de documentos ::..", 900, 520)
            Case eBtnPrincipal.ConsultaComentarios
                OpenWindow("Consultas/Comentarios.aspx", "..:: Consulta de comentarios ::..", 900, 620)
            Case eBtnPrincipal.ConsultaFecha
                OpenWindow("Consultas/Fechas.aspx", "..:: Consulta de fechas ::..", 900, 620)
            Case eBtnPrincipal.ConsultaNormas
                OpenWindow("Consultas/Normas.aspx", "..:: Consulta de normas ::..", 900, 620)
            Case eBtnPrincipal.ConsultaSesiones
                OpenWindow("Consultas/Sesiones.aspx", "..:: Sesiones ::..", 900, 620)
            Case eBtnPrincipal.ConsultaTemas
                OpenWindow("Consultas/Temas.aspx", "..:: Consulta temas ::..", 1100, 620)
            Case eBtnPrincipal.PaginaWebIndex
                OpenWindow("PaginaWeb/PaginaIndex.aspx", "..:: Creador de index ::..", 900, 520)
            Case eBtnPrincipal.GeneradorMenu
                OpenWindow("PaginaWeb/GeneradorMenu.aspx", "..:: Generador de menú ::..", 900, 520)
            Case eBtnPrincipal.GestorPaginas
                OpenWindow("PaginaWeb/GestorPaginas.aspx", "..:: Gestor de páginas ::..", 900, 600)
            Case eBtnPrincipal.Administracion
                OpenWindow("Administracion/Administracion.aspx", "..:: Administración ::..", 900, 400)
            Case eBtnPrincipal.PropiedadesTema
                OpenWindow("Catalogos/PropiedadesTemas.aspx", "..:: Propiedades ::..", 900, 300)
            Case eBtnPrincipal.Etapa
                OpenWindow("Catalogos/Etapa.aspx", "..:: Etapas ::..", 900, 300)

        End Select
    End Sub

    Public Sub OpenWindow(sPagina As String, sTitulo As String, Width As Integer, Height As Integer)
        ScriptManager.RegisterClientScriptBlock(udpCBJquery, Me.GetType, Guid.NewGuid.ToString, "OpenWindow('"& sPagina &"','"& sTitulo &"',"& Width &","& Height &");", True)
    End Sub

End Class