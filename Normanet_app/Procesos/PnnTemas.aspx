<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mpFormularios.Master" CodeBehind="PnnTemas.aspx.vb" Inherits="Normanet_app.PnnTemas" %>
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
                <telerik:RadToolBarButton Enabled="true" Value="9" ImageUrl="../Imagenes/Botoneras/pnn2.png" Text="Seguimiento"  ToolTip="Seguimiento"/>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/level.png" Text="C. Etapa"  ToolTip="C. Etapa"/>
                    <telerik:RadToolBarButton Enabled="false" Width="50px"></telerik:RadToolBarButton>
                <telerik:RadToolBarButton Enabled="true" Value="7" ImageUrl="../Imagenes/Botoneras/delete_32.png" Text="Eliminar"  ToolTip="Eliminar"/>
                <telerik:RadToolBarButton Enabled="true" Value="15" ImageUrl="../Imagenes/Botoneras/exit.png" Text="Salir"  ToolTip="Salir"/>
            </Items>
        </telerik:RadToolBar>
        <!-- ------------------------------C O N T E N I D O------------------------------------------->
        <br />
        <div>
       <telerik:RadTabStrip Font-Size="Small" RenderMode="Lightweight" runat="server" ID="RadTabStrip1"  MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Vista">
            <Tabs>
                <telerik:RadTab  Text="Programa de Trabajo" Font-Bold="true" Font-Size="10px" Width="150px" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Documento de Trabajo" Font-Bold="true" Font-Size="10px" Width="150px" Height="10px"></telerik:RadTab>
                <telerik:RadTab Text="Anteproyecto" Font-Size="10px" Font-Bold="true" Width="100px" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Proyecto" Font-Size="10px" Width="100px" Font-Bold="true" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Historial PNN" Font-Size="10px" Width="150px" Font-Bold="true" Height="10px" ></telerik:RadTab>
                <telerik:RadTab Text="Avance" Font-Size="10px" Width="100px"  Font-Bold="true" Height="10px"></telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
        <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="outerMultiPage">
            <telerik:RadPageView runat="server" ID="RadPageView1">
               <table style="width: 100%; height:100px;" class="SinBorde">
                  <tr>
                    <td rowspan="18" style="width:200px; height:100%">
                  <telerik:RadGrid RenderMode="Classic" Width="100%" Height="100%" ID="RadGrid2" runat="server" AllowPaging="True" AllowSorting="True"
                     AllowFilteringByColumn="True"
                     CellSpacing="0" GridLines="None">
                    <GroupingSettings CaseSensitive="false" />
                    <MasterTableView AutoGenerateColumns="false" TableLayout="Fixed">
                        <ColumnGroups>
                            <telerik:GridColumnGroup Name="GeneralInformation" HeaderText="Cargo"
                                HeaderStyle-HorizontalAlign="Center" />
                            <telerik:GridColumnGroup Name="SpecificInformation" HeaderText="Comité"
                                HeaderStyle-HorizontalAlign="Center" />
                            <telerik:GridColumnGroup Name="BookingInformation" HeaderText="CT"
                                HeaderStyle-HorizontalAlign="Center" />
                            <telerik:GridColumnGroup Name="BookingInformation" HeaderText="SC"
                                HeaderStyle-HorizontalAlign="Center" />
                            <telerik:GridColumnGroup Name="BookingInformation" HeaderText="GT"
                                HeaderStyle-HorizontalAlign="Center" />
                            <telerik:GridColumnGroup Name="BookingInformation" HeaderText="Sector"
                                HeaderStyle-HorizontalAlign="Center" />
                            <telerik:GridColumnGroup Name="BookingInformation" HeaderText="Representación"
                                HeaderStyle-HorizontalAlign="Center" />
                            <telerik:GridColumnGroup Name="BookingInformation" HeaderText="Consecutivo"
                                HeaderStyle-HorizontalAlign="Center" />
                        </ColumnGroups>
                        </MasterTableView>
                    </telerik:RadGrid>

                    </td>
                    <td colspan="2">
                        <table>
                            <tr>
                                <td style="text-align:right">
                                    % de avance programado
                                </td>
                                <td>
                                    <telerik:RadProgressBar ID="RadProgressBar1" runat="server"></telerik:RadProgressBar>
                                </td>

                            </tr>
                            <tr>
                                <td  style="text-align:right">
                                     % real de cada etapa
                                </td>
                                <td>
                                    <telerik:RadProgressBar ID="RadProgressBar2" runat="server"></telerik:RadProgressBar>
                                </td>
                            </tr>
                        </table>
                    </td>
                    
                  </tr>
                   <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel127" Text="Referencia:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox14" Width="100%" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel2" Text="Clasificación:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox2" Width="100%" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel3" Text="Numero tema:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox3" Width="100%" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel4" Text="Tipo de tema:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList1"  Width="100%" runat="server"></telerik:RadDropDownList>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel5" Text="Título:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <textarea id="TextArea1" cols="20" style="width:100%; height:100%" rows="2"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel6" Text="Objetivo:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <textarea id="TextArea2" cols="20" style="width:100%; height:100%"  rows="2"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel7" Text="Justificación:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <textarea id="TextArea3" style="width:100%; height:100%" cols="20" rows="2"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                        <table>
                            <tr>
                                <th>
                                    <telerik:RadLabel ID="RadLabel11" Text="Fecha de inicio:" runat="server"></telerik:RadLabel>
                                </th>
                                <td>
                                    <telerik:RadDatePicker ID="RadDatePicker1" runat="server"></telerik:RadDatePicker>
                                </td>
                                <th>
                                    <telerik:RadLabel ID="RadLabel12" Text="Fecha de fin:" runat="server"></telerik:RadLabel>
                                </th>
                                <td>
                                    <telerik:RadDatePicker ID="RadDatePicker2" runat="server"></telerik:RadDatePicker>
                                </td>
                            </tr>

                        </table>

                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadCheckBox ID="RadCheckBox3" runat="server" Text=""></telerik:RadCheckBox>
                    </th>
                    <td>
                        <telerik:RadLabel ID="RadLabel13" style="width:100%;" Text="Basado en normas internacionales:" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadCheckBox ID="RadCheckBox4" runat="server" Text=""></telerik:RadCheckBox>
                    </th>
                    <td>
                        <telerik:RadLabel ID="RadLabel14"  Text="Armonización de la norma:" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel15" Text="Justificación de armonización:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <textarea id="TextArea4" style="width:400px; height:100%"  cols="20" rows="2"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel16" Text="Revisión:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList3" runat="server"></telerik:RadDropDownList>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel17" Text="Pertenece:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList13" Width="100%" runat="server"></telerik:RadDropDownList>
                    </td>
                  </tr>

                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel18" Text="Responsable:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList14" Width="100%" runat="server"></telerik:RadDropDownList>
                    </td>
                  </tr>
                   <tr>
                       <td colspan="2">
                           <table>
                            <tr>
                                <th>
                                    <telerik:RadLabel ID="RadLabel19" Text="Proceso normal:" runat="server"></telerik:RadLabel>
                                </th>
                                <td>
                                    <asp:CheckBox runat="server"/>
                                </td>
                                <th>
                                    <telerik:RadLabel ID="RadLabel20" Text="Modificación técnica / Cancelación:" runat="server"></telerik:RadLabel>
                                </th>
                                <td>
                                    <asp:CheckBox runat="server"/>
                                </td>
                            </tr>

                        </table>

                    </td>
                   </tr>
                   <tr>
                       <th>
                           <telerik:RadLabel ID="RadLabel118" Text="ISC:" runat="server"></telerik:RadLabel>
                       </th>
                       <td>
                           <telerik:RadTextBox ID="RadTextBox57" Width="100%" runat="server"></telerik:RadTextBox>
                       </td>
                   </tr>
                </table>
                <br />


                
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<telerik:RadLabel ID="RadLabel45" Text="Documento de trabajo" runat="server"></telerik:RadLabel>
                <table class="SinBorde">
                    <tr>
                        <td colspan="5">
                            <table>
                            <tr>
                                <td style="text-align:right">
                                    % de avance programado
                                </td>
                                <td>
                                    <telerik:RadProgressBar ID="RadProgressBar3" runat="server"></telerik:RadProgressBar>
                                </td>

                            </tr>
                            <tr>
                                <td  style="text-align:right">
                                     % real de cada etapa
                                </td>
                                <td>
                                    <telerik:RadProgressBar ID="RadProgressBar4" runat="server"></telerik:RadProgressBar>
                                </td>
                            </tr>
                        </table>
                        </td>
                    </tr>
                  <tr>
                    <td>
                        
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <telerik:RadLabel ID="RadLabel8" Text="Procedimiento alternativo" runat="server"></telerik:RadLabel>
                    </td>
                    <td></td>
                    <td>
                       <asp:CheckBox ID="CheckBox2" runat="server" />
                        <telerik:RadLabel ID="RadLabel9" Text="Revisión editorial" runat="server"></telerik:RadLabel>
                    </td>
                    <td>
                         
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel10" Text="Clasificación" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox Width="100%" ID="RadTextBox6" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel21" Text="Título DT" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox7" Width="100%"  runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel22" Text="Fecha de inicio de desarrollo en NMX" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox8" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <th>
                        <telerik:RadLabel ID="RadLabel23" Text="Fecha de aprobación de revisión editorial" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox9" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                    <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel46" Text="Responsable" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="2">
                             <telerik:RadDropDownList ID="RadDropDownList5" Width="100%" runat="server"></telerik:RadDropDownList>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel24" Text="Adjuntar documento de trabajo final" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td></td>
                    <th>
                        <telerik:RadLabel ID="RadLabel25" Text="Fecha de carga documento de trabajo final" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox10" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                    <tr>
                        <td></td>
                         <td></td>
                         <td></td>
                         <td colspan="2">
                             <br />
                             <br />
                             <telerik:RadButton Text="Avanzar Tema" ID="btnTtema" runat="server" />
                         </td>
                        
                    </tr>
                  
                </table>
                <br />
                <div id="ProcAlternativo">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<telerik:RadLabel ID="RadLabel44" Text="Procedimiento Alternativo" runat="server"></telerik:RadLabel>
                <table style="width: 100%; height:100px;" class="SinBorde">
                
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel35" Text="Responsable tema" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDropDownList ID="RadDropDownList4" runat="server"></telerik:RadDropDownList>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td></td>
                  </tr>
                    <tr>
                        <th>
                         <telerik:RadLabel ID="RadLabel36" Text="Fecha de inicio responsable" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker7" runat="server"></telerik:RadDatePicker>
                    </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel37" Text="Fecha de fin responsable" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker8" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <th>
                        <telerik:RadLabel ID="RadLabel38" Text="Adjuntar minuta de terminación de procedimiento alternativo" runat="server"></telerik:RadLabel>
                    </th>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel39" Text="Fecha de inicio de emisión de comentarios" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker9" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td>
                        <asp:FileUpload ID="FileUpload3" runat="server" /> <telerik:RadTextBox Width="80px" runat="server" Text="20/01/2021" ></telerik:RadTextBox>
                    </td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel40" Text="Fecha de Fin de emisión de comentarios" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker10" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel41" Text="Tuvo comentarios técnicos" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:RadioButton ID="RadioButton7" runat="server" Text="SI" /><asp:RadioButton ID="RadioButton8" runat="server" Text="NO" />
                    </td>
                    <td></td>
                    <th>
                        <telerik:RadLabel ID="RadLabel42" Text="Aprovado DT" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel43" Text="Tuvo comentarios editoriales" runat="server"></telerik:RadLabel>
                    </th>

                    <td>
                        <asp:RadioButton ID="RadioButton11" runat="server" Text="SI" /><asp:RadioButton ID="RadioButton12" runat="server" Text="NO" />
                    </td>
                    <td></td>
                    <td colspan="2">
                        <table style="width:100%">
                            <tr>
                                <td style="text-align:right"> 
                                    <asp:RadioButton ID="RadioButton9" runat="server" Text="SI" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton10" runat="server" Text="NO" />
                                </td>
                            </tr>
                        </table>
                       
                    </td>
                    
                  </tr>
                </table>
                </div>


            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<telerik:RadLabel ID="RadLabel26" Text="Anteproyecto" runat="server"></telerik:RadLabel>
                <table style="width: 100%;" class="SinBorde">
                    <tr>
                        <td colspan="5">
                            <table>
                            <tr>
                                <td style="text-align:right">
                                    % de avance programado
                                </td>
                                <td>
                                    <telerik:RadProgressBar ID="RadProgressBar5" runat="server"></telerik:RadProgressBar>
                                </td>

                            </tr>
                            <tr>
                                <td  style="text-align:right">
                                     % real de cada etapa
                                </td>
                                <td>
                                    <telerik:RadProgressBar ID="RadProgressBar6" runat="server"></telerik:RadProgressBar>
                                </td>
                            </tr>
                        </table>
                        </td>
                    </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel27" Text="Clasificación:" runat="server"></telerik:RadLabel>
                    </th>
                    <th colspan="2">
                        <telerik:RadTextBox Width="100%" ID="RadTextBox11" runat="server"></telerik:RadTextBox>
                    </th>
                    <td></td>
                    <td></td>
                  </tr>
  
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel28" Text="Título Ant:" runat="server"></telerik:RadLabel>
                    </th>
                    <th colspan="2">
                        <telerik:RadTextBox Width="100%" ID="RadTextBox12" runat="server"></telerik:RadTextBox>
                    </th>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel29" Text="Número de páginas:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox13" runat="server"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel30" Text="Responsable:" runat="server"></telerik:RadLabel>
                    </th>
                    <td colspan="2">
                        <telerik:RadDropDownList Width="100%" ID="RadDropDownList2" runat="server"></telerik:RadDropDownList>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel31" Text="Imprimir acta de aprobación:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <img src="../Imagenes/Botoneras/print.png" />
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel32" Text="Fecha de impresión acta aprobación:" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <<telerik:RadDatePicker ID="RadDatePicker20" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel33" Text="Fecha de aprobación del CT o GT:" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker21" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel34" Text="Adjuntar acta aprobación final:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                      <td>
                        
                    </td>
                    <td>
                       
                    </td>
                    <td>
                        
                    </td>
                  </tr>
                    <tr>
                    <th>
                         <telerik:RadLabel ID="RadLabel47" Text="Fecha de carga acta aprobación final:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker22" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                         <telerik:RadLabel ID="RadLabel48" Text="Correcciones:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="RadioButton1" Text="Si" runat="server" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton2" Text="No" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                    </td>
                    <td>
                        
                    </td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel49" Text="Fecha de correcciones:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadDatePicker ID="RadDatePicker23" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel50" Text="Minuta de aprobación:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:FileUpload ID="FileUpload4" runat="server" />
                    </td>
                    <td> 

                    </td>
                    <td>
                       
                    </td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel51" Text="Fecha de carga minuta de aprobación:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadDatePicker ID="RadDatePicker24" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel52" Text="Adjuntar ateproyecto:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <asp:FileUpload ID="FileUpload5" runat="server" />
                    </td>
                    <td>
                        
                        
                    </td>
                    <td>
                        
                    </td>
                    <td></td>
                  </tr>
                     <tr>
                    <th>
                       <telerik:RadLabel ID="RadLabel53" Text="Fecha de carga anteproyecto final:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadDatePicker ID="RadDatePicker25" runat="server"></telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                    <tr>
                        <td></td>
                         <td></td>
                         <td></td>
                         <td colspan="2">
                             <br />
                             <br />
                             <br />
                             <telerik:RadButton Text="Avanzar Tema" ID="RadButton2" runat="server" />
                         </td>
                        
                    </tr>
                </table>
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView4">
          
                 <table style="width: 100%; height:100%;" class="SinBorde">
                     <tr>
                         <td colspan="2">
                             <table>
                            <tr>
                                <td style="text-align:right">
                                    % de avance programado
                                </td>
                                <td>
                                    <telerik:RadProgressBar ID="RadProgressBar7" runat="server"></telerik:RadProgressBar>
                                </td>

                            </tr>
                            <tr>
                                <td  style="text-align:right">
                                     % real de cada etapa
                                </td>
                                <td>
                                    <telerik:RadProgressBar ID="RadProgressBar8" runat="server"></telerik:RadProgressBar>
                                </td>
                            </tr>
                        </table>
                         </td>
                     </tr>
                     <tr>
                         <td style="width:15%">
                             <telerik:RadTabStrip Orientation="VerticalLeft" Font-Size="Small"  RenderMode="Lightweight" runat="server" ID="RadTabStrip2"  MultiPageID="RadMultiPage2" SelectedIndex="0" Skin="Vista">
                                <Tabs>
                                    <telerik:RadTab Text="Proyecto" Font-Size="12px" Width="100px" Height="10px" ></telerik:RadTab>
                                    <telerik:RadTab Text="RCOM" Font-Size="12px" Width="100px" Height="10px"></telerik:RadTab>
                                    <telerik:RadTab Text="PROY-FINAL" Font-Size="12px" Width="100px" Height="10px" ></telerik:RadTab>
                                </Tabs>
                            </telerik:RadTabStrip>
                         </td>
                         <td style="width:80%">
                             
                            <telerik:RadMultiPage runat="server" ID="RadMultiPage2"  SelectedIndex="0" CssClass="outerMultiPage">
                            <telerik:RadPageView runat="server" ID="RadPageView5">
                                 <br />
                                 <table style="width: 100%; height:100%;" class="SinBorde">
                                <tr>
                                <td colspan="3">
                                    <telerik:RadLabel Width="100%" ID="RadLabel54" Text="Proyecto" runat="server"></telerik:RadLabel>
                                </td>
                                </tr>
                                <tr>
                                <td></td>
                                <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel55" Text="Fecha de aprobación por CONANCE" runat="server"></telerik:RadLabel>
                     
                                </th>
                                <td>
                                    <telerik:RadDatePicker ID="RadDatePicker15" runat="server"></telerik:RadDatePicker>
                                </td>
                                </tr>
                                <tr>
                                <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel56" Text="Clasificación proyecto" runat="server"></telerik:RadLabel>
                   
                                </th>
                                <td colspan="2">
                                    <telerik:RadTextBox ID="RadTextBox18" Width="100%" runat="server"></telerik:RadTextBox>
                                </td>
                                </tr>
                                <tr>
                                <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel57" Text="Título proyecto" runat="server"></telerik:RadLabel>
                   
                                </th>
                                <td colspan="2">
                                    <telerik:RadTextBox ID="RadTextBox19" Width="100%"  runat="server"></telerik:RadTextBox>
                                </td>
                                </tr>
                                <tr>
                                <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel58" Text="Número de páginas" runat="server"></telerik:RadLabel>
                   
                                </th>
                                <td>
                                    <telerik:RadTextBox ID="RadTextBox20" runat="server"></telerik:RadTextBox>
                                </td>
                                <td></td>
                                </tr>
                                <tr>
                                <th>
                                 <telerik:RadLabel Width="100%" ID="RadLabel59" Text="Responsable de tema:" runat="server"></telerik:RadLabel>
                    
                                </th>
                                <td colspan="2">
                                    <telerik:RadDropDownList ID="RadDropDownList7" Width="100%" runat="server"></telerik:RadDropDownList>
                                </td>
                                </tr>
                                <tr>
                                <td colspan="3" style="text-align:center">
                                    <table>
                                        <tr>
                                            <th>
                                             <telerik:RadLabel Width="100%" ID="RadLabel60" Text="Tuvo comentarios ténicos:" runat="server"></telerik:RadLabel>
                    
                                            </th>
                                            <th>
                                                <telerik:RadLabel Width="100%" ID="RadLabel61" Text="Tuvo comentarios editoriales:" runat="server"></telerik:RadLabel>
                    
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton3" Text="Si" runat="server" /><asp:RadioButton ID="RadioButton4" Text="No" runat="server" />
                                            </td>
                                            <td>
                                                 <asp:RadioButton ID="RadioButton5" Text="Si" runat="server" /><asp:RadioButton ID="RadioButton6" Text="No" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                </tr>
                                <tr>
                                <th>
                                    <telerik:RadLabel ID="RadLabel62" Text="Proyecto:" runat="server"></telerik:RadLabel>
                                </th>
                                <td>
                                    <asp:FileUpload ID="FileUpload6" runat="server" />
                                </td>
                                <td></td>
                                </tr>
                                <tr>
                                    <th>
                                         <telerik:RadLabel Width="100%" ID="RadLabel119" Text="Tuvo comentarios generales:" runat="server"></telerik:RadLabel>
                                    </th>
                                    <td colspan="3">
                                         <textarea id="TextArea5" style="width:100%; height:100%" cols="20" rows="2"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                <th>
                                 <telerik:RadLabel Width="100%" ID="RadLabel120" Text="Fechas de inicio consulta pública " runat="server"></telerik:RadLabel>
                    
                                </th>
                                <td>
                                    <telerik:RadDatePicker ID="RadDatePicker12" runat="server"></telerik:RadDatePicker>
                                </td>
                                </tr>
                                 <tr>
                                <th>
                                 <telerik:RadLabel Width="100%" ID="RadLabel121" Text="Fechas fin de consulta pública " runat="server"></telerik:RadLabel>
                    
                                </th>
                                <td>
                                    <telerik:RadDatePicker ID="RadDatePicker13" runat="server"></telerik:RadDatePicker>
                                </td>
                                </tr>
                                <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel125" Text="SINEC:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadTextBox ID="RadTextBox21" runat="server"></telerik:RadTextBox>
                                 </td>
                             </tr>
                            </table>
                
                            </telerik:RadPageView>
                            <telerik:RadPageView runat="server" ID="RadPageView6">
                                <br />
                                <table style="width: 100%; height:100%;" class="SinBorde">
                                <tr>
                                <td colspan="3">
                                    <telerik:RadLabel Width="100%" ID="RadLabel122" Text="Revisión de comentarios" runat="server"></telerik:RadLabel>
                                </td>
                                </tr>

                                 <tr>
                                     
                                    <th>
                                     
                                       <telerik:RadLabel Width="100%" ID="RadLabel63" Text="Fecha de inicio de resolución a comentario público:" runat="server"></telerik:RadLabel>
                    
                                    </th>
                                    <td>
                                         <telerik:RadDatePicker ID="RadDatePicker3" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                       <telerik:RadLabel Width="100%" ID="RadLabel64" Text="Fecha límite de resolución a comentario público:" runat="server"></telerik:RadLabel>
                    
                                    </th>
                                    <td>
                                         <telerik:RadDatePicker ID="RadDatePicker4" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                       <telerik:RadLabel Width="100%" ID="RadLabel65" Text="Fecha límite de aprobación a extención:" runat="server"></telerik:RadLabel>
                    
                                    </th>
                                    <td>
                                         <telerik:RadDatePicker ID="RadDatePicker5" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                       <telerik:RadLabel Width="100%" ID="RadLabel66" Text="Fecha de aprobación de resolución a comentario público:" runat="server"></telerik:RadLabel>
                    
                                    </th>
                                    <td>
                                         <telerik:RadDatePicker ID="RadDatePicker6" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                       <telerik:RadLabel Width="100%" ID="RadLabel67" Text="Fecha VoBo comité:" runat="server"></telerik:RadLabel>
                    
                                    </th>
                                    <td>
                                         <telerik:RadDatePicker ID="RadDatePicker11" runat="server"></telerik:RadDatePicker>
                                    </td>
                                </tr>
                                

                            </table>
                
                            </telerik:RadPageView>
                            <telerik:RadPageView runat="server" ID="RadPageView7">
                                <br />
                             <table style="width: 100%; height:100%;" class="SinBorde">
                             <tr>
                                <td colspan="3">
                                    <telerik:RadLabel Width="100%" ID="RadLabel126" Text="Proyecto Final" runat="server"></telerik:RadLabel>
                                </td>
                                </tr>
                             <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel69" Text="Fecha de inicio revisión PROYF:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                      <telerik:RadDatePicker ID="RadDatePicker14" runat="server"></telerik:RadDatePicker>
                                 </td>
                             </tr>   
                            <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel70" Text="Fecha término revisión PROYF:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadDropDownList Width="100%" ID="RadDropDownList9" runat="server"></telerik:RadDropDownList>
                                 </td>
                             </tr> 
                            <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel71" Text="Fecha de verificación de revisión de PROYF:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadDropDownList Width="100%" ID="RadDropDownList10" runat="server"></telerik:RadDropDownList>
                                 </td>
                             </tr> 
                                 <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel72" Text="Fecha de edición de PROYF:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadDatePicker ID="RadDatePicker16" runat="server"></telerik:RadDatePicker>
                                 </td>
                             </tr>
                            <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel73" Text="Imprimir acta de aprobación proyecto:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <img src="../Imagenes/Botoneras/print.png" alt="Imprimir" />
                                 </td>
                             </tr>
                             <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel74" Text="Fecha de impresión acta aprobación PROYF:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadDatePicker ID="RadDatePicker17" runat="server"></telerik:RadDatePicker>
                                 </td>
                             </tr>
                             <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel75" Text="Adjuntar acta de aprobación PROYF:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <asp:FileUpload ID="FileUpload7" runat="server" />
                                 </td>
                             </tr>
                            <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel76" Text="Fecha de carga acta de aprobación PROYF:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadDatePicker ID="RadDatePicker18" runat="server"></telerik:RadDatePicker>
                                     
                                 </td>
                             </tr>
                                <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel77" Text="Fecha de acuse DGN NMX:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadDatePicker ID="RadDatePicker19" runat="server"></telerik:RadDatePicker>
                                 </td>
                             </tr>
                                 <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel123" Text="Número de páginas de la NMX:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadTextBox ID="RadTextBox4" runat="server"></telerik:RadTextBox>
                                 </td>
                             </tr>
                            <tr>
                                 <th>
                                    <telerik:RadLabel Width="100%" ID="RadLabel124" Text="SINEC:" runat="server"></telerik:RadLabel>
                    
                                 </th>
                                 <td>
                                     <telerik:RadTextBox ID="RadTextBox5" runat="server"></telerik:RadTextBox>
                                 </td>
                             </tr>
                                 <tr>
                                    <th>
                                       <telerik:RadLabel Width="100%" ID="RadLabel68" Text="Proyecto final:" runat="server"></telerik:RadLabel>
                    
                                    </th>
                                    <td>
                                        <asp:FileUpload ID="FileUpload12" runat="server" />
                                    </td>
                                </tr>


                             </table>
                
                            </telerik:RadPageView>


                            </telerik:RadMultiPage>

                         </td>
                     </tr>

                </table>

            </telerik:RadPageView>

              <telerik:RadPageView runat="server" ID="RadPageView8">
                  <table style="width: 100%; height:100%;" class="SinBorde">
                  <tr>
                    <td colspan="4" style="text-align:center">
                        <telerik:RadLabel Width="100%" ID="RadLabel78" Text="Historial del tema en fechas" runat="server"></telerik:RadLabel>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel79" Text="Fecha de inicio de desarrollo de NMX" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox22" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel93" Text="Fecha límite de resolución a comentario público" runat="server"></telerik:RadLabel>
                      
                    </th>
                    <td>
                        
                        <telerik:RadTextBox ID="RadTextBox37" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel80" Text="Fecha de aprobación revisión editorial" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox59" runat="server"></telerik:RadTextBox>

                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel114" Text="Fecha de aprobación de resolución a comentario público" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox58" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                
                  <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel81" Text="Fecha de carga DT final" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox26" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel82" Text="Fecha Vo Bo comité" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox25" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                     <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel83" Text="Fecha de impresión acta aprobación" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox27" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel84" Text="Fecha de inicio revisión PROYF" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox28" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel85" Text="Fecha de carga acta aprobación:" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox29" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel86" Text="Fecha término revisión PROYF" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox30" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel87" Text="Fecha de aprobación Ant CT GT " runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox31" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel88" Text="Fecha de edición PROYF" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox32" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel89" Text="Fecha de aarga anteproyecto" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox33" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel90" Text="Fecha de Impresión acta aprobación PROYF" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox34" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel91" Text="Fecha de aprobación comité Proy" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox35" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel92" Text="Fecha de carga acta de aprobación PROYF" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox36" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel94" Text="Fecha de publicación comentario público" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox38" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel95" Text="Fecha de acuse DGN NMX" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox39" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel96" Text="Fecha límite comentario público" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox40" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel97" Text="Fecha de carga PROYF" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox41" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel98" Text="Fecha de resolución comentario público" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox42" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel99" Text="" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox43" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel100" Text="Fecha de inicio procedimiento alternativo" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox44" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel101" Text="" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox45" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>

                           <tr>
                    <th>
                        <telerik:RadLabel ID="RadLabel102" Text="Fecha de carga minuta de fin de procedimiento alternativo" runat="server"></telerik:RadLabel>
                    </th>
                    <td>
                         <telerik:RadTextBox ID="RadTextBox46" runat="server"></telerik:RadTextBox>
                    </td>
                    <th>
                        <telerik:RadLabel ID="RadLabel103" Text="" runat="server"></telerik:RadLabel>
                        
                    </th>
                    <td>
                        <telerik:RadTextBox ID="RadTextBox47" runat="server"></telerik:RadTextBox>
                    </td>
                  </tr>
                         
                </table>

              </telerik:RadPageView>

             <telerik:RadPageView runat="server" ID="RadPageView9">
                  <table style="width: 100%; height:100%;" class="SinBorde">
                      <tr>
                        <td rowspan="15">
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
                        <th>
                            <telerik:RadLabel ID="RadLabel104" Text="Referencia:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="2">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox24" runat="server"></telerik:RadTextBox>
                        </td>
                        <td></td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel105" Text="Clasificación:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox48" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel106" Text="Número de tema:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox Width="100%" ID="RadTextBox49" runat="server"></telerik:RadTextBox>
                        </td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel107" Text="Tipo de tema:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="2">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox50" runat="server"></telerik:RadTextBox>
                        </td>
                        <td></td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel108" Text="Título:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <textarea id="TextArea6" style="width:400px" cols="20" rows="2"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel109" Text="Objetivo:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <textarea id="TextArea7" style="width:400px" cols="20" rows="2"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel110" Text="Justificación:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <textarea id="TextArea8" style="width:400px" cols="20" rows="2"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel111" Text="Fecha de inicio:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox51" runat="server"></telerik:RadTextBox>
                        </td>
                        <th>
                            <telerik:RadLabel ID="RadLabel112" Text="Fecha de fin:" runat="server"></telerik:RadLabel>
                        </th>
                        <td>
                            <telerik:RadTextBox ID="RadTextBox52" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox3" Text="Basado en Norma" runat="server" />
                        </th>
                        <td colspan="3">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox53" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox4" Text="Armonización de la norma" runat="server" />
                        </th>
                        <td colspan="3">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox54" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel113" Text="Justificación de armonizacion" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <textarea id="TextArea9"  cols="20" rows="2"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel115" Text="Revisión" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox55" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel116" Text="Pertenece:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <telerik:RadTextBox Width="100%" ID="RadTextBox56" runat="server"></telerik:RadTextBox>
                        </td>
                      </tr>
                      <tr>
                        <th>
                            <telerik:RadLabel ID="RadLabel117" Text="Responsable:" runat="server"></telerik:RadLabel>
                        </th>
                        <td colspan="3">
                            <%--<telerik:RadTextBox Width="100%" ID="RadTextBox57" runat="server"></telerik:RadTextBox>--%>
                        </td>
                      </tr>
                      <tr>
                        <td>
                            <asp:CheckBox ID="CheckBox5" Text="Proceso Normal" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox6" Text="Modificación técnica / Cancelacion" runat="server" />
                        </td>
                        <td></td>
                        <td></td>
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