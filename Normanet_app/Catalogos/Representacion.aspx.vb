Public Class Representacion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ConsultarRepresentaciones()
    End Sub

    Protected Sub btnCuentas_ButtonClick(sender As Object, e As Telerik.Web.UI.RadToolBarEventArgs) Handles btnCuentas.ButtonClick
        Menu(e.Item.Value)
    End Sub

    Private Sub Menu(btnValue As Integer)
        Select Case (btnValue)
            Case eBtnFormularios.Nuevo

                BotonesNuevo()
            Case eBtnFormularios.Editar
                If IdRepresentacion.Value Is String.Empty Then
                    MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
                Else
                    Activar(btnCuentas.Items(eBtnFormularios.Editar), btnCuentas.Items(eBtnFormularios.Deshacer))
                    inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Guardar))
                End If

            Case eBtnFormularios.Guardar
                If IdRepresentacion.Value = "0" Then
                    GuardarRepresentacion()
                Else
                    EditarRepresentacion()
                End If

            Case eBtnFormularios.Deshacer
                lblMensaje.Text = "�Estas seguro de eliminar los datos?"
                MsgJqueryConfirm(Me.Page, "pnlConfirm", "..:: Demo ::..", UpdatePanel3.ClientID)
            Case eBtnFormularios.Desactivar
                InactivarRepresentacion()

            Case eBtnFormularios.Salir
        End Select
    End Sub

    Private Sub BotonesNuevo()
        Activar(btnCuentas.Items(eBtnFormularios.Guardar), btnCuentas.Items(eBtnFormularios.Deshacer))
        inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Editar))
    End Sub

    Private Sub ConsultarRepresentaciones()

        Dim Representacion = New Normanet_Datos.AnceSystem.clssRepresentaciones
        Representacion.Bandera = "s2"
        Dim ListaRepresentaciones = Representacion.Listar()

        rddRepresentaciones.Items.Clear()
        For Each row As DataRow In ListaRepresentaciones.Rows
            Dim item As New Telerik.Web.UI.DropDownListItem
            item.Value = row.Item("IdRepresentacion")
            item.Text = row.Item("Representacion")
            rddRepresentaciones.Items.Add(item)
        Next
    End Sub

    Private Sub GuardarRepresentacion()
        If IdRepresentacion.Value Is String.Empty Then
            MsgJquery(UpdatePanel2, "Ingrese una categoría", "..:: Borrame ::..")
        Else
            Dim Representacion = New Normanet_Datos.AnceSystem.clssRepresentaciones
            Representacion.Representacion = txtRepresentacion.Text
            Representacion.Comite = chkComite.Checked
            Representacion.ComiteTecnico = chkComiteTecnico.Checked
            Representacion.Bandera = "i1"
            Representacion.Insertar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If

    End Sub

    Private Sub EditarRepresentacion()
        If IdRepresentacion.Value Is String.Empty Then
            MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
        Else
            Dim Representacion = New Normanet_Datos.AnceSystem.clssRepresentaciones
            Representacion.IdRepresentacion = IdRepresentacion.Value
            Representacion.Representacion = txtRepresentacion.Text
            Representacion.Comite = chkComite.Checked
            Representacion.ComiteTecnico = chkComiteTecnico.Checked
            Representacion.Bandera = "u1"
            Representacion.Actualizar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If
    End Sub

    Private Sub InactivarRepresentacion()
        If IdRepresentacion.Value Is String.Empty Then
            MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
        Else
            Dim Representacion = New Normanet_Datos.AnceSystem.clssRepresentaciones
            Representacion.IdRepresentacion = IdRepresentacion.Value
            Representacion.Representacion = txtRepresentacion.Text
            Representacion.Bandera = "d1"
            Representacion.Eliminar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If

    End Sub


    Protected Sub rddRepresentaciones_ItemSelected(sender As Object, e As Telerik.Web.UI.DropDownListEventArgs)
        Dim idSeleccionado = rddRepresentaciones.SelectedValue()

        Dim RepresentacionEntidad = New Normanet_Datos.AnceSystem.clssRepresentaciones
        RepresentacionEntidad.Bandera = "s1"
        RepresentacionEntidad.IdRepresentacion = idSeleccionado
        Dim Representaciones = RepresentacionEntidad.Listar()

        RepresentacionEntidad.Activo = Representaciones.Rows(0).Item("Activo")
        RepresentacionEntidad.Representacion = Representaciones.Rows(0).Item("Representacion")

        IdRepresentacion.Value = RepresentacionEntidad.IdRepresentacion
        Representacion.Value = RepresentacionEntidad.Representacion
        chkComite.Checked = RepresentacionEntidad.Comite
        chkComiteTecnico.Checked = RepresentacionEntidad.ComiteTecnico

    End Sub

    Protected Sub chkComite_Click(sender As Object, e As EventArgs)
        txtRepresentacion.Style.Remove("display")
        txtRepresentacion.Style.Add("display", "none")
    End Sub
End Class