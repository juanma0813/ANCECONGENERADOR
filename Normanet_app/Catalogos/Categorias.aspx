<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="Categorias.aspx.vb" Inherits="Normanet_app.Categorias" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer"  ToolTip="Deshacer"/>
                <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png"  Text="Guardar" ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                 <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="7" ImageUrl="../Imagenes/Botoneras/delete_32.png" Text="Eliminar"  ToolTip="Eliminar"/>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png"  Text="Salir" ToolTip="Salir"/>
                
                
            </Items>
        </telerik:RadToolBar>

        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>
            <table style="width: 100%; height:40px;" class="SinBorde">
                <tr>
                <th>
                    <telerik:RadLabel ID="RadLabel7" Text="Categoría:" runat="server"></telerik:RadLabel>
                </th>
                <td style="text-align:left">
                    <asp:TextBox ID="txtIdCategoria" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
                    <telerik:RadDropDownList ID="rddCategorias" runat="server"></telerik:RadDropDownList>
                </td>
              </tr>
               
            </table>
            <br />
        </div>
        
        <!-- ------------------------------------F I N------------------------------------------------->
        <telerik:RadCodeBlock ID="block" runat="server">
             <script type="text/javascript">
                 $(function () {
                     $('#<%=txtCategoria.ClientID %>').hide()
                     $('#<%=txtIdCategoria.ClientID %>').hide()
                 });

                 function clientButtonClicking(sender, args) {
                     var toolBar = sender;
                     var button = args.get_item();

                     if (typeof (Page_ClientValidate) == 'function') { Page_ClientValidate(); }

                     switch (button.get_value()) {
                         case "0":
                             nuevo()
                             break;

                         case "1":
                             if (!Page_IsValid) {
                                 CallClientShow();
                             }
                             break;

                         case "2":
                             editar()
                             break;

                         case "15":
                             debugger
                             window.close("Catalogos/Categorias.aspx");
                             break;
                             
                     }
                 }

                 function CallClientShow() {
                     var notification = $find("<%=notCampos.ClientID%>");
                    notification.show();
                 }

                 function nuevo() {

                     $('#<%=txtIdCategoria.ClientID %>').val(0)
                     $('#<%=rddCategorias.ClientID %>').hide()
                     $('#<%=txtCategoria.ClientID %>').show()

                 }

                 function editar() {
                     debugger
                     var DropDown = $find("<%=rddCategorias.ClientID%>");
                     
                     
                     var idSeleccionado = DropDown.get_selectedItem().get_value();
                     var textoSeleccionado = DropDown.get_selectedItem().get_text();

                     $('#<%=txtIdCategoria.ClientID %>').val(idSeleccionado)

                     $('#<%=rddCategorias.ClientID %>').hide();
                     $('#<%=txtCategoria.ClientID %>').show();
                     $('#<%=txtCategoria.ClientID %>').val(textoSeleccionado);

                     

                 }

                 function LimpiarFormulario() {
                     debugger
                     $('#pnlConfirm').dialog('close');
                     $('#<%=txtIdCategoria.ClientID %>').val(0)
                     $('#<%=rddCategorias.ClientID %>').show()
                     $('#<%=txtCategoria.ClientID %>').hide()
                 }

             </script>
        </telerik:RadCodeBlock>
        <div id="Validadores">
        <asp:RequiredFieldValidator runat="server" ID="rfvCategoria" ControlToValidate="txtCategoria" ErrorMessage="Categoría" Display="None" ValidationGroup="PersonalInfoGroup" />
         
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
                    <asp:ImageButton ID="cmdAceptar" runat="server" ImageUrl="../Imagenes/Formularios/Check.png" ToolTip="Aceptar" OnClientClick="LimpiarFormulario()"/>
                    <asp:ImageButton ID="cmdCancelar" runat="server" ImageUrl="../Imagenes/Formularios/Cancel.png" ToolTip="Cancelar" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>  

</asp:Content>
