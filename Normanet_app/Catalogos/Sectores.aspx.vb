Public Class Sectores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ConsultarSectores()
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
                If txtIdSector.Text Is String.Empty Then
                    MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
                Else
                    Activar(btnCuentas.Items(eBtnFormularios.Editar), btnCuentas.Items(eBtnFormularios.Deshacer))
                    inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Guardar))
                End If

            Case eBtnFormularios.Guardar
                If txtIdSector.Text = "0" Then
                    GuardarSector()
                Else
                    EditarSector()
                End If

            Case eBtnFormularios.Deshacer
                lblMensaje.Text = "�Estas seguro de eliminar los datos?"
                MsgJqueryConfirm(Me.Page, "pnlConfirm", "..:: Demo ::..", UpdatePanel3.ClientID)
            Case eBtnFormularios.Desactivar
                InactivarSector()

            Case eBtnFormularios.Salir
        End Select
    End Sub

    Private Sub BotonesNuevo()
        Activar(btnCuentas.Items(eBtnFormularios.Guardar), btnCuentas.Items(eBtnFormularios.Deshacer))
        inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Editar))
    End Sub

    Private Sub ConsultarSectores()

        Dim Sector = New Normanet_Datos.AnceSystem.clssSectores
        Sector.Bandera = "s2"
        Dim ListaSectores = Sector.Listar()

        rddSectores.Items.Clear()
        For Each row As DataRow In ListaSectores.Rows
            Dim item As New Telerik.Web.UI.DropDownListItem
            item.Value = row.Item("IdSector")
            item.Text = row.Item("Sector")
            rddSectores.Items.Add(item)
        Next
    End Sub

    Private Sub GuardarSector()
        If txtIdSector.Text Is String.Empty Then
            MsgJquery(UpdatePanel2, "Ingrese una categoría", "..:: Borrame ::..")
        Else
            Dim Sector = New Normanet_Datos.AnceSystem.clssSectores
            Sector.Sector = txtSector.Text
            Sector.Bandera = "i1"
            Sector.Insertar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If

    End Sub

    Private Sub EditarSector()
        If txtIdSector.Text Is String.Empty Then
            MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
        Else
            Dim Sector = New Normanet_Datos.AnceSystem.clssSectores
            Sector.IdSector = txtIdSector.Text
            Sector.Sector = txtSector.Text
            Sector.Bandera = "u1"
            Sector.Actualizar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If
    End Sub

    Private Sub InactivarSector()
        If txtIdSector.Text Is String.Empty Then
            MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
        Else
            Dim Sector = New Normanet_Datos.AnceSystem.clssSectores
            Sector.IdSector = txtIdSector.Text
            Sector.Sector = txtSector.Text
            Sector.Bandera = "d1"
            Sector.Eliminar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If

    End Sub

End Class