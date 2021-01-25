<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="Normas.aspx.vb" Inherits="Normanet_app.Normas" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/verMatriz.png" Text="Ver Matriz" ToolTip="Ver Matriz"/>
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
                        <telerik:RadTab Text="Normas" Width="100px" Font-Size="12px" Height="10px" ></telerik:RadTab>
                        <telerik:RadTab Text="Proyecto" Width="100px" Font-Size="12px" Height="10px"></telerik:RadTab>
                        <telerik:RadTab Text="Anteproyecto" Font-Size="12px" Width="200px" Height="10px" ></telerik:RadTab>
                        <telerik:RadTab Text="Documento de Trabajo" Font-Size="12px" Width="200px" Height="10px" ></telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
          <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="outerMultiPage">
                 <telerik:RadPageView runat="server" ID="RadPageView1">
                     <table style="width: 100%; height:100px;" class="SinBorde">
                      <tr>
                        <td></td>
                        <td></td>
                        <th>
                            <telerik:RadLabel ID="RadLabel2" Text="Periodo del:" runat="server"></telerik:RadLabel>
                        </th>
                        <th>
                            <telerik:RadLabel ID="RadLabel3" Text="Periodo al:" runat="server"></telerik:RadLabel>
                        </th>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadCheckBox ID="RadCheckBox1" runat="server" Text="Fec_Decla_Vigencia"></telerik:RadCheckBox>
                        </th>
                        <td></td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker1" runat="server"></telerik:RadDatePicker>
                        </td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker2" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadCheckBox ID="RadCheckBox2" runat="server" Text="Fec_Envio_DGN"></telerik:RadCheckBox>
                        </th>
                        <td></td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker3" runat="server"></telerik:RadDatePicker>
                        </td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker4" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadCheckBox ID="RadCheckBox3" runat="server" Text="Normas NMX - ANCE"></telerik:RadCheckBox>
                        </th>
                        <td></td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Nueva" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Modificada" />
                        </td>
                      </tr>
                      <tr>
                        <td colspan="4">
                            <table style="width:100%; height:100%">
                                <tr>
                                    <td rowspan="3">
                                        <telerik:RadCheckBox ID="RadCheckBox4" runat="server" Text="Adoptadas"></telerik:RadCheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Adoptadas" />
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton4" runat="server" Text="Referidas en NMX" />
                                    </td>
                                </tr>
                                 <tr>
                                    <td></td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton5" runat="server" Text="Armonizadas" />
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton6" runat="server" Text="Referidas en NRF" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadCheckBox ID="RadCheckBox5" runat="server" Text="Por Revision Quinquenal"></telerik:RadCheckBox>
                        </th>
                        <td></td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker5"  runat="server"></telerik:RadDatePicker>
                        </td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker6"  runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadCheckBox ID="RadCheckBox6" runat="server" Text="Por Fecha de Ratificación"></telerik:RadCheckBox>
                        </th>
                        <td></td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker7"  runat="server"></telerik:RadDatePicker>
                        </td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker8"  runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                      <tr>
                        <td>
                            <telerik:RadCheckBox ID="RadCheckBox7" runat="server" Text="Por Responsable"></telerik:RadCheckBox>
                        </td>
                        <td colspan="3">
                            <telerik:RadDropDownList Width="100%" ID="RadDropDownList1" runat="server"></telerik:RadDropDownList>
                        </td>
                      </tr>
                    </table>
                
                </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView2">
                <table style="width: 100%; height:100px;" class="SinBorde">
                               <tr>
                                   <td></td>
                                   <th>
                                        <telerik:RadLabel ID="RadLabel4" Text="Periodo del:" runat="server"></telerik:RadLabel>
                                    </th>
                                    <th>
                                        <telerik:RadLabel ID="RadLabel5" Text="Periodo al:" runat="server"></telerik:RadLabel>
                                    </th>
                               </tr>
                                <tr>
                                    <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox8" runat="server" Text="Proy en Comentarios"></telerik:RadCheckBox>
                                    </th>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker10" runat="server"></telerik:RadDatePicker>
                                    </td>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker9" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                                <tr>
                                   <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox9" runat="server" Text="Proy con Comentarios"></telerik:RadCheckBox>
                                    </th>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker11" runat="server"></telerik:RadDatePicker>
                                    </td>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker12" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                     <tr>
                                    <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox10" runat="server" Text="Proy Finales"></telerik:RadCheckBox>
                                    </th>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker13" runat="server"></telerik:RadDatePicker>
                                    </td>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker14" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                     <tr>
                                    <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox11" runat="server" Text="Fecha Publicacion DOF"></telerik:RadCheckBox>
                                    </th>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker15" runat="server"></telerik:RadDatePicker>
                                    </td>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker16" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                     <tr>
                                    <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox12" runat="server" Text="Proyectos Aprobados"></telerik:RadCheckBox>
                                    </th>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker17" runat="server"></telerik:RadDatePicker>
                                    </td>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker18" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                    <tr>
                                   <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox13" runat="server" Text="Por Responsable"></telerik:RadCheckBox>
                                    </th>
                                    
                                    <td colspan="2">
                                        <asp:DropDownList Width="100%" ID="DropDownList1" runat="server"></asp:DropDownList>
                                    </td>
                                </tr>
                    <tr>
                                    <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox14" runat="server" Text="Remitidas a DGN"></telerik:RadCheckBox>
                                    </th>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker21" runat="server"></telerik:RadDatePicker>
                                    </td>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker22" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                            </table>
                
            </telerik:RadPageView>
                    <telerik:RadPageView runat="server" ID="RadPageView3">
                          <table style="width: 100%; height:100px;" class="SinBorde">
                               <tr>
                                   <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox15" runat="server" Text="Por Responsable"></telerik:RadCheckBox>
                                    </th>
                                    <td>
                                        <telerik:RadDropDownList ID="RadDropDownList2" runat="server"></telerik:RadDropDownList>
                                    </td>
                               </tr>  
                              <tr>
                                   <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox16" runat="server" Text="Clasificación"></telerik:RadCheckBox>
                                    </th>
                                    <td>
                                        <telerik:RadDropDownList ID="RadDropDownList3" runat="server"></telerik:RadDropDownList>
                                    </td>
                               </tr> 
                        </table>
                
                          

                    </telerik:RadPageView>
              <telerik:RadPageView runat="server" ID="RadPageView4">
                          <table style="width: 100%; height:100px;" class="SinBorde">
                               <tr>
                                   <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox17" runat="server" Text="Por Responsable"></telerik:RadCheckBox>
                                    </th>
                                    <td colspan="3">
                                        <telerik:RadDropDownList ID="RadDropDownList4" runat="server"></telerik:RadDropDownList>
                                    </td>
                               </tr> 
                              <tr>
                                  <th style="text-align:left">
                                        <telerik:RadCheckBox ID="RadCheckBox18" runat="server" Text="Proyectos Aprovados"></telerik:RadCheckBox>
                                    </th>
                                  <td>
                                      <telerik:RadLabel ID="RadLabel6" Text="Periodo del:" runat="server"></telerik:RadLabel>
                                  </td>
                                  <td>
                                      <telerik:RadLabel ID="RadLabel7" Text="Periodo al:" runat="server"></telerik:RadLabel>
                                  </td>
                              </tr>
                              <tr>
                                  <td></td>
                                   <td>
                                       <telerik:RadDatePicker ID="RadDatePicker19" runat="server"></telerik:RadDatePicker>
                                    </td>
                                    <td>
                                        <telerik:RadDatePicker ID="RadDatePicker20" runat="server"></telerik:RadDatePicker>
                                    </td>
                               </tr> 
                        </table>
                          

                    </telerik:RadPageView>
                         </telerik:RadMultiPage>

                </td>
            </tr>      
                <tr>
                    <td>
                         <telerik:RadGrid ID="RadGrid2" BackColor="Gray" Width="100%" Height="200px" runat="server"></telerik:RadGrid>
                    </td>
                    <td>
                         <telerik:RadGrid ID="RadGrid1" BackColor="Gray" Width="100%" Height="200px" runat="server"></telerik:RadGrid>
                    </td>
                </tr>
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

