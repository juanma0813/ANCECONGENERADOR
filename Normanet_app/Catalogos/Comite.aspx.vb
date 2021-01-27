Imports System.Drawing
Imports Telerik.Web.UI

Public Class Comite
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

        End If

        DeshabilitarCampos()


        If (rtrvComites.Nodes.Count < 1) Then
            AddNodes()
        End If
        If cboResponsables.Items.Count < 1 Then
            consultarResponsables()
        End If

    End Sub







    Protected Sub btnCuentas_ButtonClick(sender As Object, e As Telerik.Web.UI.RadToolBarEventArgs) Handles btnCuentas.ButtonClick
        Menu(e.Item.Value)
    End Sub

    Private Sub Menu(btnValue As Integer)
        Select Case btnValue
            Case eBtnFormularios.Nuevo

                Limpiar(txtComite, txtComiteTecnico, txtSubcomite, txtGrupoTrabajo, txtdescripcion, txtobjetivo)
                'BotonesNuevo()
            Case eBtnFormularios.Editar
                AddWindow(Me.Page, "Test.aspx", "..:: Test ::.. - DemoMenuBaseMultiVentanas", 700, 550, False)
                ScriptManager.RegisterStartupScript(Me.Page, Page.GetType, Guid.NewGuid.ToString, "", True)
            Case eBtnFormularios.Guardar
                Guardar()
                'MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
            Case eBtnFormularios.Deshacer
                lblMensaje.Text = "�Estas seguro de eliminar los datos?"
                MsgJqueryConfirm(Me.Page, "pnlConfirm", "..:: Demo ::..", UpdatePanel3.ClientID)
        End Select
    End Sub

    Private Sub BotonesNuevo()
        Activar(btnCuentas.Items(eBtnFormularios.Guardar), btnCuentas.Items(eBtnFormularios.Deshacer))
        inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Editar))
    End Sub
    Private Sub AddNodes()
        Dim Comites = New Normanet_Datos.AnceSystem.clssComites()
        Comites.Bandera = "s2"
        Dim ListaComites = Comites.Listar()

        Dim ComitesTecnicos = New Normanet_Datos.AnceSystem.clssComitesTecnicos()
        ComitesTecnicos.Bandera = "s2"
        Dim ListaComitesTecnicos = ComitesTecnicos.Listar()

        Dim SubComites = New Normanet_Datos.AnceSystem.clssSubComites()
        SubComites.Bandera = "s2"
        Dim ListaSubComites = SubComites.Listar()

        Dim GruposTrabajo = New Normanet_Datos.AnceSystem.clssSubComites()
        GruposTrabajo.Bandera = "s2"
        Dim ListaGruposTrabajo = GruposTrabajo.Listar()

        Dim node As New RadTreeNode()
        node.Text = "Seleccione un comité"
        node.Value = 0

        rtrvComites.Nodes.Add(node)


        For i = 0 To (ListaComites.Rows.Count - 1)
            Dim Comite_node As New RadTreeNode()
            Comite_node.Text = ListaComites.Rows(i).Item("Comite")
            Comite_node.Value = ListaComites.Rows(i).Item("IdComite")
            Comite_node.LongDesc = "1"
            rtrvComites.Nodes(0).Nodes.Add(Comite_node)
        Next

        For Each item As RadTreeNode In rtrvComites.Nodes(0).Nodes
            For j = 0 To (ListaComitesTecnicos.Rows.Count - 1)

                Dim ComiteTecnico_node As New RadTreeNode()
                ComiteTecnico_node.Text = ListaComitesTecnicos.Rows(j).Item("ComiteTecnico")
                ComiteTecnico_node.Value = ListaComitesTecnicos.Rows(j).Item("IdComiteTecnico")
                ComiteTecnico_node.LongDesc = "2"
                Dim idComite = ListaComitesTecnicos.Rows(j).Item("IdComite")
                If idComite = item.Value Then
                    item.Nodes.Add(ComiteTecnico_node)
                End If
            Next
        Next

        For Each item As RadTreeNode In rtrvComites.Nodes(0).Nodes
            For Each item2 As RadTreeNode In item.Nodes
                For j = 0 To (ListaSubComites.Rows.Count - 1)
                    Dim SubComite_node As New RadTreeNode()
                    SubComite_node.Text = ListaSubComites.Rows(j).Item("SubComite")
                    SubComite_node.Value = ListaSubComites.Rows(j).Item("IdSubComite")
                    SubComite_node.LongDesc = "3"
                    Dim idComiteTecnico = ListaSubComites.Rows(j).Item("IdComiteTecnico")
                    If idComiteTecnico = item2.Value Then
                        item2.Nodes.Add(SubComite_node)
                    End If
                Next
            Next
        Next


    End Sub

    Private Sub Guardar()

        If rtrvComites.SelectedNode.Level = 0 Then
            Dim Comite = New Normanet_Datos.AnceSystem.clssComites()
            Comite.Comite = txtComite.Text
            Comite.IdUsuarioResponsable = cboResponsables.SelectedValue
            Comite.Objetivo = txtobjetivo.Text
            Comite.Descripcion = txtdescripcion.Text
            Comite.Bandera = "i1"
            Comite.Insertar()
        ElseIf rtrvComites.SelectedNode.Level = 1 Then
            Dim ComiteTecnico = New Normanet_Datos.AnceSystem.clssComitesTecnicos()
            ComiteTecnico.ComiteTecnico = txtComiteTecnico.Text
            ComiteTecnico.IdComite = rtrvComites.SelectedValue
            ComiteTecnico.IdUsuarioResponsable = cboResponsables.SelectedValue
            ComiteTecnico.Objetivo = txtobjetivo.Text
            ComiteTecnico.Descripcion = txtdescripcion.Text
            ComiteTecnico.Bandera = "i1"
            ComiteTecnico.Insertar()

            ' Revisar como meter el grupo de trabajo
            If txtGrupoTrabajo.Text = String.Empty Then
                Dim Grupo = New Normanet_Datos.AnceSystem.clssGruposTrabajo()
                Grupo.IdComite = rtrvComites.SelectedValue
                Grupo.IdComiteTecnico = Nothing
                Grupo.IdSubComite = Nothing
                Grupo.IdUsuarioResponsable = cboResponsables.SelectedValue
                Grupo.GrupoTrabajo = txtGrupoTrabajo.Text
                Grupo.Objetivo = txtobjetivo.Text
                Grupo.Descripcion = txtdescripcion.Text
                Grupo.Bandera = "i1"
                Grupo.Insertar()
            End If
        ElseIf rtrvComites.SelectedNode.Level = 2 Then
            Dim SubComite = New Normanet_Datos.AnceSystem.clssSubComites()
            SubComite.IdComiteTecnico = rtrvComites.SelectedValue
            SubComite.SubComite = txtSubcomite.Text
            SubComite.IdUsuarioResponsable = cboResponsables.SelectedValue
            SubComite.Objetivo = txtobjetivo.Text
            SubComite.Descripcion = txtdescripcion.Text
            SubComite.Bandera = "i1"
            SubComite.Insertar()
            ' Revisar como meter el grupo de trabajo
            If txtGrupoTrabajo.Text = String.Empty Then
                Dim Grupo = New Normanet_Datos.AnceSystem.clssGruposTrabajo()
                Grupo.IdComite = rtrvComites.SelectedNode.ParentNode.Value
                Grupo.IdComiteTecnico = rtrvComites.SelectedValue
                Grupo.IdSubComite = Nothing
                Grupo.IdUsuarioResponsable = cboResponsables.SelectedValue
                Grupo.GrupoTrabajo = txtGrupoTrabajo.Text
                Grupo.Objetivo = txtobjetivo.Text
                Grupo.Descripcion = txtdescripcion.Text
                Grupo.Bandera = "i1"
                Grupo.Insertar()
            End If

        ElseIf rtrvComites.SelectedNode.Level = 3 Then
            ' Revisar como meter el grupo de trabajo
            If txtGrupoTrabajo.Text <> String.Empty Then
                Dim Grupo = New Normanet_Datos.AnceSystem.clssGruposTrabajo()


                Grupo.IdSubComite = rtrvComites.SelectedValue
                Grupo.IdComiteTecnico = rtrvComites.SelectedNode.ParentNode.Value
                Grupo.IdComite = rtrvComites.SelectedNode.ParentNode.ParentNode.Value

                Grupo.IdUsuarioResponsable = cboResponsables.SelectedValue
                Grupo.GrupoTrabajo = txtGrupoTrabajo.Text
                Grupo.Objetivo = txtobjetivo.Text
                Grupo.Descripcion = txtdescripcion.Text
                Grupo.Bandera = "i1"
                Grupo.Insertar()
            End If
        End If
        MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
    End Sub

    Private Sub LimpiarFormulario()
        txtComite.Text = ""
        txtComiteTecnico.Text = ""
        txtSubcomite.Text = ""
        txtGrupoTrabajo.Text = ""
        txtdescripcion.Text = ""
        txtobjetivo.Text = ""
        chkVisible.Checked = False
    End Sub

    Protected Sub rtrvComites_NodeClick(sender As Object, e As RadTreeNodeEventArgs)

        LimpiarFormulario()
        If e.Node.Level = 0 Then
            LimpiarFormulario()
        ElseIf e.Node.Level = 1 Then
            consultarComite(e.Node.Value)
        ElseIf e.Node.Level = 2 Then
            consultarComiteTecnico(e.Node.Value)
        ElseIf e.Node.Level = 3 Then
            consultarSubComite(e.Node.Value)
        ElseIf e.Node.Level = 4 Then
            consultarGrupoTrabajo(e.Node.Value)
        End If

    End Sub

    Protected Sub consultarComite(ByVal idComite As Integer)
        Dim Comite = New Normanet_Datos.AnceSystem.clssComites()
        Comite.IdComite = idComite
        Comite.Bandera = "s1"

        Dim Respuesta = Comite.Listar()

        txtComite.Text = Respuesta.Rows(0).Item("Comite")
        txtdescripcion.Text = Respuesta.Rows(0).Item("Descripcion")
        txtobjetivo.Text = Respuesta.Rows(0).Item("Objetivo")
        cboResponsables.SelectedValue = Respuesta.Rows(0).Item("IdUsuarioResponsable")
        chkVisible.Checked = Respuesta.Rows(0).Item("Activo")

    End Sub

    Protected Sub consultarComiteTecnico(ByVal idComiteTecnico As Integer)
        Dim ComiteTecnico = New Normanet_Datos.AnceSystem.clssComitesTecnicos()
        ComiteTecnico.IdComiteTecnico = idComiteTecnico
        ComiteTecnico.Bandera = "s1"

        Dim Respuesta = ComiteTecnico.Listar()

        txtComite.Text = Respuesta.Rows(0).Item("Comite")
        txtComiteTecnico.Text = Respuesta.Rows(0).Item("ComiteTecnico")
        txtdescripcion.Text = If(Respuesta.Rows(0).Item("Descripcion") Is Nothing, "", Respuesta.Rows(0).Item("Descripcion"))
        txtobjetivo.Text = Respuesta.Rows(0).Item("Objetivo")
        cboResponsables.SelectedValue = Respuesta.Rows(0).Item("IdUsuarioResponsable")
        chkVisible.Checked = Respuesta.Rows(0).Item("Activo")

    End Sub

    Protected Sub consultarSubComite(ByVal idSubComite As Integer)
        Dim SubComite = New Normanet_Datos.AnceSystem.clssSubComites()
        SubComite.IdSubComite = idSubComite
        SubComite.Bandera = "s1"

        Dim Respuesta = SubComite.Listar()

        txtComite.Text = Respuesta.Rows(0).Item("Comite")
        txtComiteTecnico.Text = Respuesta.Rows(0).Item("ComiteTecnico")
        txtSubcomite.Text = Respuesta.Rows(0).Item("SubComite")
        txtdescripcion.Text = Respuesta.Rows(0).Item("Descripcion")
        txtobjetivo.Text = Respuesta.Rows(0).Item("Objetivo")
        cboResponsables.SelectedValue = Respuesta.Rows(0).Item("IdUsuarioResponsable")
        chkVisible.Checked = Respuesta.Rows(0).Item("Activo")

    End Sub

    Protected Sub consultarGrupoTrabajo(ByVal idGrupoTrabajo As Integer)
        Dim GrupoTrabajo = New Normanet_Datos.AnceSystem.clssGruposTrabajo()
        GrupoTrabajo.IdGrupoTrabajo = idGrupoTrabajo
        GrupoTrabajo.Bandera = "s1"

        Dim Respuesta = GrupoTrabajo.Listar()

        txtComite.Text = Respuesta.Rows(0).Item("Comite")
        txtComiteTecnico.Text = Respuesta.Rows(0).Item("ComiteTecnico")
        txtSubcomite.Text = Respuesta.Rows(0).Item("SubComite")
        txtGrupoTrabajo.Text = Respuesta.Rows(0).Item("GrupoTrabajo")
        txtdescripcion.Text = Respuesta.Rows(0).Item("Descripcion")
        txtobjetivo.Text = Respuesta.Rows(0).Item("Objetivo")
        cboResponsables.SelectedValue = Respuesta.Rows(0).Item("IdUsuarioResponsable")
        chkVisible.Checked = Respuesta.Rows(0).Item("Activo")

    End Sub

    Protected Sub DeshabilitarCampos()
        txtComite.Enabled = False
        txtComiteTecnico.Enabled = False
        txtSubcomite.Enabled = False
        txtGrupoTrabajo.Enabled = False
        txtdescripcion.Enabled = False
        txtobjetivo.Enabled = False
        cboResponsables.Enabled = False
        cboResponsables.Enabled = False
        chkVisible.Enabled = False
    End Sub

    Protected Sub consultarResponsables()
        Dim Responsables = New Normanet_Datos.AnceSystem.clssuvwEmpleados()
        Responsables.Bandera = "s1"

        Dim Respuesta = Responsables.Listar()

        cboResponsables.Items.Clear()

        'Dim item As New ListItem()
        'item.Value = 0
        'item.Text = "Seleccione una opción"
        'cboResponsables.Items.Add(item)


        For Each row As DataRow In Respuesta.Rows
            Dim item As New ListItem()
            item.Value = row.Item("IdUsuario")
            item.Text = row.Item("Nombre")
            cboResponsables.Items.Add(item)

        Next



    End Sub
End Class