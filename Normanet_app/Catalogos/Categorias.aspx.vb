Public Class Categorias
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ConsultarCategorias()
        If Not IsPostBack Then
            inactivar(btnCuentas.Items(eBtnFormularios.Editar), btnCuentas.Items(eBtnFormularios.Deshacer))

        End If

    End Sub

    Protected Sub btnCuentas_ButtonClick(sender As Object, e As Telerik.Web.UI.RadToolBarEventArgs) Handles btnCuentas.ButtonClick
        Menu(e.Item.Value)
    End Sub

    Private Sub Menu(btnValue As Integer)
        Select Case btnValue
            Case eBtnFormularios.Nuevo

                BotonesNuevo()
            Case eBtnFormularios.Editar
                If txtIdCategoria.Text Is String.Empty Then
                    MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
                Else
                    Activar(btnCuentas.Items(eBtnFormularios.Editar), btnCuentas.Items(eBtnFormularios.Deshacer))
                    inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Guardar))
                End If

            Case eBtnFormularios.Guardar
                If txtIdCategoria.Text = "0" Then
                    GuardarCategoria()
                Else
                    EditarCategoria()
                End If

            Case eBtnFormularios.Deshacer
                lblMensaje.Text = "�Estas seguro de eliminar los datos?"
                MsgJqueryConfirm(Me.Page, "pnlConfirm", "..:: Demo ::..", UpdatePanel3.ClientID)
            Case eBtnFormularios.Eliminar
                InactivarCategoria()
            Case eBtnFormularios.Salir
        End Select
    End Sub

    Private Sub BotonesNuevo()
        Activar(btnCuentas.Items(eBtnFormularios.Editar), btnCuentas.Items(eBtnFormularios.Deshacer))
        inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Guardar))
    End Sub

    Private Sub ConsultarCategorias()

        Dim Categoria = New Normanet_Datos.AnceSystem.clssCategorias
        Categoria.Bandera = "s2"
        Dim ListaCategorias = Categoria.Listar()

        rddCategorias.Items.Clear()
        For Each row As DataRow In ListaCategorias.Rows
            Dim item As New Telerik.Web.UI.DropDownListItem
            item.Value = row.Item("IdCategoria")
            item.Text = row.Item("Categoria")
            rddCategorias.Items.Add(item)
        Next
    End Sub

    Private Sub GuardarCategoria()
        If txtIdCategoria.Text Is String.Empty Then
            MsgJquery(UpdatePanel2, "Ingrese una categoría", "..:: Borrame ::..")
        Else
            Dim Categoria = New Normanet_Datos.AnceSystem.clssCategorias
            Categoria.Categoria = txtCategoria.Text
            Categoria.Bandera = "i1"
            Categoria.Insertar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If




    End Sub

    Private Sub EditarCategoria()
        If txtIdCategoria.Text Is String.Empty Then
            MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
        Else
            Dim Categoria = New Normanet_Datos.AnceSystem.clssCategorias
            Categoria.IdCategoria = txtIdCategoria.Text
            Categoria.Categoria = txtCategoria.Text
            Categoria.Bandera = "u1"
            Categoria.Actualizar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If
    End Sub

    Private Sub InactivarCategoria()
        If txtIdCategoria.Text Is String.Empty Then
            MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
        Else
            Dim Categoria = New Normanet_Datos.AnceSystem.clssCategorias
            Categoria.IdCategoria = txtIdCategoria.Text
            Categoria.Categoria = txtCategoria.Text
            Categoria.Bandera = "d1"
            Categoria.Eliminar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If

    End Sub

    Private Sub ActualizarPagina()
        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub

    'Protected Sub rddCategorias_ItemSelected(sender As Object, e As Telerik.Web.UI.DropDownListEventArgs)
    '    txtIdCategoria.Text = rddCategorias.SelectedValue()
    '    txtIdCategoria.Visible = False
    '    txtCategoria.Text = rddCategorias.SelectedText()
    'End Sub

    'Protected Sub cmdAceptar_Click(sender As Object, e As ImageClickEventArgs) Handles cmdAceptar.Click
    '    ScriptManager.RegisterStartupScript(Me.Page, Me.Page.GetType, Guid.NewGuid.ToString, "$('#pnlConfirm').dialog('close');", True)
    'End Sub

End Class