<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="ProgramarProximasSesiones.aspx.vb" Inherits="Normanet_app.ProgramarProximasSesiones" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="6" ImageUrl="../Imagenes/Botoneras/inhabilitar.png" Text="Inhactivar" ToolTip="Inhactivar"/>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir" ToolTip="Salir"/>
                
                
            </Items>
        </telerik:RadToolBar>
        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>
            <table style="width: 100%; height:100px;" class="SinBorde">
              <tr>
                <td rowspan="4">
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
                    <table style="width: 100%; height:100px;" class="SinBorde">
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel1" Text="Asunto:" runat="server"></telerik:RadLabel>
                            </th>
                            <td colspan="3">
                                <telerik:RadTextBox Width="100%" ID="RadTextBox1" runat="server"></telerik:RadTextBox>
                            </td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel2" Text="Lugar:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadTextBox Width="100%" ID="RadTextBox2" runat="server"></telerik:RadTextBox>
                            </td>
                            <th>
                                <telerik:RadLabel ID="RadLabel3" Text="Solicitar Sala a ANCE:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </td>
                          </tr>
                          <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel4" Text="Sala:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadDropDownList ID="RadDropDownList1" runat="server"></telerik:RadDropDownList>
                            </td>
                            <th>
                                <telerik:RadLabel ID="RadLabel5" Text="Sala:" runat="server"></telerik:RadLabel>
                            </th>
                            <td>
                                <telerik:RadDropDownList ID="RadDropDownList2" runat="server"></telerik:RadDropDownList>
                            </td>
                          </tr>
                        </table>
                </td>
              </tr>
              <tr>
                <td>
                    <table style="width: 100%; height:100px;" class="SinBorde">
                          <tr>
                            <th>
                                <asp:RadioButton ID="RadioButton1" Text="Diariamente" runat="server" />
                            </th>
                            <th>
                               
                            </th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                          </tr>
                          <tr>
                            <td>
                                <asp:RadioButton ID="RadioButton2" Text="Semanalmente" runat="server" />
                            </td>
                            <td>
                                <telerik:RadLabel ID="RadLabel6" Text="Cada:" runat="server"></telerik:RadLabel>
                            </td>
                            <td>
                                <telerik:RadNumericTextBox ID="RadNumericTextBox1" runat="server"></telerik:RadNumericTextBox>
                            </td>
                            <td>
                                <telerik:RadLabel ID="RadLabel7" Text="de cada:" runat="server"></telerik:RadLabel>
                            </td>
                            <td>
                                 <telerik:RadNumericTextBox ID="RadNumericTextBox2" runat="server"></telerik:RadNumericTextBox>
                            </td>
                            <td>
                                <telerik:RadLabel ID="RadLabel8" Text="meses" runat="server"></telerik:RadLabel>
                            </td>
                            <td></td>
                          </tr>
                          <tr>
                            <td>
                                <asp:RadioButton ID="RadioButton3" Text="Mensualmente" runat="server" />
                            </td>
                            <td>
                                 <asp:CheckBox ID="CheckBox5" runat="server" Text="Lunes" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Martes" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="Miercoles" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox4" runat="server" Text="Jueves" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox6" runat="server" Text="Viernes" />
                            </td>
                            <td></td>
                          </tr>
                        </table>

                </td>
              </tr>
              <tr>
                <td>
                    <table style="width: 100%; height:100px;" class="SinBorde">
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel9" Text="Comienza a:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadNumericTextBox ID="RadNumericTextBox3" runat="server"></telerik:RadNumericTextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel10" Text="Termina a:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadNumericTextBox ID="RadNumericTextBox4" runat="server"></telerik:RadNumericTextBox>
                        </td>
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel11" Text="Fecha Inicio:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker1" runat="server"></telerik:RadDatePicker>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel12" Text="Fecha Final:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                           <telerik:RadDatePicker ID="RadDatePicker2" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                    </table>


                </td>
              </tr>
              <tr>
                <td>
                    <table>
                        <tr>
                            <th>
                                <telerik:RadLabel ID="RadLabel13" Text="Responsable:" runat="server"></telerik:RadLabel>
                            </th>
                            <td style="width:200px" >
                                <telerik:RadDropDownList Width="100%" ID="RadDropDownList3" runat="server"></telerik:RadDropDownList>
                            </td>
                            <td>
                              <asp:Image ImageUrl="../Imagenes/Botoneras/calendario.png"  runat="server" AlternateText="Generar" />
                            </td>
                        </tr>
                    </table>
                </td>
              </tr>
               <tr>
                   <td style="height:200px" colspan="7">
                       <telerik:RadGrid ID="RadGrid2" BackColor="Gray"  Width="100%" Height="200px" runat="server"></telerik:RadGrid>
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



