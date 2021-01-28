Imports System.Web.Services

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
        Select Case (btnValue)
            Case eBtnFormularios.Nuevo

                BotonesNuevo()
            Case eBtnFormularios.Editar
                If IdSector.Value Is String.Empty Then
                    MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
                Else
                    Activar(btnCuentas.Items(eBtnFormularios.Editar), btnCuentas.Items(eBtnFormularios.Deshacer))
                    inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Guardar))
                End If

            Case eBtnFormularios.Guardar
                If IdSector.Value = "0" Then
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
        Activar(btnCuentas.Items(2), btnCuentas.Items(3))
        inactivar(btnCuentas.Items(0), btnCuentas.Items(1), btnCuentas.Items(4))
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
        If IdSector.Value Is String.Empty Then
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
        If IdSector.Value Is String.Empty Then
            MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
        Else
            Dim Sector = New Normanet_Datos.AnceSystem.clssSectores
            Sector.IdSector = IdSector.Value
            Sector.Sector = txtSector.Text
            Sector.Bandera = "u1"
            Sector.Actualizar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If
    End Sub

    Private Sub InactivarSector()
        If IdSector.Value Is String.Empty Then
            MsgJquery(UpdatePanel2, "Seleccione una opción", "..:: Borrame ::..")
        Else
            Dim Sector = New Normanet_Datos.AnceSystem.clssSectores
            Sector.IdSector = IdSector.Value
            Sector.Sector = txtSector.Text
            Sector.Bandera = "d1"
            Sector.Eliminar()
            MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
        End If

    End Sub

    Protected Sub rddSectores_ItemSelected(sender As Object, e As Telerik.Web.UI.DropDownListEventArgs)
        Dim idSeleccionado = rddSectores.SelectedValue()

        Dim SectorEntidad = New Normanet_Datos.AnceSystem.clssSectores
        SectorEntidad.Bandera = "s1"
        SectorEntidad.IdSector = idSeleccionado
        Dim Sectores = SectorEntidad.Listar()

        SectorEntidad.Activo = Sectores.Rows(0).Item("Activo")
        SectorEntidad.Sector = Sectores.Rows(0).Item("Sector")

        IdSector.Value = SectorEntidad.IdSector
        Sector.Value = SectorEntidad.Sector
        chkActivo.Checked = SectorEntidad.Activo



    End Sub
End Class