<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="Normanet_app.Index" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>..:: Normanet Web ::..</title>
    <link href="css/cssGeneral.css" rel="stylesheet" />
    <link href="css/cssCuentaRegresiva.css" rel="stylesheet" />
    <link href="js/plugins/jquery.bubbleinfo/css/cssBubbleInfo.css" rel="stylesheet" />
    <link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/cssIndex.css" rel="stylesheet" />

    <script language="javascript" type="text/javascript" src="../js/jQueryFrameWork.js"></script>
    <script language="javascript" type="text/javascript" src="../js/bootstrap/js/bootstrap.min.js"></script>
    <script language="javascript" type="text/javascript" src="../js/plugins/jquery.bubbleinfo/jquery.bubbleinfo.js"></script>
    <script language="javascript" type="text/javascript" src="../js/Index.js"></script>
    <script language="javascript" type="text/javascript" src="../js/jsGeneral.js"></script>
</head>
   <body onload="nobackbutton(); ComprobarBrowserSV();">
       <form id="form1" runat="server">
           <telerik:RadScriptManager Runat="server"></telerik:RadScriptManager>
           <telerik:RadSkinManager ID="SkinManager" runat="server" Skin="Vista"></telerik:RadSkinManager>
           <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecoratedControls="All" EnableRoundedCorners="False" SkinID="SkinManager" />
           <telerik:RadAjaxLoadingPanel ID="ralpLoad" runat="server" SkinID="SkinManager"></telerik:RadAjaxLoadingPanel>
           <telerik:RadPersistenceManager ID="RadPersistenceManager1" runat="server">
               <PersistenceSettings>
                   <telerik:PersistenceSetting ControlID="rapMDI" />
               </PersistenceSettings>
           </telerik:RadPersistenceManager>

           <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
               <AjaxSettings>
                   <telerik:AjaxSetting AjaxControlID="rbbRibbon">
                       <UpdatedControls>
                           <telerik:AjaxUpdatedControl ControlID="rbbRibbon" />
                           <telerik:AjaxUpdatedControl ControlID="rapMDI" LoadingPanelID="ralpLoad" />
                       </UpdatedControls> 
                   </telerik:AjaxSetting>
               </AjaxSettings>
           </telerik:RadAjaxManager>
           <div class="canvas">
               <telerik:RadToolBar ID="rtbTitulo" runat="server" Width="100%" style="text-align:center;" BorderStyle="None" BorderWidth="0px" SkinID="SkinManager">
                   <Items>
                       <telerik:RadToolBarButton>
                           <ItemTemplate>
                               <asp:Label ID="lblTitulo" runat="server" Text="..:: Normanet ::.." Font-Bold="True"></asp:Label>
                           </ItemTemplate>
                       </telerik:RadToolBarButton>
                   </Items>
               </telerik:RadToolBar>
               <telerik:RadRibbonBar ID="rbbRibbon" runat="server" Minimized="true" SkinID="SkinManager" Width="100%" EnableMinimizing="True"  EnableQuickAccessToolbar="False" RenderInactiveContextualTabGroups="False" SelectedTabIndex="0"
                   OnButtonClick="rbbRibbon_ButtonClick" >
                   <Tabs>
                      <telerik:RibbonBarTab ID="RibbonBarTab1" runat="server" Text="Catálogos"  >
                         <telerik:RibbonBarGroup ID="RibbonBarGroup1" runat="server" Text="Catálogos" >
                            <Items>
                               <telerik:RibbonBarButton Size="Medium" Text=" Comites" ImageUrl="Imagenes/Botoneras/Catalogos2.png"  Value="1" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Cargos" ImageUrl="Imagenes/Botoneras/Catalogos2.png"  Value="2" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Categorias" ImageUrl="Imagenes/Botoneras/Catalogos2.png"  Value="3" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Cat. de revisión editorial" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="4" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Puntos de revisión editorial" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="5" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Representación" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="6" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Sectores" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="7" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Directorio" ImageUrl="Imagenes/Botoneras/Catalogos2.png"  Value="8" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Remitentes" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="9" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Nombramientos" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="10" />
                               <telerik:RibbonBarButton Size="Medium" Text=" Reporte asistencia" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="11" />
                                <telerik:RibbonBarButton Size="Medium" Text="Titulares y Suplentes" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="12" />
                                <telerik:RibbonBarButton Size="Medium" Text="Propiedades" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="42" />
                                <telerik:RibbonBarButton Size="Medium" Text="Etapas" ImageUrl="Imagenes/Botoneras/Catalogos2.png" Value="43" />
                            </Items>
                         </telerik:RibbonBarGroup>
                      </telerik:RibbonBarTab>
                      <telerik:RibbonBarTab ID="RibbonBarTab2" runat="server" Text="Procesos">
                         <telerik:RibbonBarGroup ID="RibbonBarGroup11" runat="server" Text="Admon PNN">
                            <Items>
                                <telerik:RibbonBarButton Size="Medium" Text="PNN" ImageUrl="Imagenes/Botoneras/pnn.png" Value="13" />
                                <telerik:RibbonBarButton Size="Medium" Text="PNN Temas" ImageUrl="Imagenes/Botoneras/pnn.png" Value="14" />
                                <telerik:RibbonBarButton Size="Medium" Text="Traspaso temas planes" ImageUrl="Imagenes/Botoneras/pnn.png" Value="15" />
                               
                            </Items>
                         </telerik:RibbonBarGroup>
                          <telerik:RibbonBarGroup ID="RibbonBarGroup2" runat="server" Text="Avance Temas">
                            <Items>
                                <telerik:RibbonBarButton Size="Medium" Text="Asig. de revisión editorial" ImageUrl="Imagenes/Botoneras/pnn.png" Value="23" />
                                <telerik:RibbonBarButton Size="Medium" Text="Revisión editorial" ImageUrl="Imagenes/Botoneras/pnn.png" Value="24" />
                                <telerik:RibbonBarButton Size="Medium" Text="Autorizar Rev. Editorial" ImageUrl="Imagenes/Botoneras/pnn.png" Value="25" />
                                <telerik:RibbonBarButton Size="Medium" Text="Inspección y Pruebas" ImageUrl="Imagenes/Botoneras/pnn.png" Value="26" />
                            </Items>
                              </telerik:RibbonBarGroup>
                          <telerik:RibbonBarGroup ID="RibbonBarGroup3"  runat="server" Text="Normas">
                            <Items>
                                <telerik:RibbonBarButton Size="Large" Text=" Cat. de Normas"  ImageUrl="Imagenes/Botoneras/law2.png" Value="20" />
                            </Items>
                        </telerik:RibbonBarGroup>
                          <telerik:RibbonBarGroup ID="RibbonBarGroup4" runat="server" Text="Comentarios">
                            <Items>
                                <telerik:RibbonBarButton Size="Medium" Text="Procedimiento Normal" ImageUrl="Imagenes/Botoneras/pnn.png" Value="27" />
                                <telerik:RibbonBarButton Size="Medium" Text="Resolución de Comentarios" ImageUrl="Imagenes/Botoneras/pnn.png" Value="28" />
                                <telerik:RibbonBarButton Size="Medium" Text="Procedimiento Alternativo" ImageUrl="Imagenes/Botoneras/pnn.png" Value="29" />
                                <telerik:RibbonBarButton Size="Medium" Text="Resolución de Comentarios Proc. Alt." ImageUrl="Imagenes/Botoneras/pnn.png" Value="30" />
                            </Items>
                        </telerik:RibbonBarGroup>
                          <telerik:RibbonBarGroup ID="RibbonBarGroup5" runat="server" Text="Noticias">
                            <Items>
                                 <telerik:RibbonBarButton Size="Large" Text="Noticias" ImageUrl="Imagenes/Botoneras/noticias2.png" Value="17" />
                            </Items>
                        </telerik:RibbonBarGroup>
                          <telerik:RibbonBarGroup ID="RibbonBarGroup6" runat="server" Text="Prog. Proxima Sesiones">
                            <Items>
                                <telerik:RibbonBarButton Size="Medium" Text="Cerrar sesiones realizadas" ImageUrl="Imagenes/Botoneras/pnn.png" Value="31" />
                                <telerik:RibbonBarButton Size="Medium" Text="Historial de sesiones" ImageUrl="Imagenes/Botoneras/pnn.png" Value="32" />
                                <telerik:RibbonBarButton Size="Medium" Text="Prog. sesiones periódicas" ImageUrl="Imagenes/Botoneras/pnn.png" Value="21" />
                                <telerik:RibbonBarButton Size="Large" Text="Prog. próximas sesiones" ImageUrl="Imagenes/Botoneras/law2.png" Value="22" />
                            </Items>
                        </telerik:RibbonBarGroup>
                          <telerik:RibbonBarGroup ID="RibbonBarGroup7" runat="server" Text="Documentos">
                            <Items>
                                 <telerik:RibbonBarButton Size="Large" Text="Gestión de Doctos" ImageUrl="Imagenes/Botoneras/noticias2.png" Value="19" />
                            </Items>
                        </telerik:RibbonBarGroup>


                      </telerik:RibbonBarTab>
                       <telerik:RibbonBarTab ID="RibbonBarTab3" runat="server" Text="Consultas">
                         <telerik:RibbonBarGroup ID="RibbonBarGroup8" runat="server" Text="Consultas">
                            <Items>
                               <telerik:RibbonBarButton Size="Large" Text="Consulta comentarios" ImageUrl="Imagenes/Botoneras/buscar2.png"  Value="33" />
                                <telerik:RibbonBarButton Size="Large" Text="Consulta fechas" ImageUrl="Imagenes/Botoneras/buscar2.png"  Value="34" />
                                <telerik:RibbonBarButton Size="Large" Text="Consulta normas" ImageUrl="Imagenes/Botoneras/buscar2.png"  Value="35" />
                                <telerik:RibbonBarButton Size="Large" Text="Consulta sesiones" ImageUrl="Imagenes/Botoneras/buscar2.png"  Value="36" />
                                <telerik:RibbonBarButton Size="Large" Text="Consulta temas" ImageUrl="Imagenes/Botoneras/buscar2.png"  Value="37" />
                            </Items>
                         </telerik:RibbonBarGroup>
                      </telerik:RibbonBarTab>
                       <telerik:RibbonBarTab ID="RibbonBarTab4" runat="server" Text="Página Web">
                         <telerik:RibbonBarGroup ID="RibbonBarGroup9" runat="server" Text="Página Web">
                            <Items>
                               <telerik:RibbonBarButton Size="Large" Text="Index" ImageUrl="Imagenes/Botoneras/webMenu.png"  Value="38" />
                                <telerik:RibbonBarButton Size="Large" Text="Generador de menú" ImageUrl="Imagenes/Botoneras/webMenu.png"  Value="39" />
                                <telerik:RibbonBarButton Size="Large" Text="Gestor de páginas" ImageUrl="Imagenes/Botoneras/webMenu.png"  Value="40" />
                            </Items>
                         </telerik:RibbonBarGroup>
                      </telerik:RibbonBarTab>
                       <telerik:RibbonBarTab ID="RibbonBarTab5" runat="server" Text="Administración">
                         <telerik:RibbonBarGroup ID="RibbonBarGroup10" runat="server" Text="Administración">
                            <Items>
                               <telerik:RibbonBarButton Size="Large" Text="Grupos" ImageUrl="Imagenes/Botoneras/groupMenu.png"  Value="41" />
                                 </Items>
                         </telerik:RibbonBarGroup>
                      </telerik:RibbonBarTab>

                   </Tabs>

                   <KeyboardNavigationSettings CommandKey="Alt"></KeyboardNavigationSettings>
               </telerik:RadRibbonBar>
               <div id="Sesion"></div>
               <div id="UsrSesion" class="UsrSesion" >
                   <asp:HiddenField ID="hidUsuario" runat="server" />
                   <asp:HiddenField ID="hidInicializarNotificaciones" runat="server" />
                   <asp:Panel ID="pnlUsuario" runat="server" CssClass="IconUsuario" Visible="true" Width="400px" Height="20px" style="padding-right:20px;">
                         <nav class="navbar navbar-right" >
                          <div class="container-fluid">
                            <div>
                              <ul class="nav navbar-nav">
                                <li>
                                    <a  id="dropdownMenuNotif" class="dropdown-toggle count-info" data-toggle="dropdown" aria-expanded="false" style="padding:3px 8px 3px 8px;">
                                        <img alt="" id="imgNotif" src="Imagenes/Formularios/Bell.png" />
                                        <span id="NotifTotal" class="label label-danger label-as-badge" style="font-size:10px; font-weight:bold;"></span>
                                    </a>
                                     <ul id="NotificacionesUsuario" class="dropdown-menu alert-dropdown list-group" style="width:250px;" aria-labelledby="dropdownMenuNotif">
                                     </ul>
                                </li> 
                                <li class="dropdown">
                                    <div class="Bubble" style="padding:3px 8px 3px 8px;">
                                        <div style="width: 16px;">
                                            <img alt="" src="Imagenes/Formularios/Employee.png" />
                                        </div>
                                        <div style="width: 300px; text-align: center; display: none;">
                                            <asp:Label ID="lblUsuario" runat="server" Text="" Font-Bold="true" Font-Size="11px">
                                            </asp:Label>
                                        </div>
                                    </div>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </nav>

                    </asp:Panel>                   
                </div>

           </div>
           <div id="AreaRestringida">
               <div id="LogoAnce"></div>
           </div>
           <telerik:RadWindowManager runat="server" RestrictionZoneID="AreaRestringida" ID="rdWndMngPrincipal" EnableShadow="true"  
                ShowOnTopWhenMaximized="false" ShowContentDuringLoad="false"  SkinID="SkinManager"
                EnableEmbeddedScripts="true" VisibleStatusbar="false" VisibleTitlebar="true" RenderMode="Classic" />

           <telerik:RadCodeBlock ID="CodeBlock" runat="server">
              <script type="text/javascript">
                  function OpenWindow(URL, Titulo, Width, Height) {
                     Left = ($("#AreaRestringida").width() / 2) - (Width/2);

                     var wnd = window.radopen(URL, null, Width, Height, Left, 50);
                     wnd.set_title(Titulo);

                     return false;
                 }
              </script>
           </telerik:RadCodeBlock>
           <asp:UpdatePanel ID="udpCBJquery" runat="server"></asp:UpdatePanel>
           
       </form>
   </body>
</html>
