object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 217
  Top = 195
  Height = 730
  Width = 233
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=bd.mdb;Persist Secu' +
      'rity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
  end
  object qryChek: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1063#1077#1082)
    Left = 88
    Top = 24
  end
  object dsChek: TDataSource
    DataSet = qryChek
    Left = 144
    Top = 24
  end
  object qryReis: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1052#1072#1088#1096#1088#1091#1090'.'#1053#1072#1079#1074#1072', '#1041#1110#1083#1077#1090'.'#1094#1110#1085#1072', '#1041#1110#1083#1077#1090'.['#1090#1080#1087' '#1073#1110#1083#1077#1090#1091'], '#1041#1110#1083#1077#1090'.'#1084#1110#1089#1094 +
        #1077', '#1041#1110#1083#1077#1090'.['#1063#1072#1089' '#1074#1110#1076#1087#1088#1072#1074#1083#1077#1085#1085#1103'], '#1041#1110#1083#1077#1090'.['#1063#1072#1089' '#1087#1088#1080#1073#1091#1090#1090#1103'], '#1041#1110#1083#1077#1090'.'#1055#1030#1041', '#1051#1110 +
        #1090#1072#1082'.['#1050#1083#1072#1089'], '#1063#1077#1082'.['#1050#1086#1076' '#1095#1077#1082#1091'], '#1041#1110#1083#1077#1090'.['#1050#1086#1076' '#1073#1110#1083#1077#1090#1072']'
      
        'FROM '#1063#1077#1082' INNER JOIN ('#1051#1110#1090#1072#1082' INNER JOIN ('#1055#1077#1088#1089#1086#1085#1072#1083' INNER JOIN ('#1052#1072#1088#1096 +
        #1088#1091#1090' INNER JOIN '#1041#1110#1083#1077#1090' ON '#1052#1072#1088#1096#1088#1091#1090'.['#1050#1086#1076' '#1084#1072#1088#1096#1088#1091#1090#1072'] = '#1041#1110#1083#1077#1090'.['#1050#1086#1076' '#1084#1072#1088#1096 +
        #1088#1091#1090#1091']) ON '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1050#1086#1076' '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072'] = '#1041#1110#1083#1077#1090'.['#1050#1086#1076' '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072']) ON' +
        ' '#1051#1110#1090#1072#1082'.['#1050#1086#1076' '#1083#1110#1090#1072#1082#1072'] = '#1041#1110#1083#1077#1090'.['#1050#1086#1076' '#1083#1110#1090#1072#1082#1072']) ON '#1063#1077#1082'.['#1050#1086#1076' '#1095#1077#1082#1091'] = '#1041#1110 +
        #1083#1077#1090'.['#1050#1086#1076' '#1095#1077#1082#1091'];')
    Left = 88
    Top = 72
  end
  object dsReis: TDataSource
    DataSet = qryReis
    Left = 144
    Top = 72
  end
  object tblRoute: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1052#1072#1088#1096#1088#1091#1090
    Left = 88
    Top = 120
  end
  object dsRoute: TDataSource
    DataSet = tblRoute
    Left = 144
    Top = 120
  end
  object qryTicketype: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#1041#1110#1083#1077#1090'.['#1090#1080#1087' '#1073#1110#1083#1077#1090#1091']'
      'FROM '#1041#1110#1083#1077#1090
      'GROUP BY '#1041#1110#1083#1077#1090'.['#1090#1080#1087' '#1073#1110#1083#1077#1090#1091'];')
    Left = 88
    Top = 168
  end
  object dsTicketType: TDataSource
    DataSet = qryTicketype
    Left = 152
    Top = 168
  end
  object tblTrain: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1051#1110#1090#1072#1082
    Left = 88
    Top = 216
  end
  object dsTrain: TDataSource
    DataSet = tblTrain
    Left = 144
    Top = 216
  end
  object qryPrice: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#1052#1072#1088#1096#1088#1091#1090'.['#1041#1072#1079#1086#1074#1072' '#1074#1072#1088#1090#1110#1089#1090#1100']'
      
        'FROM '#1052#1072#1088#1096#1088#1091#1090' INNER JOIN '#1041#1110#1083#1077#1090' ON '#1052#1072#1088#1096#1088#1091#1090'.['#1050#1086#1076' '#1084#1072#1088#1096#1088#1091#1090#1072'] = '#1041#1110#1083#1077#1090'.' +
        '['#1050#1086#1076' '#1084#1072#1088#1096#1088#1091#1090#1091']'
      '')
    Left = 88
    Top = 272
  end
  object dsPrice: TDataSource
    DataSet = qryPrice
    Left = 144
    Top = 272
  end
  object qryPers: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1055#1030#1041' '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072'] FROM '#1055#1077#1088#1089#1086#1085#1072#1083)
    Left = 88
    Top = 328
  end
  object dsPers: TDataSource
    DataSet = qryPers
    Left = 144
    Top = 328
  end
  object qryRoute1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1052#1072#1088#1096#1088#1091#1090)
    Left = 88
    Top = 376
  end
  object dsRoute1: TDataSource
    DataSet = qryRoute1
    Left = 144
    Top = 376
  end
  object qryTicket1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1041#1110#1083#1077#1090)
    Left = 88
    Top = 432
  end
  object dsTicket1: TDataSource
    DataSet = qryTicket1
    Left = 144
    Top = 432
  end
  object qryChek1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1063#1077#1082)
    Left = 88
    Top = 488
  end
  object dsChek1: TDataSource
    DataSet = qryChek1
    Left = 144
    Top = 496
  end
  object qryPers1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1055#1077#1088#1089#1086#1085#1072#1083)
    Left = 88
    Top = 536
  end
  object dsPers1: TDataSource
    DataSet = qryPers1
    Left = 144
    Top = 544
  end
  object qryTrain1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1051#1110#1090#1072#1082)
    Left = 88
    Top = 592
  end
  object dsTrain1: TDataSource
    DataSet = qryTrain1
    Left = 144
    Top = 600
  end
  object DataSourceCount: TDataSource
    DataSet = ADOQueryCount
    Left = 144
    Top = 648
  end
  object ADOQueryCount: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#1051#1110#1090#1072#1082'.['#1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1084#1110#1089#1094#1100']'
      'FROM '#1051#1110#1090#1072#1082
      'WHERE ((('#1051#1110#1090#1072#1082'.'#1050#1083#1072#1089')="'#1041#1110#1079#1085#1077#1089'"));')
    Left = 56
    Top = 648
  end
end
