<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="RevisionEditorial.aspx.vb" Inherits="Normanet_app.RevisionEditorial" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="6" ImageUrl="../Imagenes/Botoneras/asignar.png" Text="Asignar" ToolTip="Asignar"/>
                <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="6" ImageUrl="../Imagenes/Botoneras/delete_32.png" Text="Eliminar" ToolTip="Eliminar"/>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir" ToolTip="Salir"/>
                
                
            </Items>
        </telerik:RadToolBar>

        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>

            <table style="width: 100%; height:100px;" class="SinBorde">
                      <tr>
                        <td rowspan="9">
                            <asp:TextBox ID="TextBox6" runat="server" Width="98%" placeholder="Buscar..." ></asp:TextBox>
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
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel9" Text="Anteproyecto:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <asp:TextBox ID="TextBox7" runat="server" Width="98%"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel10" Text="Número de Páginas:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Width="98%"></asp:TextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel11" Text="PNN (No./Año):" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Width="98%"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel12" Text="Comite Técnico:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server" Width="98%"></asp:TextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel13" Text="Fecha Inicio Revisión:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker1" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      <tr>
                         <th>
                            <telerik:RadLabel ID="RadLabel14" Text="Responsable:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server" Width="98%"></asp:TextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel15" Text="Fecha Compromiso:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker2" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      <tr>
                         <th>
                            <telerik:RadLabel ID="RadLabel16" Text="Revisor:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <asp:TextBox ID="TextBox12" runat="server" Width="98%"></asp:TextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel17" Text="Fecha Real Entrega:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker3" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel18" Text="Revisión por:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <telerik:RadComboBox Width="100%" ID="RadComboBox1" runat="server"></telerik:RadComboBox>
                        </td>
                      </tr>
                      <tr>
                        <td colspan="4">
                            <telerik:RadGrid ID="RadGrid2" BackColor="Gray" Width="100%" Height="225px" runat="server"></telerik:RadGrid>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel1" Text="Comentario:" runat="server"></telerik:RadLabel>
                        </th>
                        <td rowspan="2">
                            <textarea id="TextArea1" style="Width:100%; Height:100%"  cols="20" rows="2"></textarea>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel2" Text="Subtotal:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox1" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <td></td>
                         <th>
                            <telerik:RadLabel ID="RadLabel3" Text="Total:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox2" runat="server"></telerik:RadTextBox>
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


