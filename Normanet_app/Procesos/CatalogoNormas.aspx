<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="CatalogoNormas.aspx.vb" Inherits="Normanet_app.CatalogoNormas" %>
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
                                    <telerik:RadToolBarButton Enabled="true" Value="2" ImageUrl="../Imagenes/Botoneras/Edit.png" Text="Editar"  ToolTip="Editar"/>
                                    <telerik:RadToolBarButton Enabled="true" Value="3" ImageUrl="../Imagenes/Botoneras/redo.png" Text="Deshacer"  ToolTip="Deshacer"/>
                                    <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png" Text="Guardar"  ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                                    <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                                    <telerik:RadToolBarButton Enabled="true" Value="7" ImageUrl="../Imagenes/Botoneras/delete_32.png" Text="Eliminar"  ToolTip="Eliminar"/>
                                    <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir"  ToolTip="Salir"/>
                                </Items>
                            </telerik:RadToolBar>
        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        
        <div>
       <telerik:RadTabStrip Font-Size="10px" RenderMode="Lightweight" runat="server" ID="RadTabStrip1"  MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Vista">
            <Tabs>
                <telerik:RadTab  Text="NMX-ANCE" Width="150px" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Quincenal/Cancelación" Width="150px" Height="10px"></telerik:RadTab>
                <telerik:RadTab Text="Caracteristicas" Width="150px" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Preview/Aclaraciones" Width="150px" Height="10px" ></telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
        <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="outerMultiPage">
            <telerik:RadPageView runat="server" ID="RadPageView1">
               <table style="width: 100%; height:100px;" class="SinBorde">
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel1" Text="Clasificación:" runat="server"></telerik:RadLabel>
                        </th>
                        <th>
                            <telerik:RadTextBox ID="RadTextBox1" runat="server"></telerik:RadTextBox>
                        </th>
                        <th>
                            <telerik:RadLabel ID="RadLabel2" Text="Concordancia con Normas Internacionales:" runat="server"></telerik:RadLabel>
                        </th>
                        <th>
                            <telerik:RadLabel ID="RadLabel3" Text="Clasificación:" runat="server"></telerik:RadLabel>
                        </th>
                        <th>
                            <telerik:RadTextBox ID="RadTextBox2" Width="60px" runat="server"></telerik:RadTextBox><asp:Button ID="Button1" runat="server" Text="Agregar" />
                        </th>
                      </tr>
                      <tr>
                        <td style="text-align:center">
                            <asp:CheckBox ID="CheckBox3" runat="server" Text="Normas Canceladas" />
                        </td>
                        <td></td>
                        <td style="text-align:center">
                            <asp:CheckBox ID="CheckBox4" runat="server" Text="" />
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel4" Text="Título:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox3" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <td>
                            <telerik:RadLabel ID="RadLabel19" Text="Cancela A:" runat="server"></telerik:RadLabel>
                        </td>
                        <td colspan="2">
                           <telerik:RadGrid ID="RadGrid1" BackColor="Gray"  Width="100%" Height="225px" runat="server"></telerik:RadGrid>
                        </td>
                        <td colspan="2">
                             <telerik:RadGrid ID="RadGrid2" BackColor="Gray" Width="100%" Height="225px" runat="server"></telerik:RadGrid>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel5" Text="Responsable:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDropDownList ID="RadDropDownList1" runat="server"></telerik:RadDropDownList>
                        </td>
                        <td>
                            <telerik:RadLabel ID="RadLabel11" Text="Declaratoria de Vigencia:" runat="server"></telerik:RadLabel>
                            <telerik:RadDatePicker ID="RadDatePicker1" runat="server"></telerik:RadDatePicker>
                        </td>
                        <td>
                            <telerik:RadLabel ID="RadLabel12" Text="Declaratoria de Cancelación:" runat="server"></telerik:RadLabel>
                            <telerik:RadDatePicker ID="RadDatePicker2" runat="server"></telerik:RadDatePicker>
                        </td>
                        <td>
                            <telerik:RadLabel ID="RadLabel15" Text="Observaciones:" runat="server"></telerik:RadLabel>
                             <textarea id="TextArea4" cols="20" rows="2"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel6" Text="TIE:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <textarea id="TextArea1" cols="20" rows="2"></textarea>
                        </td>
                        <td>
                            <telerik:RadLabel ID="RadLabel13" Text="Fecha de Entrada en Vigor:" runat="server"></telerik:RadLabel>
                            <telerik:RadDatePicker ID="RadDatePicker11" runat="server"></telerik:RadDatePicker>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel18" Text="Bibliografia:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <textarea id="TextArea6" cols="20" rows="2"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel7" Text="TII:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <textarea id="TextArea2" cols="20" rows="2"></textarea>
                        </td>
                        <td></td>
                        <th>
                            <telerik:RadLabel ID="RadLabel14" Text="Pertenece a:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox5" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel16" Text="Página:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox4" runat="server"></telerik:RadTextBox>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel17" Text="Objetivo y Campo de Aplicación:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="4">
                             <textarea id="TextArea5" style="width:100%" cols="20" rows="2"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                    </table>
                <br />


                
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView2">
                
                <table class="SinBorde">
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel8" Text="Revisión Sistemática:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox6" runat="server"></telerik:RadTextBox>
                        </td>
                        <td></td>
                        <th>
                             <telerik:RadLabel ID="RadLabel9" Text="Fecha de inicio de consulta pública:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox7" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel10" Text="Declaratoria de Cancelación:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox8" runat="server"></telerik:RadTextBox>
                        </td>
                        <td></td>
                        <th>
                             <telerik:RadLabel ID="RadLabel20" Text="Fecha límite de consulta pública:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox9" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel21" Text="Notificación de Ratificación:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker7" runat="server"></telerik:RadDatePicker>
                        </td>
                        <td></td>
                        <th>
                             <telerik:RadLabel ID="RadLabel22" Text="Notificación de Ratificación:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker8" runat="server"></telerik:RadDatePicker>
                        </td>
                      </tr>
                    </table>
                

            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView3">
                <table style="width:100%" class="SinBorde">
                  <tr>
                    <td rowspan="2" style="width:100px">
                        <telerik:RadCheckBox ID="RadCheckBox1" runat="server" Text="Norma Adoptada:"></telerik:RadCheckBox>
                    </td>
                    <th style="width:100px">
                        <telerik:RadLabel ID="RadLabel23" Text="Clasificación" runat="server"></telerik:RadLabel>
                    </th>
                    <td style="width:100px">
                        <telerik:RadTextBox ID="RadTextBox10" runat="server"></telerik:RadTextBox>
                    </td>
                    <td style="width:50px">
                        <telerik:RadButton ID="RadButton1" runat="server" Text="Agregar"></telerik:RadButton>
                    </td>
                    <td rowspan="5">
                         <telerik:RadGrid ID="RadGrid3" BackColor="Gray" Width="300px" Height="100px" runat="server"></telerik:RadGrid>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel24" Text="Título:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox11" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                      <td></td>
                      <td></td>
                  </tr>
                </table>
                <table style="width: 100%;" class="SinBorde">
                  <tr>
                    <td rowspan="4" style="width:100px">
                         <telerik:RadCheckBox ID="RadCheckBox2" runat="server" Text="Norma Armonizada:"></telerik:RadCheckBox>
                    </td>
                    <th style="width:100px">
                        <telerik:RadLabel ID="RadLabel25" Text="Clasificación UL:" runat="server"></telerik:RadLabel>
                    </th>
                    <td style="width:100px">
                        <telerik:RadTextBox ID="RadTextBox12" runat="server"></telerik:RadTextBox>
                    </td>
                    <td style="width:50px">
                        <telerik:RadButton ID="RadButton4" runat="server" Text="Agregar"></telerik:RadButton>
                    </td>
                    <td rowspan="4">
                         <telerik:RadGrid ID="RadGrid4" BackColor="Gray" Width="300px" Height="100px" runat="server"></telerik:RadGrid>
                    </td>
                  </tr>
                  <tr>
                     <th>
                        <telerik:RadLabel ID="RadLabel26" Text="Título UL:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox13" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                     <th>
                        <telerik:RadLabel ID="RadLabel27" Text="Clasificación CSA:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox14" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                  </tr>
                  <tr>
                     <th>
                        <telerik:RadLabel ID="RadLabel28" Text="Título CSA:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox15" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                  </tr>
                </table>
                 <table style="width:100%" class="SinBorde">
                  <tr>
                    <td rowspan="2" style="width:100px">
                        <telerik:RadCheckBox ID="RadCheckBox3" runat="server" Text="Norma Referenciada en una NOM:"></telerik:RadCheckBox>
                    </td>
                    <th style="width:100px">
                        <telerik:RadLabel ID="RadLabel29" Text="Clasificación" runat="server"></telerik:RadLabel>
                    </th>
                    <td style="width:100px">
                        <telerik:RadTextBox ID="RadTextBox16" runat="server"></telerik:RadTextBox>
                    </td>
                    <td style="width:50px">
                        <telerik:RadButton ID="RadButton2" runat="server" Text="Agregar"></telerik:RadButton>
                    </td>
                    <td rowspan="5">
                         <telerik:RadGrid ID="RadGrid5" BackColor="Gray" Width="300px" Height="100px" runat="server"></telerik:RadGrid>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel30" Text="Título:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox17" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                      <td></td>
                      <td></td>
                  </tr>
                </table>
                <table style="width:100%" class="SinBorde">
                  <tr>
                    <td rowspan="2" style="width:100px">
                        <telerik:RadCheckBox ID="RadCheckBox4" runat="server" Text="Norma Referenciada en una NMX:"></telerik:RadCheckBox>
                    </td>
                    <th style="width:100px">
                        <telerik:RadLabel ID="RadLabel31" Text="Clasificación" runat="server"></telerik:RadLabel>
                    </th>
                    <td style="width:100px">
                        <telerik:RadTextBox ID="RadTextBox18" runat="server"></telerik:RadTextBox>
                    </td>
                    <td style="width:50px">
                        <telerik:RadButton ID="RadButton3" runat="server" Text="Agregar"></telerik:RadButton>
                    </td>
                    <td rowspan="5">
                         <telerik:RadGrid ID="RadGrid6" BackColor="Gray" Width="300px" Height="100px" runat="server"></telerik:RadGrid>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel32" Text="Título:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox19" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                      <td></td>
                      <td></td>
                  </tr>
                </table>
                <table style="width:100%" class="SinBorde">
                  <tr>
                    <td rowspan="2" style="width:100px">
                        <telerik:RadCheckBox ID="RadCheckBox5" runat="server" Text="Norma Referenciada en una NRF:"></telerik:RadCheckBox>
                    </td>
                    <th style="width:100px">
                        <telerik:RadLabel ID="RadLabel41" Text="Clasificación" runat="server"></telerik:RadLabel>
                    </th>
                    <td style="width:100px">
                        <telerik:RadTextBox ID="RadTextBox28" runat="server"></telerik:RadTextBox>
                    </td>
                    <td style="width:50px">
                        <telerik:RadButton ID="RadButton5" runat="server" Text="Agregar"></telerik:RadButton>
                    </td>
                    <td rowspan="5">
                         <telerik:RadGrid ID="RadGrid7" BackColor="Gray" Width="300px" Height="100px" runat="server"></telerik:RadGrid>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel42" Text="Título:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox29" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                      <td></td>
                      <td></td>
                  </tr>
                </table>
                <table style="width: 100%;" class="SinBorde">
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel33" Text="Fecha de Inicio de Desarrollo:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox20" runat="server"></telerik:RadTextBox>
                        </td>
                       <th>
                            <telerik:RadLabel ID="RadLabel34" Text="Fecha de aprobación:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox21" runat="server"></telerik:RadTextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel35" Text="Fecha de Envio a DGN:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox22" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel36" Text="Fecha de Aprobación (CT, GT):" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox23" runat="server"></telerik:RadTextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel37" Text="Fecha a Resolución de Comentarios:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox24" runat="server"></telerik:RadTextBox>
                        </td>
                        <td></td>
                        <td></td>
                      </tr>
                    </table>
                <table style="width: 100%"; class="SinBorde">
                    <tr>
                        <td colspan="6">
                            <telerik:RadLabel ID="RadLabel43" Text="Costos" runat="server"></telerik:RadLabel>
                        </td>

                    </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel38" Text="Impresa:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox25" runat="server"></telerik:RadTextBox>
                        </td>
                       <th>
                            <telerik:RadLabel ID="RadLabel39" Text="Corporativa:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox26" runat="server"></telerik:RadTextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel40" Text="Personal:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox27" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      
                    </table>
   

            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView4">
  
               <table style="width: 100%; height:100px;" class="SinBorde">
                  <tr>
                    <td colspan="6">
                        <telerik:RadLabel ID="RadLabel44" Text="Aclaración Uno:" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel45" Text="Fecha:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList2" runat="server"></telerik:RadDropDownList>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel46" Text="Documento:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                  </tr>
                    <tr>
                    <td colspan="6">
                        <telerik:RadLabel ID="RadLabel47" Text="Aclaración dos:" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel48" Text="Fecha:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList3" runat="server"></telerik:RadDropDownList>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel49" Text="Documento:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                  </tr>
                    <tr>
                    <td colspan="6">
                        <telerik:RadLabel ID="RadLabel50" Text="Documento de la Norma:" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel51" Text="Documento de la norma:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:FileUpload ID="FileUpload4" runat="server" />
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                  </tr>
                </table>
               

            </telerik:RadPageView>
            
        </telerik:RadMultiPage>
        </div>

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
                    <asp:ImageButton ID="cmdAceptar" runat="server" ImageUrl="../Imagenes/Formularios/Check.png" ToolTip="Aceptar" />
                    <asp:ImageButton ID="cmdCancelar" runat="server" ImageUrl="../Imagenes/Formularios/Cancel.png" ToolTip="Cancelar" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>  

</asp:Content>