<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="Fechas.aspx.vb" Inherits="Normanet_app.Fechas" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="10" ImageUrl="../Imagenes/Botoneras/buscar1.png" Text="Buscar" ToolTip ="Buscar"/>
                <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer" ToolTip="Deshacer"/>
                <telerik:RadToolBarButton Enabled="true" Value="16" ImageUrl="../Imagenes/Botoneras/print.png" Text="Imprimir" ToolTip="Imprimir"/>
                <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir" ToolTip="Salir"/>
                
                
            </Items>
        </telerik:RadToolBar>

        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>
            <table style="width: 100%; height:100px;" class="SinBorde">
              <tr style="text-align:left">
                <td rowspan="24" >
                    <asp:TextBox ID="TextBox7" runat="server" Width="98%" placeholder="Buscar..." ></asp:TextBox>
                         <telerik:RadTreeView RenderMode="Classic" ID="RadTreeView2" runat="server"  Width="100%" Height="100%">
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
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox2" runat="server" Text="Fecha de Inicio de Desarrollo de NMX:"></telerik:RadCheckBox>
                </th>
                <td></td>
                <td colspan="2" rowspan="23">
                      <telerik:RadGrid ID="RadGrid2" BackColor="Gray" Width="100%" Height="600px" runat="server"></telerik:RadGrid>
                </td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox3" runat="server" Text="Fecha de Aprobación Revisión Editorial:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox4" runat="server" Text="Fecha de carga DT Final:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox5" runat="server" Text="Fecha de Impresión Acta Aprobación:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox6" runat="server" Text="Fecha de Carga Acta Aprobación:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox7" runat="server" Text="Fecha de Aprobación Ant CT GT:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox8" runat="server" Text="Fecha de Carga Ant Final:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox9" runat="server" Text="Fecha de Aprobación Comité Proy:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                 <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox10" runat="server" Text="Fecha de Publicación Comentario Público:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox11" runat="server" Text="Fecha Límite Comentario Público:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox12" runat="server" Text="Fecha de Resolución Comentario Público:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
               <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox13" runat="server" Text="Fecha de Inicio Procedimiento Alternativo:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
               <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox14" runat="server" Text="Fecha de Carga Minuta de Fin de Procedimiento Alternativo:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox15" runat="server" Text="Fecha Límite de Resolución a Comentario Público:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox16" runat="server" Text="Fecha de Aprobación de Resolución a comentario Público:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                 <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox17" runat="server" Text="Fecha Vo Bo Comité:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox18" runat="server" Text="Fecha de Inicio Revisión PROYF:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox19" runat="server" Text="Fecha Término Revisión PROYF:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox20" runat="server" Text="Fecha de edición PROYF:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                 <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox21" runat="server" Text="Fecha de Impresión acta aprobación PROYF:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox22" runat="server" Text="Fecha de Carga acta de Aprobación PROYF:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox23" runat="server" Text="Fecha de acuse DGN PROYF:"></telerik:RadCheckBox>
                </th>
                <td></td>
              </tr>
              <tr>
                 <th style="text-align:left">
                    <telerik:RadCheckBox ID="RadCheckBox24" runat="server" Text="Fecha de Carga PROYF:"></telerik:RadCheckBox>
                </>
                <td></td>
              </tr>
              <tr>
                <th>
                    <telerik:RadCheckBox ID="RadCheckBox25" runat="server" Text="Todas"></telerik:RadCheckBox>
                </th>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Quitar" />
                </td>
                <th>
                    <telerik:RadLabel ID="RadLabel9" Text="Total:" runat="server"></telerik:RadLabel>
                </th>
                <td>
                    <telerik:RadTextBox ID="RadTextBox1" runat="server"></telerik:RadTextBox>
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

