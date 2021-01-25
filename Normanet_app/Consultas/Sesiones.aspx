<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="Sesiones.aspx.vb" Inherits="Normanet_app.Sesiones" %>
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
                 <telerik:RadToolBarButton Enabled="true" Value="10" ImageUrl="../Imagenes/Botoneras/asignar.png" Text="Lista Asistencia" ToolTip ="Lista Asistencia"/>
                 <telerik:RadToolBarButton Enabled="true" Value="10" ImageUrl="../Imagenes/Botoneras/calendario.png" Text="Calendario" ToolTip ="Calendario"/>
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
            <tr>
                <td style="width:20%">
                                Proyecto Seleccionado
                                <br />
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
                <td>
                    <telerik:RadTabStrip Font-Size="Small" RenderMode="Lightweight" runat="server" ID="RadTabStrip1"  MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Vista">
                    <Tabs>
                        <telerik:RadTab Text="Calendario" Width="100px" Font-Size="12px" Height="10px" ></telerik:RadTab>
                        <telerik:RadTab Text="Sesiones" Width="100px" Font-Size="12px" Height="10px"></telerik:RadTab>
                        <telerik:RadTab Text="Temas" Font-Size="12px" Width="200px" Height="10px" ></telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
          <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="outerMultiPage">
                 <telerik:RadPageView runat="server" ID="RadPageView1">
                     <table style="width: 100%; height:100px;" class="SinBorde">
                      <tr>
                        <th>
                            <telerik:RadCheckBox ID="RadCheckBox1" runat="server" Text="Anual"></telerik:RadCheckBox>
                        </th>
                        <th>
                            <telerik:RadLabel ID="RadLabel2" Text="Año:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker1" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                     <tr>
                        <th>
                            <telerik:RadCheckBox ID="RadCheckBox2" runat="server" Text="Mensual"></telerik:RadCheckBox>
                        </th>
                        <th>
                            <telerik:RadLabel ID="RadLabel3" Text="Mes:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker2" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      
                    </table>
                
                </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView2">
                <table style="width: 100%; height:100px;" class="SinBorde">
                      <tr>
                        <td>
                            <telerik:RadCheckBox ID="RadCheckBox3" runat="server" Text="Por Fechas"></telerik:RadCheckBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel4" Text="Comienza A:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker3" runat="server"></telerik:RadDatePicker>
                        </td>
                         <th>
                            <telerik:RadLabel ID="RadLabel5" Text="Termina A:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker4" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      <tr>
                        <td>
                            <telerik:RadCheckBox ID="RadCheckBox4" runat="server" Text="Por Fechas"></telerik:RadCheckBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel8" Text="Comienza A:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker5" runat="server"></telerik:RadDatePicker>
                        </td>
                         <th>
                            <telerik:RadLabel ID="RadLabel9" Text="Termina A:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadNumericTextBox ID="RadNumericTextBox1" runat="server"></telerik:RadNumericTextBox>
                        </td>
                      </tr>
                      <tr>
                        <td>
                            <telerik:RadCheckBox ID="RadCheckBox5" runat="server" Text="Por "></telerik:RadCheckBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel10" Text="Responsable:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <telerik:RadDropDownList Width="100%" ID="RadDropDownList1" runat="server"></telerik:RadDropDownList>
                        </td>
                         
                      </tr>
                      <tr>
                        <td>
                            <telerik:RadCheckBox ID="RadCheckBox6" runat="server" Text="Por Sede"></telerik:RadCheckBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel11" Text="Sede:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox2" runat="server"></telerik:RadTextBox>
                        </td>
                         
                      </tr>
                       <tr>
                        <td>
                            <telerik:RadCheckBox ID="RadCheckBox7" runat="server" Text="Por Status"></telerik:RadCheckBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel12" Text="Status:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <telerik:RadDropDownList Width="100%" ID="RadDropDownList6" runat="server"></telerik:RadDropDownList>
                        </td>
                         
                      </tr>
                    </table>
                
            </telerik:RadPageView>
                    <telerik:RadPageView runat="server" ID="RadPageView3">
                          <table style="width: 100%; height:100px;" class="SinBorde">
                          <tr>
                            <td style="text-align:left">
                                <telerik:RadCheckBox ID="RadCheckBox8" runat="server" Text="Por Estapas:"></telerik:RadCheckBox>                            </td>
                            <th>
                                <telerik:RadLabel ID="RadLabel13" Text="Estapas por temas:" runat="server"></telerik:RadLabel>
                            </th>
                            <td colspan="3">
                                <telerik:RadDropDownList ID="RadDropDownList2" runat="server"></telerik:RadDropDownList>
                            </td>
                          </tr>
                          <tr>
                            <td style="text-align:left">
                                <telerik:RadCheckBox ID="RadCheckBox9" runat="server" Text="Por Fechas de Publicación:"></telerik:RadCheckBox>  
                            </td>
                            <th>
                                 <telerik:RadLabel ID="RadLabel14" Text="Comienza a:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadDatePicker ID="RadDatePicker6" runat="server"></telerik:RadDatePicker>
                            </td>
                            <th>
                                 <telerik:RadLabel ID="RadLabel15" Text="Termina a:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadDatePicker ID="RadDatePicker7" runat="server"></telerik:RadDatePicker>
                            </td>
                          </tr>
                           <tr>
                            <td style="text-align:left">
                                <telerik:RadCheckBox ID="RadCheckBox10" runat="server" Text="Por Fecha de Envió a DGN:"></telerik:RadCheckBox>  
                            </td>
                            <th>
                                 <telerik:RadLabel ID="RadLabel16" Text="Comienza a:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadDatePicker ID="RadDatePicker8" runat="server"></telerik:RadDatePicker>
                            </td>
                            <th>
                                 <telerik:RadLabel ID="RadLabel17" Text="Termina a:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadDatePicker ID="RadDatePicker9" runat="server"></telerik:RadDatePicker>
                            </td>
                          </tr>
                          <tr>
                            <td style="text-align:left">
                                <telerik:RadCheckBox ID="RadCheckBox11" runat="server" Text="Por Temas:"></telerik:RadCheckBox>  
                            </td>
                            <th>
                                <telerik:RadLabel ID="RadLabel18" Text="Temas:" runat="server"></telerik:RadLabel>
                            </th>
                            <td colspan="3">

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
                          </tr>
                        </table>
                
                    </telerik:RadPageView>
                         </telerik:RadMultiPage>

                </td>
            </tr>      
                <tr>
                    <td colspan="3">
                         <telerik:RadGrid ID="RadGrid2" BackColor="Gray" Width="100%" Height="200px" runat="server"></telerik:RadGrid>
                    </td>                </tr>
                <tr>
                    <td>
                    <telerik:RadLabel ID="RadLabel1" Text="Total:" runat="server"></telerik:RadLabel>
                    </td>
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

