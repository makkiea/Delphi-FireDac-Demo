object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FireDac-Demo'
  ClientHeight = 451
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 673
    Height = 337
    Color = clBtnShadow
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'company'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'role'
        Width = 144
        Visible = True
      end>
  end
  object btnAddClick: TButton
    Left = 120
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = btnAddClickClick
  end
  object btnEditClick: TButton
    Left = 232
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btnEditClickClick
  end
  object btnDeleteClick: TButton
    Left = 360
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 3
    OnClick = btnDeleteClickClick
  end
  object btnSaveClick: TButton
    Left = 480
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 4
    OnClick = btnSaveClickClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=Demo'
      'User_Name=postgres'
      'Password=111234'
      'Server=127.0.0.1'
      'Port=5433'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 612
    Top = 264
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 612
    Top = 192
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from employees')
    Left = 620
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 612
    Top = 56
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 528
    Top = 104
  end
end
