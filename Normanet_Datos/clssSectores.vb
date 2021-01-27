REM Clase en VB creada automaticamente by ..:: ANCE A.C.  ::.. .Clase creada el: 26/01/2021 12:00:00 a. m. Version 3.3.2
Imports System.Linq
Imports System.Text
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration


Namespace AnceSystem

    Public Class clssSectores
        Implements IDisposable
#Region "Propiedades de la clase"
        REM Variables de Propiedad
        Private _IdSector As Integer
        Private _Sector As String
        Private _FechaAlta As Nullable(Of DateTime)
        Private _Activo As Boolean
        Private _sXML As String
        Private _Bandera As String
        Private _bError As String
        Private cn As SqlConnection
        Private disposedValue As Boolean

        REM Propiedades de la Entidad
        Public Property IdSector As Integer
            Get
                Return _IdSector
            End Get
            Set(ByVal Value As Integer)
                _IdSector = Value
            End Set
        End Property

        Public Property Sector As String
            Get
                Return _Sector
            End Get
            Set(ByVal Value As String)
                _Sector = Value
            End Set
        End Property

        Public Property FechaAlta As Nullable(Of DateTime)
            Get
                Return _FechaAlta
            End Get
            Set(ByVal Value As Nullable(Of DateTime))
                _FechaAlta = Value
            End Set
        End Property

        Public Property Activo As Boolean
            Get
                Return _Activo
            End Get
            Set(ByVal Value As Boolean)
                _Activo = Value
            End Set
        End Property

        ''' <summary>
        '''Se utiliza para pasarle la parametro sXML a un store procedure
        ''' </summary>
        ''' <remarks></remarks>
        Public Property sXML As String
            Get
                Return _sXML
            End Get
            Set(ByVal Value As String)
                _sXML = Value
            End Set
        End Property

        ''' <summary>
        '''Se utiliza para pasarle la bandera a un store procedure
        ''' </summary>
        ''' <remarks></remarks>
        Public Property Bandera As String
            Get
                Return _Bandera
            End Get
            Set(ByVal Value As String)
                _Bandera = Value
            End Set
        End Property

        ''' <summary>
        '''Se utiliza para saber si el metodo fallo
        ''' </summary>
        ''' <remarks></remarks>
        Public Property bError As Boolean
            Get
                Return _bError
            End Get
            Set(ByVal Value As Boolean)
                _bError = Value
            End Set
        End Property

        REM propiedades autoimplementadas solo para FWK 3.5
        Public Property Propiedades As PropertyCollection
        Public Property Encontrado As Boolean
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
        Public Sub New(ByVal Optional sNombreCn As String = "cnSistema")
            REM cn = New SqlConnection("")
            REM cn = New SqlConnection(ConfigurationManager.ConnectionStrings("").ConnectionString)
            cn = New SqlConnection(clsConeccion.AnceSystem.clssConeccion.Conectar(sNombreCn))
        End Sub
        REM Funcion que Elimina datos
        ''' <summary>
        '''Metodo para eliminar, contiene todos los campos de la base de la tabla
        ''' </summary>
        ''' <remarks></remarks>
        Public Sub Eliminar()

            Try
                bError = False
                cn.Open()

                Using cmd As New SqlCommand
                    cmd.CommandText = "uspSectores"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdSector", _IdSector)
                    cmd.Parameters.AddWithValue("@Sector", _Sector)
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
                    cmd.CommandText = "uspSectores"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdSector", _IdSector)
                    cmd.Parameters.AddWithValue("@Sector", _Sector)
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
                    cmd.CommandText = "uspSectores"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdSector", _IdSector)
                    cmd.Parameters.AddWithValue("@Sector", _Sector)
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
                    cmd.CommandText = "uspSectores"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdSector", _IdSector)
                    cmd.Parameters.AddWithValue("@Sector", _Sector)
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
                    _IdSector = IIf(IsDBNull(dt.Rows(0).Item("IdSector")) = True, Nothing, dt.Rows(0).Item("IdSector"))
                    _Sector = IIf(IsDBNull(dt.Rows(0).Item("Sector")) = True, Nothing, dt.Rows(0).Item("Sector"))
                    _FechaAlta = IIf(IsDBNull(dt.Rows(0).Item("FechaAlta")) = True, Nothing, dt.Rows(0).Item("FechaAlta"))
                    _Activo = IIf(IsDBNull(dt.Rows(0).Item("Activo")) = True, Nothing, dt.Rows(0).Item("Activo"))
                    ''|| TagLlenado
                    ''|| EndTagLlenado
                    _Encontrado = True
                Else
                    _IdSector = Nothing
                    _Sector = Nothing
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
                    cmd.CommandText = "uspSectores"
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Connection = cn
                    cmd.Parameters.AddWithValue("@IdSector", _IdSector)
                    cmd.Parameters.AddWithValue("@Sector", _Sector)
                    cmd.Parameters.AddWithValue("@FechaAlta", _FechaAlta)
                    cmd.Parameters.AddWithValue("@Activo", _Activo)
                    ''|| TagParametros
                    ''|| EndTagParametros
                    cmd.Parameters.AddWithValue("@sXML", _sXML)
                    cmd.Parameters.AddWithValue("@Bandera", _Bandera)
                    Using da As New SqlDataAdapter(cmd)
                        da.Fill(dt)
                    End Using

                    If dt.Rows.Count = 1 Then
                        Propiedades = New PropertyCollection
                        For Each cols As DataColumn In dt.Columns
                            Propiedades.Add(cols.ColumnName, IIf(IsDBNull(dt.Rows(0).Item(cols.ColumnName)), "", dt.Rows(0).Item(cols.ColumnName)))
                        Next
                        _Encontrado = True
                    End If

                End Using

            Catch ex As Exception
                bError = True
                uException = ex
            Finally
                cn.Close()
            End Try
            Return dt
        End Function


#End Region

    End Class

End Namespace
