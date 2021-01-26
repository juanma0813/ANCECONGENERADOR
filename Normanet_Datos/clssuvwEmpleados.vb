REM Clase en VB creada automaticamente by ..:: ANCE A.C.  ::.. .Clase creada el: 25/01/2021 12:00:00 a. m. Version 3.3.2
Imports System.Linq
Imports System.Text
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration


Namespace AnceSystem

   Public Class clssuvwEmpleados
      Implements IDisposable
#Region"Propiedades de la clase"
      REM Variables de Propiedad
      Private _IdUsuario as String
      Private _Email as String
      Private _Nombre as String
      Private _NOM_PUESTO as String
      Private _TITULO as String
      Private _Id_Sucursal as integer
      Private _Inactivo as Boolean
      Private _sXML as String
      Private _Bandera as String
        Private _bError As String

        Private cn As SqlConnection
        Private disposedValue As Boolean


        REM Propiedades de la Entidad
        Public Property IdUsuario as String
         Get
            Return _IdUsuario
         End Get
         Set(ByVal Value as String)
            _IdUsuario = Value
         End Set
      End Property

      public Property Email as String
         Get
            Return _Email
         End Get
         Set(ByVal Value as String)
            _Email = Value
         End Set
      End Property

      public Property Nombre as String
         Get
            Return _Nombre
         End Get
         Set(ByVal Value as String)
            _Nombre = Value
         End Set
      End Property

      public Property NOM_PUESTO as String
         Get
            Return _NOM_PUESTO
         End Get
         Set(ByVal Value as String)
            _NOM_PUESTO = Value
         End Set
      End Property

      public Property TITULO as String
         Get
            Return _TITULO
         End Get
         Set(ByVal Value as String)
            _TITULO = Value
         End Set
      End Property

      public Property Id_Sucursal as integer
         Get
            Return _Id_Sucursal
         End Get
         Set(ByVal Value as integer)
            _Id_Sucursal = Value
         End Set
      End Property

      public Property Inactivo as Boolean
         Get
            Return _Inactivo
         End Get
         Set(ByVal Value as Boolean)
            _Inactivo = Value
         End Set
      End Property

        ''' <summary>
        '''Se utiliza para pasarle la parametro sXML a un store procedure
        ''' </summary>
        ''' <remarks></remarks>
      public Property sXML as String
         Get
            Return _sXML
         End Get
         Set(ByVal Value as String)
            _sXML = Value
         End Set
      End Property

        ''' <summary>
        '''Se utiliza para pasarle la bandera a un store procedure
        ''' </summary>
        ''' <remarks></remarks>
      public Property Bandera as String
         Get
            Return _Bandera
         End Get
         Set(ByVal Value as String)
            _Bandera = Value
         End Set
      End Property

        ''' <summary>
        '''Se utiliza para saber si el metodo fallo
        ''' </summary>
        ''' <remarks></remarks>
      public Property bError as Boolean
         Get
            Return _bError
         End Get
         Set(ByVal Value as Boolean)
            _bError = Value
         End Set
      End Property

      REM propiedades autoimplementadas solo para FWK 3.5
      Public Property Propiedades as PropertyCollection
      Public Property Encontrado as Boolean
      Public Property uException As Exception
        ''|| TagPropiedades
        ''|| EndTagPropiedades

        Protected Overridable Sub Dispose(disposing As Boolean)
            If Not disposedValue Then
                If disposing Then
                    ' TODO: eliminar el estado administrado (objetos administrados)
                End If

                ' TODO: liberar los recursos no administrados (objetos no administrados) y reemplazar el finalizador
                ' TODO: establecer los campos grandes como NULL
                disposedValue = True
            End If
        End Sub

        ' ' TODO: reemplazar el finalizador solo si "Dispose(disposing As Boolean)" tiene código para liberar los recursos no administrados
        ' Protected Overrides Sub Finalize()
        '     ' No cambie este código. Coloque el código de limpieza en el método "Dispose(disposing As Boolean)".
        '     Dispose(disposing:=False)
        '     MyBase.Finalize()
        ' End Sub

        Public Sub Dispose() Implements IDisposable.Dispose
            ' No cambie este código. Coloque el código de limpieza en el método "Dispose(disposing As Boolean)".
            Dispose(disposing:=True)
            GC.SuppressFinalize(Me)
        End Sub
#End Region

