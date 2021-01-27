<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="Sectores.aspx.vb" Inherits="Normanet_app.Sectores" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="6" ImageUrl="../Imagenes/Botoneras/inhabilitar.png" Text="Inactivar" ToolTip="Inactivar"/>
                <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir" ToolTip="Salir"/>
                
                
            </Items>
        </telerik:RadToolBar>
        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>
            <table style="width: 100%; height:40px;" class="SinBorde">
                <tr>
                <th>
                    <telerik:RadLabel ID="RadLabel7" Text="Sector:" runat="server"></telerik:RadLabel>
                </th>
                <td style="text-align:left">
                    <asp:TextBox ID="txtIdSector" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtSector" runat="server"></asp:TextBox>
                    <telerik:RadDropDownList ID="rddSectores" runat="server" DefaultMessage="Seleccione una opción" OnClientItemSelected="ObtenerSectorSeleccionado"></telerik:RadDropDownList>
                </td>
              </tr>
               <tr>
                   <th>
                      <telerik:RadLabel ID="RadLabel1" Text="Activo:" runat="server"></telerik:RadLabel>
                   </th>
                    <td>
                         <telerik:RadCheckBox ID="RadCheckBox1" runat="server"></telerik:RadCheckBox>
                   </td>
               </tr>
               
            </table>
            <br />
        </div>

        <!-- ------------------------------------F I N------------------------------------------------->
        <telerik:RadCodeBlock ID="block" runat="server">
             <script type="text/javascript">
                 $(function () {
                     $('#<%=txtSector.ClientID %>').hide()
                      $('#<%=txtIdSector.ClientID %>').hide()
                  });

                 function clientButtonClicking(sender, args) {
                     debugger
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
                             window.close("Catalogos/Sectores.aspx");
                             break;

                     }
                 }

                 function CallClientShow() {
                     var notification = $find("<%=notCampos.ClientID%>");
                     notification.show();
                 }

                 function nuevo() {
                     $('#<%=txtIdSector.ClientID %>').val(0)
                     $('#<%=rddSectores.ClientID %>').hide()
                     $('#<%=txtSector.ClientID %>').show()
                 }

                 function editar() {
                     var DropDown = $find("<%=rddSectores.ClientID%>");

                     if (DropDown.get_selectedItem() !== null) {
                         var idSeleccionado = DropDown.get_selectedItem().get_value();
                         var textoSeleccionado = DropDown.get_selectedItem().get_text();

                         $('#<%=txtIdSector.ClientID %>').val(idSeleccionado)

                         $('#<%=rddSectores.ClientID %>').hide();
                         $('#<%=txtSector.ClientID %>').show();
                         $('#<%=txtSector.ClientID %>').val(textoSeleccionado);
                     }   
                 }

                 function LimpiarFormulario() {
                     $('#pnlConfirm').dialog('close');
                     location.reload()
                 }

                 function ObtenerSectorSeleccionado(sender, args) {
                     var valor = args.get_item().get_value()
                     var txt = args.get_item().get_text()
                     $('#<%=txtIdSector.ClientID %>').val(valor)
                     $('#<%=txtSector.ClientID %>').val(txt)
                 }
             </script>
        </telerik:RadCodeBlock>
        <div id="Validadores">
        <asp:RequiredFieldValidator runat="server" ID="rfvSector" ControlToValidate="txtSector" ErrorMessage="Sector" Display="None" ValidationGroup="PersonalInfoGroup" />
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

