<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="GestorPaginas.aspx.vb" Inherits="Normanet_app.GestorPaginas" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/previo.png" Text="Vista Previa de la Página" ToolTip="Vista Previa de la Página" ValidationGroup="PersonalInfoGroup"/>
                <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir" ToolTip="Salir"/>
                
            </Items>
        </telerik:RadToolBar>

        <br />
        <div>
            <table style="width: 100%; height:100px;" class="SinBorde">
                <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel9" Text="Nombre de la página:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList1" runat="server"></telerik:RadDropDownList>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel10" Text="Tipo de página:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList2" runat="server"></telerik:RadDropDownList>
                    </td>
                 </tr>
                   <tr>
                       <th>
                           <telerik:RadLabel ID="RadLabel11" Text="Título" runat="server"></telerik:RadLabel>
                       </th>
                       <td colspan="3">
                           <telerik:RadTextBox Width="100%" ID="RadTextBox7" runat="server"></telerik:RadTextBox>
                       </td>
                   </tr>
                <tr>
                    <br />
                    <td colspan="4" style="width:100%">
            <telerik:RadTabStrip Font-Size="Small" RenderMode="Lightweight" runat="server" ID="RadTabStrip1"  MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Vista">
            <Tabs>
                <telerik:RadTab  Text="Grupos" Font-Size="12px" Width="100px" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Contenido" Font-Size="12px" Width="100px" Height="10px"></telerik:RadTab>
            </Tabs>
            </telerik:RadTabStrip>
            <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="outerMultiPage">
            <telerik:RadPageView runat="server" ID="RadPageView1">
                 <table style="width: 100%; height:100px;" class="SinBorde">
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel1" Text="Nombre de la Grupo:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox1" runat="server"></telerik:RadTextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel2" Text="Descripción:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <textarea id="TextArea1" style="width:100%" cols="20" rows="2"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel3"  Width="100%" Text="Texto del Grupo:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="2">
                            <textarea id="TextArea2" style="width:100%; height:100%" cols="20" rows="2"></textarea>
                        </td>
                        <td>
                             <img src="../Imagenes/Botoneras/copy.png" />
                        </td>
                        <td>
                            <img src="../Imagenes/Botoneras/paste.png" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width:150px">
                            <telerik:RadTabStrip Font-Size="Small" RenderMode="Lightweight" runat="server" ID="RadTabStrip2"  MultiPageID="RadMultiPage2" SelectedIndex="0" Skin="Vista">
                            <Tabs>
                                <telerik:RadTab Text="Listado de Grupos" Font-Size="12px" Width="150px" Height="10px" ></telerik:RadTab>
                                <telerik:RadTab Text="Galeria por Grupos" Font-Size="12px" Width="150px" Height="10px"></telerik:RadTab>
                                <telerik:RadTab Text="Listado de Documentos" Font-Size="12px" Width="200px" Height="10px"></telerik:RadTab>
                            </Tabs>
                            </telerik:RadTabStrip>
                             <telerik:RadMultiPage runat="server" ID="RadMultiPage2"  SelectedIndex="0" CssClass="outerMultiPage">
                                 <telerik:RadPageView runat="server" ID="RadPageView3">
                                      <table style="width: 100%; height:100px;" class="SinBorde">
                                <tr>
                                    <td>
                                      <telerik:RadGrid ID="RadGrid2" BackColor="Gray" Width="100%" Height="150px" runat="server"></telerik:RadGrid>
                                    </td>
                                </tr>
                            </table>
                                     </telerik:RadPageView>
                                 <telerik:RadPageView runat="server" ID="RadPageView4">
                                     <telerik:RadToolBar ID="RadToolBar2" Runat="server" Height="32" Width="100%" SkinID="SkinManager" OnClientButtonClicking="clientButtonClicking">  
                                     <Items>
                                           <telerik:RadToolBarButton Enabled="true" Value="0" ImageUrl="../Imagenes/Botoneras/New.png" Text="Nuevo" ToolTip ="Nuevo"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="2" ImageUrl="../Imagenes/Botoneras/Edit.png" Text="Editar" ToolTip="Editar"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer" ToolTip="Deshacer"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png" Text="Guardar" ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                                     </Items>
                                    </telerik:RadToolBar>
                                     <table>
                                         <tr>
                                             <th>
                                                 <telerik:RadLabel ID="RadLabel8" Text="Nombre:" runat="server"></telerik:RadLabel>
                                             </th>
                                             <td>
                                                 <telerik:RadTextBox Width="100%" ID="RadTextBox4" runat="server"></telerik:RadTextBox>
                                             </td>
                                             <th>
                                                 <telerik:RadLabel ID="RadLabel12" Text="Imagen:" runat="server"></telerik:RadLabel>
                                             </th>
                                             <td>
                                                 <asp:FileUpload ID="FileUpload3" runat="server" />
                                             </td>
                                         </tr>
                                         <tr>
                                             <td colspan="4">
                                                    <telerik:RadGrid ID="RadGrid1" BackColor="Gray" Width="100%" Height="150px" runat="server"></telerik:RadGrid>
                          
                                             </td>
                                         </tr>
                                     </table>
                                     </telerik:RadPageView>
                                 <telerik:RadPageView runat="server" ID="RadPageView5">
                                     <telerik:RadToolBar ID="RadToolBar3" Runat="server" Height="32" Width="100%" SkinID="SkinManager" OnClientButtonClicking="clientButtonClicking">  
                                     <Items>
                                           <telerik:RadToolBarButton Enabled="true" Value="0" ImageUrl="../Imagenes/Botoneras/New.png" Text="Nuevo" ToolTip ="Nuevo"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="2" ImageUrl="../Imagenes/Botoneras/Edit.png" Text="Editar" ToolTip="Editar"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer" ToolTip="Deshacer"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png" Text="Guardar" ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                                     </Items>
                                    </telerik:RadToolBar>
                                      <table>
                                    <tr>
                                        <th>
                                            <telerik:RadLabel ID="RadLabel13" Text="Nombre:" runat="server"></telerik:RadLabel>
                                        </th>
                                        <td>
                                            <telerik:RadTextBox ID="RadTextBox5" runat="server"></telerik:RadTextBox>
                                        </td>
                                        <th>
                                            <telerik:RadLabel ID="RadLabel14" Text="Documento:" runat="server"></telerik:RadLabel>
                                        </th>
                                        <td>
                                            <asp:FileUpload ID="FileUpload2" runat="server" />
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            
                                        </td>
                                        <td>
                                            <telerik:RadCheckBox ID="RadCheckBox1" runat="server" Text="Restringido:"></telerik:RadCheckBox>
                                        </td>
                                        <th>
                                            <telerik:RadLabel ID="RadLabel15" Text="Pertenece:" runat="server"></telerik:RadLabel>
                                        </th>
                                        <td>
                                            <telerik:RadTextBox ID="RadTextBox6" runat="server"></telerik:RadTextBox>
                                        </td>
                                    </tr>
                                <tr>
                                    <td colspan="4">
                                      <telerik:RadGrid ID="RadGrid3" BackColor="Gray" Width="100%" Height="150px" runat="server"></telerik:RadGrid>
                                    </td>
                                </tr>
                            </table>



                                     </telerik:RadPageView>
                             </telerik:RadMultiPage>


                        </td>
                    </tr>
                </table>
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView2">
                <table style="width: 100%; height:100px;" class="SinBorde">
                <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel4" Text="Grupo:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox Width="100%" ID="RadTextBox2" runat="server"></telerik:RadTextBox>
                    </td>
                </tr>
                    <tr>
                        <td colspan="2">
                            <telerik:RadLabel ID="RadLabel5" Text="Ligas" runat="server"></telerik:RadLabel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <telerik:RadToolBar ID="RadToolBar1" Runat="server" Height="32" Width="100%" SkinID="SkinManager" OnClientButtonClicking="clientButtonClicking">  
                             <Items>
                                   <telerik:RadToolBarButton Enabled="true" Value="0" ImageUrl="../Imagenes/Botoneras/New.png" Text="Nuevo" ToolTip ="Nuevo"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="2" ImageUrl="../Imagenes/Botoneras/Edit.png" Text="Editar" ToolTip="Editar"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer" ToolTip="Deshacer"/>
                                            <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png" Text="Guardar" ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                             </Items>
                            </telerik:RadToolBar>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel6" Text="Tipo de Liga:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox Width="100%" ID="RadTextBox3" runat="server"></telerik:RadTextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel7" Text="Texto:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <textarea id="TextArea3" style="width:100%" cols="20" rows="2"></textarea>
                        </td>
                    </tr>
                </table>
                <telerik:RadTabStrip Font-Size="Small" RenderMode="Lightweight" runat="server" ID="RadTabStrip3"  MultiPageID="RadMultiPage3" SelectedIndex="0" Skin="Vista">
                        <Tabs>
                            <telerik:RadTab Text="Listado de Ligas" Font-Size="12px" Width="150px" Height="10px" ></telerik:RadTab>
                            <telerik:RadTab Text="Archivos" Font-Size="12px" Width="150px" Height="10px"></telerik:RadTab>
                            <telerik:RadTab Text="Ligas Externas" Font-Size="12px" Width="150px" Height="10px"></telerik:RadTab>
                            <telerik:RadTab Text="Dinamicas" Font-Size="12px" Width="150px" Height="10px"></telerik:RadTab>
                        </Tabs>
                        </telerik:RadTabStrip>
                 <telerik:RadMultiPage runat="server" ID="RadMultiPage3"  SelectedIndex="0" CssClass="outerMultiPage">
                    <telerik:RadPageView runat="server" ID="RadPageView6">
                        <table style="width: 100%; height:100px;" class="SinBorde">
                            <tr>
                                <td>
                                <telerik:RadGrid ID="RadGrid4" BackColor="Gray" Width="100%" Height="100px" runat="server"></telerik:RadGrid>
                                 
                                </td>
                            </tr>
                        </table>        
                    </telerik:RadPageView>
                     <telerik:RadPageView runat="server" ID="RadPageView7">
                          <table>
                                    <tr>
                                        <th>
                                            <telerik:RadLabel ID="RadLabel16" Text="Archivo:" runat="server"></telerik:RadLabel>
                                        </th>
                                        <td>
                                            <telerik:RadTextBox ID="RadTextBox8" runat="server"></telerik:RadTextBox>
                                        </td>
                                        </tr>
                                    <tr>
                                        <th>
                                            <telerik:RadLabel ID="RadLabel17" Text="Documento:" runat="server"></telerik:RadLabel>
                                        </th>
                                        <td>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            
                                        </td>
                                        <td>
                                            <telerik:RadCheckBox ID="RadCheckBox2" runat="server" Text="Restringido:"></telerik:RadCheckBox>
                                        </td>
                                        
                                    </tr>
   
                            </table>
                    </telerik:RadPageView>
                     <telerik:RadPageView runat="server" ID="RadPageView8">
                          <table style="width: 100%; height:100px;" class="SinBorde">
                              <tr>
                                  <th>
                                      <telerik:RadLabel ID="RadLabel18" Text="Liga Extena:" runat="server"></telerik:RadLabel>
                                  </th>
                                  <td>
                                      <textarea id="TextArea4" style="width:100%" cols="20" rows="2"></textarea>

                                  </td>
                              </tr>
                         </table>
                    </telerik:RadPageView>
                     <telerik:RadPageView runat="server" ID="RadPageView9">
                           <table style="width: 100%; height:100px;" class="SinBorde">
                               <tr>
                                   <td colspan="3">
                                        <telerik:RadLabel ID="RadLabel19" Text="Ligas a repositorios o a paginas de contenido:" runat="server"></telerik:RadLabel>
                                   </td>
                               </tr>
                               <tr>
                                   <td>
                                       <telerik:RadCheckBox ID="RadCheckBox3" runat="server" Text="Repertorio:"></telerik:RadCheckBox>
                                   </td>
                                   <td>
                                       <telerik:RadCheckBox ID="RadCheckBox4" runat="server" Text="Páginas de Contenido:"></telerik:RadCheckBox>
                                   </td>
                                   <td>
                                       <telerik:RadCheckBox ID="RadCheckBox5" runat="server" Text="Preestablecidas:"></telerik:RadCheckBox>
                                   </td>
                               </tr>
                         </table>

                                     </telerik:RadPageView>
                 </telerik:RadMultiPage>
                     
             </telerik:RadPageView>

            </telerik:RadMultiPage>
                        

                    </td>

                </tr>

                
                </table>
        </div>

        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        
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


