REM Clase en VB creada automaticamente by ..:: ANCE A.C.  ::.. .Clase creada el: 27/01/2021 12:00:00 a. m. Version 3.3.2
Imports System.Linq
Imports System.Text
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration


Namespace AnceSystem

   Public Class clssRepresentaciones
      Implements IDisposable
#Region"Propiedades de la clase"
      REM Variables de Propiedad
      Private _IdRepresentacion as integer
      Private _Representacion as String
      Private _Comite as Boolean
      Private _ComiteTecnico as Boolean
      Private _FechaAlta as Nullable(Of DateTime)
      Private _Activo as Boolean
      Private _sXML as String
      Private _Bandera as String
        Private _bError As String
        Private cn As SqlConnection
        Private disposedValue As Boolean

        REM Propiedades de la Entidad
        Public Property IdRepresentacion as integer
         Get
            Return _IdRepresentacion
         End Get
         Set(ByVal Value as integer)
            _IdRepresentacion = Value
         End Set
      End Property

      public Property Representacion as String
         Get
            Return _Representacion
         End Get
         Set(ByVal Value as String)
            _Representacion = Value
         End Set
      End Property

      public Property Comite as Boolean
         Get
            Return _Comite
         End Get
         Set(ByVal Value as Boolean)
            _Comite = Value
         End Set
      End Property

      public Property ComiteTecnico as Boolean
         Get
            Return _ComiteTecnico
         End Get
         Set(ByVal Value as Boolean)
            _ComiteTecnico = Value
         End Set
      End Property

      public Property FechaAlta as Nullable(Of DateTime)
         Get
            Return _FechaAlta
         End Get
         Set(ByVal Value as Nullable(Of DateTime))
            _FechaAlta = Value
         End Set
      End Property

      public Property Activo as Boolean
         Get
            Return _Activo
         End Get
         Set(ByVal Value as Boolean)
            _Activo = Value
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
                    cmd.CommandText = "uspRepresentaciones"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdRepresentacion", _IdRepresentacion)
                    cmd.Parameters.AddWithValue("@Representacion", _Representacion)
                    cmd.Parameters.AddWithValue("@Comite", _Comite)
                    cmd.Parameters.AddWithValue("@ComiteTecnico", _ComiteTecnico)
                    cmd.Parameters.AddWithValue("@FechaAlta", _FechaAlta)
                    cmd.Parameters.AddWithValue("@Activo", _Activo)
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


        REM Sub que Actualizar datos
        ''' <summary>
        '''Metodo para Actualizar, contiene todos los campos de la base de la tabla
        ''' </summary>
        ''' <remarks></remarks>
        Public Sub Actualizar()

            Try
                bError = False
                cn.Open()

                Using cmd As New SqlCommand
                    cmd.CommandText = "uspRepresentaciones"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdRepresentacion", _IdRepresentacion)
                    cmd.Parameters.AddWithValue("@Representacion", _Representacion)
                    cmd.Parameters.AddWithValue("@Comite", _Comite)
                    cmd.Parameters.AddWithValue("@ComiteTecnico", _ComiteTecnico)
                    cmd.Parameters.AddWithValue("@FechaAlta", _FechaAlta)
                    cmd.Parameters.AddWithValue("@Activo", _Activo)
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
                    cmd.CommandText = "uspRepresentaciones"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdRepresentacion", _IdRepresentacion)
                    cmd.Parameters.AddWithValue("@Representacion", _Representacion)
                    cmd.Parameters.AddWithValue("@Comite", _Comite)
                    cmd.Parameters.AddWithValue("@ComiteTecnico", _ComiteTecnico)
                    cmd.Parameters.AddWithValue("@FechaAlta", _FechaAlta)
                    cmd.Parameters.AddWithValue("@Activo", _Activo)
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
                    cmd.CommandText = "uspRepresentaciones"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdRepresentacion", _IdRepresentacion)
                    cmd.Parameters.AddWithValue("@Representacion", _Representacion)
                    cmd.Parameters.AddWithValue("@Comite", _Comite)
                    cmd.Parameters.AddWithValue("@ComiteTecnico", _ComiteTecnico)
                    cmd.Parameters.AddWithValue("@FechaAlta", _FechaAlta)
                    cmd.Parameters.AddWithValue("@Activo", _Activo)
                    ''|| TagParametros
                    ''|| EndTagParametros
                    cmd.Parameters.AddWithValue("@sXML", _sXML)
                    cmd.Parameters.AddWithValue("@Bandera", _Bandera)

                    Using da As New SqlDataAdapter(cmd)
                        da.Fill(dt)
                    End Using
                End Using

                If dt.Rows.Count > 0 Then
                    _IdRepresentacion = IIf(IsDBNull(dt.Rows(0).Item("IdRepresentacion")) = True, Nothing, dt.Rows(0).Item("IdRepresentacion"))
                    _Representacion = IIf(IsDBNull(dt.Rows(0).Item("Representacion")) = True, Nothing, dt.Rows(0).Item("Representacion"))
                    _Comite = IIf(IsDBNull(dt.Rows(0).Item("Comite")) = True, Nothing, dt.Rows(0).Item("Comite"))
                    _ComiteTecnico = IIf(IsDBNull(dt.Rows(0).Item("ComiteTecnico")) = True, Nothing, dt.Rows(0).Item("ComiteTecnico"))
                    _FechaAlta = IIf(IsDBNull(dt.Rows(0).Item("FechaAlta")) = True, Nothing, dt.Rows(0).Item("FechaAlta"))
                    _Activo = IIf(IsDBNull(dt.Rows(0).Item("Activo")) = True, Nothing, dt.Rows(0).Item("Activo"))
                    ''|| TagLlenado
                    ''|| EndTagLlenado
                    _Encontrado = True
                Else
                    _IdRepresentacion = Nothing
                    _Representacion = Nothing
                    _Comite = Nothing
                    _ComiteTecnico = Nothing
                    _FechaAlta = Nothing
                    _Activo = Nothing
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
                    cmd.CommandText = "uspRepresentaciones"
                    cmd.CommandType = CommandType.StoredProcedure
                  cmd.Connection = cn
                  cmd.Parameters.AddWithValue ("@IdRepresentacion",_IdRepresentacion)
                  cmd.Parameters.AddWithValue ("@Representacion",_Representacion)
                  cmd.Parameters.AddWithValue ("@Comite",_Comite)
                  cmd.Parameters.AddWithValue ("@ComiteTecnico",_ComiteTecnico)
                  cmd.Parameters.AddWithValue ("@FechaAlta",_FechaAlta)
                  cmd.Parameters.AddWithValue ("@Activo",_Activo)
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
