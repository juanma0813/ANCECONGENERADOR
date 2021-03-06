﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="Comite.aspx.vb" Inherits="Normanet_app.Comite" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="cphJs" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphCss" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAreaTrabajo" runat="server">
    <telerik:RadAjaxLoadingPanel ID="ralLoad" runat="server" SkinID="SkinManager"></telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManager ID="ramManajer" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="btnCuentas">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnCuentas" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>

    <telerik:RadAjaxPanel ID="rapContenedor" runat="server" Width="100%" LoadingPanelID="ralLoad">
        <!----------------------------------B O T O N E R A--------------------------------------------->
        <telerik:RadToolBar ID="btnCuentas" Runat="server" Height="32" Width="100%" SkinID="SkinManager" OnClientButtonClicking="clientButtonClicking" AutoPostBack="true">  
            <Items>
                <telerik:RadToolBarButton Enabled="true" Value="0" ImageUrl="../Imagenes/Botoneras/New.png"  Text="Nuevo" ToolTip ="Nuevo" />
                <telerik:RadToolBarButton Enabled="true" Value="2" ImageUrl="../Imagenes/Botoneras/Edit.png" Text="Editar" ToolTip="Editar"/>
                <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer" ToolTip="Deshacer"/>
                <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png" Text="Guardar" ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="6" ImageUrl="../Imagenes/Botoneras/inhabilitar.png" Text="Inactivar" ToolTip="Inactivar"/>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir" ToolTip="Salir"/>
                
                
            </Items>
        </telerik:RadToolBar>

        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>
            <table style="width: 100%; height:100px;" class="SinBorde">
                    <tr>
                    <td rowspan="9" style="width: 40%;">
                        <br />
                        <asp:TextBox ID="TextBox6" runat="server" Width="98%" placeholder="Buscar..." ></asp:TextBox>
                         <telerik:RadTreeView OnNodeClick="rtrvComites_NodeClick" RenderMode="Classic" ID="rtrvComites" runat="server"  Width="100%" Height="100%">
                
                        </telerik:RadTreeView>
                    </td>
                    
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel1" Text="Comité:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="txtComite" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel2" Text="Comité Técnico:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="txtComiteTecnico" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel3" Text="Subcomité:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="txtSubcomite" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel4" Text="Grupo de Trabajo:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="txtGrupoTrabajo" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel5" Text="Descripción:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="txtdescripcion" runat="server" Width="98%" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel6" Text="Objetivo:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="txtobjetivo" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th  style="width: 20%;">
                            <telerik:RadLabel ID="RadLabel7" Text="Responsable:" runat="server"></telerik:RadLabel>
                        </th>
                        <td style="width: 40%;">
                            <asp:DropDownList ID="cboResponsables"  Width="108%" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th  style="width: 20%;">
                            <telerik:RadLabel ID="RadLabel8" Text="Visible en el proceso:" runat="server"></telerik:RadLabel>
                        </th>
                        <td style="width: 40%;">
                            
                            <telerik:RadCheckBox ID="chkVisible" runat="server" Text=""></telerik:RadCheckBox>
                        </td>
                    </tr>
 

                </table>
        </div>
        <br />
        
        <!-- ------------------------------------F I N------------------------------------------------->
        <telerik:RadCodeBlock ID="block" runat="server">
             <script type="text/javascript">
                 function clientButtonClicking(sender, args) {
                     debugger
                     var toolBar = sender;
                     var button = args.get_item();


                     if (typeof (Page_ClientValidate) == 'function') { Page_ClientValidate(); }

                     switch (button.get_value()) {
                         case "0":
                             ActivarDesactivarCampos()
                             break;
                         //case "1":
                         //    if (!Page_IsValid) {
                         //        CallClientShow();
                         //    }
                         //    break;
                         case "3":
                             Deshacer()
                             break;
                     }
                 }

                 function ActivarDesactivarCampos() {
                     debugger
                     var tree = $find("<%= rtrvComites.ClientID %>");
                     if (tree.get_selectedNode() != null) {
                         var a = tree.get_selectedNode()
                         switch (a.get_level()) { 
                             case 0: // Nivel Seleccione una opcion
                                 $('#<%=txtComite.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtComite.ClientID %>').val("");
                                 $('#<%=txtComiteTecnico.ClientID %>').attr("disabled", "disabled");
                                 $('#<%=txtComiteTecnico.ClientID %>').val("");
                                 $('#<%=txtSubcomite.ClientID %>').attr("disabled", "disabled");
                                 $('#<%=txtSubcomite.ClientID %>').val("");
                                 $('#<%=txtGrupoTrabajo.ClientID %>').attr("disabled", "disabled");
                                 $('#<%=txtGrupoTrabajo.ClientID %>').val("");
                                 $('#<%=txtdescripcion.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtdescripcion.ClientID %>').val("");
                                 $('#<%=txtobjetivo.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtobjetivo.ClientID %>').val("");
                                 $('#<%=cboResponsables.ClientID %>').removeAttr("disabled");
                                 $('#<%=chkVisible.ClientID %>').removeAttr("disabled");
                                 break;

                             case 1: // Nivel Comite
                                 $('#<%=txtComite.ClientID %>').attr("disabled", "disabled")
                                 $('#<%=txtComiteTecnico.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtComiteTecnico.ClientID %>').val("");
                                 $('#<%=txtSubcomite.ClientID %>').attr("disabled", "disabled");
                                 $('#<%=txtSubcomite.ClientID %>').val("");
                                 $('#<%=txtGrupoTrabajo.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtGrupoTrabajo.ClientID %>').val("");
                                 $('#<%=txtdescripcion.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtdescripcion.ClientID %>').val("");
                                 $('#<%=txtobjetivo.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtobjetivo.ClientID %>').val("");
                                 $('#<%=cboResponsables.ClientID %>').removeAttr("disabled");
                                 $('#<%=chkVisible.ClientID %>').removeAttr("disabled");
                                 break;
                             case 2: // Nivel Comite tecnico
                                 $('#<%=txtComite.ClientID %>').attr("disabled", "disabled")
                                 $('#<%=txtComiteTecnico.ClientID %>').attr("disabled", "disabled");
                                 $('#<%=txtSubcomite.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtGrupoTrabajo.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtGrupoTrabajo.ClientID %>').val("");
                                 $('#<%=txtdescripcion.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtdescripcion.ClientID %>').val("");
                                 $('#<%=txtobjetivo.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtobjetivo.ClientID %>').val("");
                                 $('#<%=cboResponsables.ClientID %>').removeAttr("disabled");
                                 $('#<%=chkVisible.ClientID %>').removeAttr("disabled");
                                 break;
                             case 3: // Nivel Subcomite
                                 $('#<%=txtComite.ClientID %>').attr("disabled", "disabled")
                                 $('#<%=txtComiteTecnico.ClientID %>').attr("disabled", "disabled");
                                 $('#<%=txtSubcomite.ClientID %>').attr("disabled", "disabled");
                                 $('#<%=txtGrupoTrabajo.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtGrupoTrabajo.ClientID %>').val("");
                                 $('#<%=txtdescripcion.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtdescripcion.ClientID %>').val("");
                                 $('#<%=txtobjetivo.ClientID %>').removeAttr("disabled");
                                 $('#<%=txtobjetivo.ClientID %>').val("");
                                 $('#<%=cboResponsables.ClientID %>').removeAttr("disabled");
                                 $('#<%=chkVisible.ClientID %>').removeAttr("disabled");
                                 break;
                         }
                         //alert(a.get_parent().get_parent().get_value() );
                     }
                 }     

                 function Deshacer() {
                    $('#<%=txtComite.ClientID %>').removeAttr("disabled");
                    $('#<%=txtComite.ClientID %>').val("");
                     $('#<%=txtComiteTecnico.ClientID %>').attr("disabled", "disabled");
                    $('#<%=txtComiteTecnico.ClientID %>').val("");
                    $('#<%=txtSubcomite.ClientID %>').attr("disabled", "disabled");
                    $('#<%=txtSubcomite.ClientID %>').val("");
                    $('#<%=txtGrupoTrabajo.ClientID %>').attr("disabled", "disabled");
                    $('#<%=txtGrupoTrabajo.ClientID %>').val("");
                    $('#<%=txtdescripcion.ClientID %>').removeAttr("disabled");
                    $('#<%=txtdescripcion.ClientID %>').val("");
                    $('#<%=txtobjetivo.ClientID %>').removeAttr("disabled");
                    $('#<%=txtobjetivo.ClientID %>').val("");
                    $('#<%=cboResponsables.ClientID %>').removeAttr("disabled");
                    $('#<%=chkVisible.ClientID %>').removeAttr("disabled");

                 }

                 function CallClientShow() {
                     var notification = $find("<%=notCampos.ClientID%>");
                    notification.show();
                 }
             </script>
        </telerik:RadCodeBlock>
        <div id="Validadores">
        <%--      <asp:RequiredFieldValidator runat="server" ID="rfvNombre" ControlToValidate="txtNombre" ErrorMessage="Nombre" Display="None" ValidationGroup="PersonalInfoGroup" />
          <asp:RequiredFieldValidator runat="server" ID="rfvEmpresa" ControlToValidate="txtEmpresa" ErrorMessage="Empresa" Display="None" ValidationGroup="PersonalInfoGroup" />
            <asp:RequiredFieldValidator runat="server" ID="rfvCorreo" ControlToValidate="txtCorreo" ErrorMessage="Correo" Display="None" ValidationGroup="PersonalInfoGroup" />--%>
        </div>
        <telerik:RadNotification ID="notCampos" runat="server" Animation="Fade" ContentIcon="warning" EnableRoundedCorners="True" EnableShadow="True" Position="Center" SkinID="SkinManager" Title="Problemas con campos" TitleIcon="warning" Width="261px" AutoCloseDelay="6000">
            <ContentTemplate>
                <asp:ValidationSummary ID="vsCampos" runat="server" DisplayMode="BulletList" Font-Bold="true" ForeColor="#0066FF" HeaderText="<div style='text-align:center;'>El o los siguientes campo(s) son requeridos</div>" ValidationGroup="PersonalInfoGroup" />
            </ContentTemplate>
        </telerik:RadNotification>
        <br />
    </telerik:RadAjaxPanel>

    <div id="pnlConfirm" class="pnlConfirm" style="display: none;">
        <div class='wnContenedor' style="text-align: center;">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblMensaje" runat="server" Text="" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:ImageButton ID="cmdAceptar" runat="server" ImageUrl="~/Imagenes/Formularios/Check.png" ToolTip="Aceptar" />
                    <asp:ImageButton ID="cmdCancelar" runat="server" ImageUrl="~/Imagenes/Formularios/Cancel.png" ToolTip="Cancelar" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>  

</asp:Content>