#Region "Metodos de la Clase"
        ''' <summary>
        '''Contructor de la clase
        ''' </summary>
        ''' <remarks></remarks>
        Public sub New(ByVal Optional sNombreCn as String="cnSistema")
         rem cn = New SqlConnection("")
         rem cn = New SqlConnection(ConfigurationManager.ConnectionStrings("").ConnectionString)
         cn = New SqlConnection(clsConeccion.AnceSystem.clssConeccion.Conectar(sNombreCn))
      End Sub 
      Rem Funcion que Elimina datos
        ''' <summary>
        '''Metodo para eliminar, contiene todos los campos de la base de la tabla
        ''' </summary>
        ''' <remarks></remarks>
      public Sub Eliminar() 

         Try
               bError = False
               Cn.Open
               Using cmd As New SqlCommand
                    cmd.CommandText = "uspuvwEmpleados"
                    cmd.CommandType = CommandType.StoredProcedure
                  cmd.Connection = cn
                  cmd.Parameters.AddWithValue ("@IdUsuario",_IdUsuario)
                  cmd.Parameters.AddWithValue ("@Email",_Email)
                  cmd.Parameters.AddWithValue ("@Nombre",_Nombre)
                  cmd.Parameters.AddWithValue ("@NOM_PUESTO",_NOM_PUESTO)
                  cmd.Parameters.AddWithValue ("@TITULO",_TITULO)
                  cmd.Parameters.AddWithValue ("@Id_Sucursal",_Id_Sucursal)
                  cmd.Parameters.AddWithValue ("@Inactivo",_Inactivo)
                  ''|| TagParametros
                  ''|| EndTagParametros
                  cmd.Parameters.AddWithValue ("@sXML",_sXML)
                  cmd.Parameters.AddWithValue ("@Bandera",_Bandera)

                  cmd.ExecuteNonQuery
               End Using

         Catch ex as Exception
            bError = True
            uException = ex
         Finally
            Cn.Close
         End Try
      End Sub


      Rem Sub que Actualizar datos
        ''' <summary>
        '''Metodo para Actualizar, contiene todos los campos de la base de la tabla
        ''' </summary>
        ''' <remarks></remarks>
      public Sub Actualizar() 

         Try
               bError = False
               Cn.Open
               Using cmd As New SqlCommand
                    cmd.CommandText = "uspuvwEmpleados"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdUsuario", _IdUsuario)
                    cmd.Parameters.AddWithValue("@Email", _Email)
                    cmd.Parameters.AddWithValue("@Nombre", _Nombre)
                    cmd.Parameters.AddWithValue("@NOM_PUESTO", _NOM_PUESTO)
                    cmd.Parameters.AddWithValue("@TITULO", _TITULO)
                    cmd.Parameters.AddWithValue("@Id_Sucursal", _Id_Sucursal)
                    cmd.Parameters.AddWithValue("@Inactivo", _Inactivo)
                    ''|| TagParametros
                    ''|| EndTagParametros
                    cmd.Parameters.AddWithValue("@sXML", _sXML)
                    cmd.Parameters.AddWithValue("@Bandera", _Bandera)

                    cmd.ExecuteNonQuery()
                End Using

            Catch ex As Exception
                bError = True
                uException = ex
            Finally
                cn.Close()
            End Try
        End Sub


        REM Sub que Insertar datos
        ''' <summary>
        ''' Metodo para insertar, contiene todos los campos de la base de la tabla
        ''' </summary>
        ''' <remarks></remarks>
        Public Sub Insertar()
            Dim Consecutivo As Integer = 0

            Try
                bError = False
                cn.Open()

                Using cmd As New SqlCommand
                    cmd.CommandText = "uspuvwEmpleados"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdUsuario", _IdUsuario)
                    cmd.Parameters.AddWithValue("@Email", _Email)
                    cmd.Parameters.AddWithValue("@Nombre", _Nombre)
                    cmd.Parameters.AddWithValue("@NOM_PUESTO", _NOM_PUESTO)
                    cmd.Parameters.AddWithValue("@TITULO", _TITULO)
                    cmd.Parameters.AddWithValue("@Id_Sucursal", _Id_Sucursal)
                    cmd.Parameters.AddWithValue("@Inactivo", _Inactivo)
                    ''|| TagParametros
                    ''|| EndTagParametros
                    cmd.Parameters.AddWithValue("@sXML", _sXML)
                    cmd.Parameters.AddWithValue("@Bandera", _Bandera)

                    cmd.ExecuteNonQuery()
                End Using

            Catch ex As Exception
                bError = True
                uException = ex
            Finally
                cn.Close()
            End Try
        End Sub


        REM Funcion que LlenarDatos datos
        ''' <summary>
        '''llena todas las propiedades en base a una consulta de sql o Linq
        ''' </summary>
        ''' <remarks></remarks>
        Public Sub LlenarDatos()
            Dim dt As New DataTable("Encontrados")

            Try
                bError = False
                cn.Open()

                Using cmd As New SqlCommand
                    cmd.CommandText = "uspuvwEmpleados"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdUsuario", _IdUsuario)
                    cmd.Parameters.AddWithValue("@Email", _Email)
                    cmd.Parameters.AddWithValue("@Nombre", _Nombre)
                    cmd.Parameters.AddWithValue("@NOM_PUESTO", _NOM_PUESTO)
                    cmd.Parameters.AddWithValue("@TITULO", _TITULO)
                    cmd.Parameters.AddWithValue("@Id_Sucursal", _Id_Sucursal)
                    cmd.Parameters.AddWithValue("@Inactivo", _Inactivo)
                    ''|| TagParametros
                    ''|| EndTagParametros
                    cmd.Parameters.AddWithValue("@sXML", _sXML)
                    cmd.Parameters.AddWithValue("@Bandera", _Bandera)

                    Using da As New SqlDataAdapter(cmd)
                        da.Fill(dt)
                    End Using
                End Using

                If dt.Rows.Count > 0 Then
                    _IdUsuario = IIf(IsDBNull(dt.Rows(0).Item("IdUsuario")) = True, Nothing, dt.Rows(0).Item("IdUsuario"))
                    _Email = IIf(IsDBNull(dt.Rows(0).Item("Email")) = True, Nothing, dt.Rows(0).Item("Email"))
                    _Nombre = IIf(IsDBNull(dt.Rows(0).Item("Nombre")) = True, Nothing, dt.Rows(0).Item("Nombre"))
                    _NOM_PUESTO = IIf(IsDBNull(dt.Rows(0).Item("NOM_PUESTO")) = True, Nothing, dt.Rows(0).Item("NOM_PUESTO"))
                    _TITULO = IIf(IsDBNull(dt.Rows(0).Item("TITULO")) = True, Nothing, dt.Rows(0).Item("TITULO"))
                    _Id_Sucursal = IIf(IsDBNull(dt.Rows(0).Item("Id_Sucursal")) = True, Nothing, dt.Rows(0).Item("Id_Sucursal"))
                    _Inactivo = IIf(IsDBNull(dt.Rows(0).Item("Inactivo")) = True, Nothing, dt.Rows(0).Item("Inactivo"))
                    ''|| TagLlenado
                    ''|| EndTagLlenado
                    _Encontrado = True
                Else
                    _IdUsuario = Nothing
                    _Email = Nothing
                    _Nombre = Nothing
                    _NOM_PUESTO = Nothing
                    _TITULO = Nothing
                    _Id_Sucursal = Nothing
                    _Inactivo = Nothing
                    ''|| TagLlenado1
                    ''|| EndTagLlemado1
                    _Encontrado = False
                End If
            Catch ex As Exception
                bError = True
                uException = ex
            Finally
                cn.Close()
            End Try
        End Sub


        REM Funcion que Lista datos
        ''' <summary>
        '''Metodo que regresa un datatable o un query de Linq
        ''' </summary>
        ''' <remarks></remarks>
        Public Function Listar() As DataTable
            Dim dt As New DataTable("Encontrados")

            Try
                bError = False
                cn.Open()

                Using cmd As New SqlCommand
                    cmd.CommandText = "uspuvwEmpleados"
                    cmd.CommandType = CommandType.StoredProcedure
                  cmd.Connection = cn
                  cmd.Parameters.AddWithValue ("@IdUsuario",_IdUsuario)
                  cmd.Parameters.AddWithValue ("@Email",_Email)
                  cmd.Parameters.AddWithValue ("@Nombre",_Nombre)
                  cmd.Parameters.AddWithValue ("@NOM_PUESTO",_NOM_PUESTO)
                  cmd.Parameters.AddWithValue ("@TITULO",_TITULO)
                  cmd.Parameters.AddWithValue ("@Id_Sucursal",_Id_Sucursal)
                  cmd.Parameters.AddWithValue ("@Inactivo",_Inactivo)
                  ''|| TagParametros
                  ''|| EndTagParametros
                  cmd.Parameters.AddWithValue ("@sXML",_sXML)
                  cmd.Parameters.AddWithValue ("@Bandera",_Bandera)
                  Using da As New SqlDataAdapter(cmd)
                     da.Fill(dt)
                  End Using

                  If dt.Rows.Count = 1 Then
                     Propiedades = New PropertyCollection
                     For Each cols As DataColumn In dt.Columns
                        Propiedades.Add(cols.ColumnName, IIF(isDbNull(dt.Rows(0).Item(cols.ColumnName)),"",dt.Rows(0).Item(cols.ColumnName)))
                     Next
                     _Encontrado = True
                  End If

               End Using

         Catch ex as Exception
            bError = True
            uException = ex
         Finally
            Cn.Close
         End Try
         Return dt
      End Function


#End Region

   End Class

End Namespace
