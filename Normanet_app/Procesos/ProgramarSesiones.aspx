﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="ProgramarSesiones.aspx.vb" Inherits="Normanet_app.ProgramarSesiones" %>
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
        <telerik:RadToolBar ID="btnCuentas" Runat="server" Height="32" Width="100%" SkinID="SkinManager" OnClientButtonClicking="clientButtonClicking">  
            <Items>
                <telerik:RadToolBarButton Enabled="true" Value="0" ImageUrl="../Imagenes/Botoneras/New.png" Text="Nuevo" ToolTip ="Nuevo"/>
                <telerik:RadToolBarButton Enabled="true" Value="2" ImageUrl="../Imagenes/Botoneras/Edit.png" Text="Editar" ToolTip="Editar"/>
                <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer" ToolTip="Deshacer"/>
                <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png" Text="Guardar" ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="6" ImageUrl="../Imagenes/Botoneras/listas.png" Text="Listas" ToolTip="Listas"/>
                <telerik:RadToolBarButton Enabled="true" Value="13" ImageUrl="../Imagenes/Botoneras/notificacion.png" Text="Notificación" ToolTip="Notificación"/>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir" ToolTip="Salir"/>
                
                
            </Items>
        </telerik:RadToolBar>

        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>
            <table style="width: 100%; height:100px;" class="SinBorde">
                  <tr>
                    <th rowspan="13" style="width:300px">
                        <telerik:RadTreeView RenderMode="Classic" ID="RadTreeView1" runat="server"  Width="100%" Height="100%">
                            <Nodes>
                                <telerik:RadTreeNode runat="server" Text="Zanzibar" AllowDrag="false">
                                    <Nodes>
                                        <telerik:RadTreeNode runat="server" Text="Weekend Package" AllowDrop="false" Value="1999">
                                        </telerik:RadTreeNode>
                                        <telerik:RadTreeNode runat="server" Text="1 Week Package" AllowDrop="false" Value="2999">
                                        </telerik:RadTreeNode>
                                        <telerik:RadTreeNode runat="server" Text="2 Week Package" AllowDrop="false" Value="3999">
                                        </telerik:RadTreeNode>
                                    </Nodes>
                                </telerik:RadTreeNode>
                            </Nodes>
                        </telerik:RadTreeView>
                    </th>
                    <th>
                       <telerik:RadLabel ID="RadLabel1" Text="Clave Sesion:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox1" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel2" Text="Comienza a:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker1" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel3" Text="Fecha:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker2" runat="server"></telerik:RadDatePicker>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel4" Text="Termina a:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker3" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel5" Text="Asunto:" runat="server"></telerik:RadLabel>
                    </th>
                    <td colspan="5">
                        <textarea id="TextArea1" style="width:100%" cols="20" rows="2"></textarea>
                    </td>
                    
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel6" Text="Lugar:" runat="server"></telerik:RadLabel>
                    </th>
                    <td colspan="5">
                        <telerik:RadTextBox ID="RadTextBox2" style="width:100%" runat="server"></telerik:RadTextBox>
                    </td>
                   
                  </tr>
                  <tr>
                    <td colspan="6">
                        <telerik:RadLabel ID="RadLabel7" style="width:100%" Text="Temas" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel8" Text="Planes:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox3" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td colspan="6">
                        <telerik:RadGrid ID="RadGrid1" BackColor="Gray"  Width="100%" Height="100px" runat="server"></telerik:RadGrid>
                    </td>
                    
                  </tr>
                  <tr>
                    <td colspan="6">
                        <telerik:RadLabel ID="RadLabel9" Text="Archivos" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel10" Text="Tipo:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList1" runat="server"></telerik:RadDropDownList>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel11" Text="Nombre:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox4" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel12" Text="Docto:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Agregar" />
                    </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td colspan="6">
                         <telerik:RadGrid ID="RadGrid2" BackColor="Gray"  Width="100%" Height="100px" runat="server"></telerik:RadGrid>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel13" Text="Nota:" runat="server"></telerik:RadLabel>
                    </th>
                    <td colspan="5">
                        <textarea id="TextArea2" cols="20" style="width:100%" rows="2"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel14" Text="Responsable:" runat="server"></telerik:RadLabel>
                    </th>
                    <td colspan="5">
                        <telerik:RadDropDownList ID="RadDropDownList2" style="width:100%" runat="server"></telerik:RadDropDownList>
                    </td>
                  </tr>
                </table>
        </div>
        <br />

        <!-- ------------------------------------F I N------------------------------------------------->
        <telerik:RadCodeBlock ID="block" runat="server">
             <script type="text/javascript">
                 function clientButtonClicking(sender, args) {
                     var toolBar = sender;
                     var button = args.get_item();

                     if (typeof (Page_ClientValidate) == 'function') { Page_ClientValidate(); }

                     switch (button.get_value()) {
                         case "1":
                             if (!Page_IsValid) {
                                 CallClientShow();
                             }
                             break;
                     }
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



