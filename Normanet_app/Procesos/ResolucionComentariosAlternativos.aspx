<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="ResolucionComentariosAlternativos.aspx.vb" Inherits="Normanet_app.ResolucionComentariosAlternativos" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/VerMatriz.png" Text="Ver Matriz" ToolTip="Ver Matriz"/>
                 <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer"  ToolTip="Deshacer"/>
                <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png" Text="Guardar" ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="7" ImageUrl="../Imagenes/Botoneras/delete_32.png" Text="Eliminar"  ToolTip="Eliminar"/>
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
                        <telerik:RadTab Text="Datos Personales/Comentarios" Width="250px" Font-Size="12px" Height="10px" ></telerik:RadTab>
                        <telerik:RadTab Text="Proyecto" Width="100px" Font-Size="12px" Height="10px"></telerik:RadTab>
                        <telerik:RadTab Text="Revisión de Comentarios" Font-Size="12px" Width="200px" Height="10px" ></telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
          <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="outerMultiPage">
                 <telerik:RadPageView runat="server" ID="RadPageView1">
                     <table style="width: 100%; height:100px;" class="SinBorde">
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel1" Text="Nombre:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadTextBox ID="RadTextBox1" runat="server"></telerik:RadTextBox>
                            </td>
                            <th>
                                <telerik:RadLabel ID="RadLabel2" Text="Teléfono:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadTextBox ID="RadTextBox2" runat="server"></telerik:RadTextBox>
                            </td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel3" Text="Empresa:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadTextBox ID="RadTextBox3" runat="server"></telerik:RadTextBox>
                            </td>
                            <th>
                                <telerik:RadLabel ID="RadLabel4" Text="Fax:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadTextBox ID="RadTextBox4" runat="server"></telerik:RadTextBox>
                            </td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel5" Text="Domicilio:" runat="server"></telerik:RadLabel>
                            </th>
                            <td rowspan="2">
                                <textarea id="TextArea1" style="width:100%; height:100%"  cols="20" rows="2"></textarea>
                            </td>
                            <th>
                                <telerik:RadLabel ID="RadLabel6" Text="Email:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadTextBox ID="RadTextBox5" runat="server"></telerik:RadTextBox>
                            </td>
                          </tr>
                          <tr>
                            <td></td>
                            <td colspan="2">
                              </td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel8" Text="Tipo de Comentario:" runat="server"></telerik:RadLabel>
                            </th>
                            <td colspan="2">
                                <telerik:RadDropDownList ID="RadDropDownList1" runat="server"></telerik:RadDropDownList>
                            </td>
                            <td></td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel9" Text="Capítulo Inciso:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadTextBox ID="RadTextBox6" runat="server"></telerik:RadTextBox>
                            </td>
                            <td></td>
                            <td></td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel10" Text="Párrafo/Tabla/Figura:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadTextBox ID="RadTextBox7" runat="server"></telerik:RadTextBox>
                            </td>
                            <td></td>
                            <td></td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel11" Text="Comentario:" runat="server"></telerik:RadLabel>
                            </th>
                            <td colspan="2">
                                <textarea id="TextArea2" style="width:100%"  cols="20" rows="2"></textarea>
                            </td>
                            <td></td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel12" Text="Propuesta de Cambios:" runat="server"></telerik:RadLabel>
                            </th>
                            <td colspan="2">
                                <textarea id="TextArea3" style="width:100%" cols="20" rows="2"></textarea>
                            </td>
                            <td></td>
                          </tr>
                        </table>
                
                </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView2">
                <table style="width: 100%; height:100px;" class="SinBorde">
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel13" Text="Fecha a periodo de Comentarios:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox8" runat="server"></telerik:RadTextBox>
                        </td>
                         <td>
                             <telerik:RadDatePicker ID="RadDatePicker3" runat="server"></telerik:RadDatePicker>
                         </td>
                    </tr>
                    <tr>
                        <th>
                             <telerik:RadLabel ID="RadLabel14" Text="Fecha Límite para Comentarios:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox9" runat="server"></telerik:RadTextBox>
                        </td>
                         <td>
                               <telerik:RadDatePicker ID="RadDatePicker4" runat="server"></telerik:RadDatePicker>
                         </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel15" Text="Título:" runat="server"></telerik:RadLabel>
                        </th>
                         <td colspan="2">
                               <textarea id="TextArea6" style="width:100%" cols="20" rows="2"></textarea>
                         </td>
                    </tr>
                    
                </table>
                
            </telerik:RadPageView>
                    <telerik:RadPageView runat="server" ID="RadPageView3">
                        <table style="width: 100%; height:100px;" class="SinBorde">
                            <tr>
                                <th>
                                     <telerik:RadLabel ID="RadLabel7" Text="Resolución:" runat="server"></telerik:RadLabel>
                                </th>
                                <td colspan="3">
                                    <textarea id="TextArea7" style="width:100%" cols="20" rows="2"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <telerik:RadLabel ID="RadLabel16" Text="Documento" runat="server"></telerik:RadLabel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <telerik:RadCheckBox ID="RadCheckBox1" runat="server" Text="RadCheckBox"></telerik:RadCheckBox>
                                </td>
                                 <th>
                                     <telerik:RadLabel ID="RadLabel17" Text="Fecha:" runat="server"></telerik:RadLabel>
                                 </th>
                                 <td>
                                     <telerik:RadDatePicker ID="RadDatePicker1" runat="server"></telerik:RadDatePicker>
                                 </td>
                                 <td>
                                     <asp:FileUpload ID="FileUpload1" runat="server" />
                                 </td>
                            </tr>
                            <tr>
                                <td colspan="4" style="width:300px">
                                    <telerik:RadGrid ID="RadGrid2" BackColor="Gray" Width="100%" Height="180px" runat="server"></telerik:RadGrid>
                                </td>
                            </tr>
                        </table>
                
                          

                    </telerik:RadPageView>
                         </telerik:RadMultiPage>


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

