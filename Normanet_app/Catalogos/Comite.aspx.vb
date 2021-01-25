Imports System.Drawing
Imports Telerik.Web.UI

Public Class Comite
    Inherits System.Web.UI.Page
    'Public Property list As List(Of Conexion_Normanet.ContextoAnce.C_Comites)
    'Public Property listTecnicos As List(Of Conexion_Normanet.ContextoAnce.C_ComitesTecnicos)

    'Dim Comites As Negocio_Normanet.Comites = New Negocio_Normanet.Comites

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (RadTreeView1.Nodes.Count < 1) Then
            'AddNodes()
        End If
    End Sub


    'Private Sub AddNodes()

    '    list = Comites.CTX_NormaNet.uspComites("GETCOMITES", Nothing, Nothing, Nothing).ToList()
    '    For Each item As Conexion_Normanet.ContextoAnce.C_Comites In list
    '        Dim Comite_node As New RadTreeNode()
    '        Comite_node.Text = item.Comite
    '        Comite_node.Value = item.IdComite
    '        Comite_node.LongDesc = "1"
    '        RadTreeView1.Nodes.Add(Comite_node)
    '    Next
    'End Sub




    Protected Sub btnCuentas_ButtonClick(sender As Object, e As Telerik.Web.UI.RadToolBarEventArgs) Handles btnCuentas.ButtonClick
        Menu(e.Item.Value)
    End Sub

    Private Sub Menu(btnValue As Integer)
        Select Case btnValue
            Case eBtnFormularios.Nuevo
                BotonesNuevo()
            Case eBtnFormularios.Editar
                AddWindow(Me.Page, "Test.aspx", "..:: Test ::.. - DemoMenuBaseMultiVentanas", 700, 550, False)
                ScriptManager.RegisterStartupScript(Me.Page, Page.GetType, Guid.NewGuid.ToString, "", True)
            Case eBtnFormularios.Guardar
                MsgJquery(UpdatePanel2, "Accion guardada correctamente", "..:: Borrame ::..")
            Case eBtnFormularios.Deshacer
                lblMensaje.Text = "�Estas seguro de eliminar los datos?"
                MsgJqueryConfirm(Me.Page, "pnlConfirm", "..:: Demo ::..", UpdatePanel3.ClientID)


        End Select
    End Sub

    Private Sub BotonesNuevo()
        Activar(btnCuentas.Items(eBtnFormularios.Guardar), btnCuentas.Items(eBtnFormularios.Deshacer))
        inactivar(btnCuentas.Items(eBtnFormularios.Nuevo), btnCuentas.Items(eBtnFormularios.Editar))
    End Sub

    Protected Sub RadTreeView1_NodeClick(sender As Object, e As RadTreeNodeEventArgs)
        'list = Comites.CTX_NormaNet.uspComites("GETCOMITES", Nothing, Nothing, Nothing).ToList()
        'Dim NIVEL As String
        'If (RadTreeView1.SelectedNode.LongDesc = "1") Then
        '    listTecnicos = Comites.CTX_NormaNet.Get_Comites_Tecnicos("GETTECNICOS", Convert.ToInt32(RadTreeView1.SelectedNode.Value), Nothing, Nothing).ToList()
        '    NIVEL = "2"
        'End If

        'Dim valuenode As Integer = Convert.ToInt32(RadTreeView1.SelectedValue)
        'Dim Comite_ As Conexion_Normanet.ContextoAnce.C_Comites = list.Where(Function(x) x.IdComite = valuenode).FirstOrDefault()
        'txtNombre.Text = Comite_.Comite
        'txtdescripcion.Text = Comite_.Alcance
        'txtobjetivo.Text = Comite_.Objetivo


        'For Each item As Conexion_Normanet.ContextoAnce.C_ComitesTecnicos In Comite_.C_ComitesTecnicos
        '    Dim Comite_node_nested As New RadTreeNode()
        '    Comite_node_nested.Text = item.IdComiteTecnico
        '    Comite_node_nested.Value = item.ComiteTecnico
        '    RadTreeView1.SelectedNode.Nodes.Add(Comite_node_nested)
        'Next


    End Sub
End Class