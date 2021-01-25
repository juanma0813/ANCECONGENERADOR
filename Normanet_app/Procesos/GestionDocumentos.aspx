<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="GestionDocumentos.aspx.vb" Inherits="Normanet_app.GestionDocumentos" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="0" ImageUrl="../Imagenes/Botoneras/ver.png" Text="Ver" ToolTip ="Ver"/>
                <telerik:RadToolBarButton Enabled="true" Value="0" ImageUrl="../Imagenes/Botoneras/inhabilitar.png" Text="Inac/Act" ToolTip ="Inac/Act"/>   
                <telerik:RadToolBarButton Enabled="true" Value="1" ImageUrl="../Imagenes/Botoneras/save.png" Text="Guardar" ToolTip="Guardar" ValidationGroup="PersonalInfoGroup"/>
                <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir" ToolTip="Salir"/>
            </Items>
        </telerik:RadToolBar>
        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>
       <telerik:RadTabStrip Font-Size="Small" RenderMode="Lightweight" runat="server" ID="RadTabStrip1"  MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Vista">
            <Tabs>
                <telerik:RadTab Text="Actualización DT" Font-Size="12px" Width="200px" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Temas" Font-Size="12px" Width="100px" Height="10px"></telerik:RadTab>
                <telerik:RadTab Text="Noticias" Font-Size="12px" Width="100px" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Catálogo de Normas" Font-Size="12px" Width="200px" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Sesiones" Font-Size="12px" Width="100px" Height="10px" ></telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
        <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="outerMultiPage">
            <telerik:RadPageView runat="server" ID="RadPageView1">
               <br />
                <table style="width: 100%; height:100px;" class="SinBorde">
                  <tr>
                    <td rowspan="5">
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
                        <telerik:RadLabel ID="RadLabel1" Text="Clasificación:" runat="server"></telerik:RadLabel>
                    </th>
                    <th colspan="3">
                        <telerik:RadTextBox Width="100%" ID="RadTextBox1" runat="server"></telerik:RadTextBox>
                    </th>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel2" Text="Título:" runat="server"></telerik:RadLabel>
                    </th>
                    <td colspan="3">
                        <textarea id="TextArea1" cols="20" rows="2"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel3" Text="Pertenece:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox2" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel4" Text="Fecha de inicio:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox3" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <td>
                        <telerik:RadLabel ID="RadLabel5" Text="Archivo:" runat="server"></telerik:RadLabel>
                    </td>
                    <td colspan="3">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4">
                           <telerik:RadGrid ID="RadGrid2" BackColor="Gray" Width="100%" Height="225px" runat="server"></telerik:RadGrid>
                    </td>
                  </tr>
                </table>
                
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView2">
                <br />
                <table style="width: 100%; height:100px;" class="SinBorde">
                  <tr>
                    <td rowspan="13">
                        <asp:TextBox ID="TextBox1" runat="server" Width="98%" placeholder="Buscar..." ></asp:TextBox>
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
                    <td colspan="2">
                        <telerik:RadLabel ID="RadLabel15" Text="DT" runat="server"></telerik:RadLabel>

                    </td>
                  </tr>
                  <tr>
                    <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Documento de trabajo final:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox5" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                        <telerik:RadLabel ID="RadLabel6" Text="Procedimiento Almacenado" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Minuta de terminacion de procedimiento alternativo:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox6" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Matriz de Comentarios:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox7" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                        <telerik:RadLabel ID="RadLabel14" Text="AnteProyecto" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton5" runat="server" Text="Acta aprobacion final:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox8" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                   <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton6" runat="server" Text="Minuta de aprobacion:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox9" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                   <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton7" runat="server" Text="Anteproyecto final:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox10" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                        <telerik:RadLabel ID="RadLabel7" Text="Proyecto" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton8" runat="server" Text="Proyecto final:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox11" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton9" runat="server" Text="Acta aprobacion PROYF:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox12" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <th style="text-align:left; width:200px">
                        <asp:RadioButton ID="RadioButton10" runat="server" Text="Matriz de Comentarios:" />
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox13" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                </table>

            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView3">
                <br />
                <table style="width: 100%;" class="SinBorde">
                  <tr>
                      <th>
                          <telerik:RadLabel ID="RadLabel8" Text="Noticia:" runat="server"></telerik:RadLabel>
                      </th>
                      <td>
                          <telerik:RadDropDownList ID="RadDropDownList1" runat="server"></telerik:RadDropDownList>
                      </td>
                  </tr>
                    <tr>
                      <th>
                          <telerik:RadLabel ID="RadLabel9" Text="Documento:" runat="server"></telerik:RadLabel>
                      </th>
                      <td>
                          <telerik:RadTextBox ID="RadTextBox14" runat="server"></telerik:RadTextBox>
                      </td>
                  </tr>
                  
                </table>

            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView4">
                <br />
                <table style="width: 100%; height:100px;" class="SinBorde">
                  <tr>
                      <th>
                           <telerik:RadLabel ID="RadLabel10" Text="Normas:" runat="server"></telerik:RadLabel>
                      </th>
                      <td>
                            <telerik:RadTextBox ID="RadTextBox15" runat="server"></telerik:RadTextBox>
                      </td>
                  </tr>
                     <tr>
                      <td colspan="2">
                          
                      </td>
                  </tr>
                      <tr>
                      <td colspan="2">
                          <telerik:RadLabel ID="RadLabel11" Text="Aclaraciones:" runat="server"></telerik:RadLabel>
                      </td>
                  </tr>
                  <tr>
                      <th>
                          <asp:CheckBox ID="CheckBox1" runat="server" Text="Aclaración uno"/>
                      </th>
                      <td>
                          <telerik:RadTextBox ID="RadTextBox16" runat="server"></telerik:RadTextBox>
                      </td>
                  </tr>
                    <tr>
                      <th>
                          <asp:CheckBox ID="CheckBox2" runat="server" Text="Aclaración dos"/>
                      </th>
                      <td>
                          <telerik:RadTextBox ID="RadTextBox17" runat="server"></telerik:RadTextBox>
                      </td>
                  </tr>
                    <tr>
                      <th>
                          <asp:CheckBox ID="CheckBox3" runat="server" Text="Documento de la norma"/>
                      </th>
                      <td>
                          <telerik:RadTextBox ID="RadTextBox18" runat="server"></telerik:RadTextBox>
                      </td>
                  </tr>
                  
                </table>
                

            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView5">
                <br />
                <table style="width: 100%;" class="SinBorde">       
                  <tr>
                    <td rowspan="3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="98%" placeholder="Buscar..." ></asp:TextBox>
                                 <telerik:RadTreeView RenderMode="Classic" ID="RadTreeView3" runat="server"  Width="100%" Height="100%">
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
                        <telerik:RadLabel ID="RadLabel12" Text="Archivos de Sesiones" runat="server"></telerik:RadLabel>
                    </td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel13" Text="Tipo de Documento" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList2" runat="server"></telerik:RadDropDownList>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                           <telerik:RadGrid ID="RadGrid1" BackColor="Gray" Width="100%" Height="225px" runat="server"></telerik:RadGrid>
                    </td>
                  </tr>
                </table>
                

            </telerik:RadPageView>
            
        </telerik:RadMultiPage>
            <br />
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
