object Form4: TForm4
  Left = 293
  Top = 281
  Width = 702
  Height = 471
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082#1080
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 8
    Top = 8
    Width = 665
    Height = 417
    ActivePage = ts1
    TabOrder = 0
    object ts1: TTabSheet
      Caption = #1052#1072#1088#1096#1088#1091#1090
      object dbgrd1: TDBGrid
        Left = 16
        Top = 16
        Width = 633
        Height = 265
        DataSource = DataModule2.dsRoute1
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnl1: TPanel
        Left = 16
        Top = 208
        Width = 633
        Height = 81
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clSkyBlue
        TabOrder = 1
        Visible = False
        object lbl1: TLabel
          Left = 8
          Top = 16
          Width = 39
          Height = 17
          Caption = #1053#1072#1079#1074#1072
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 8
          Top = 48
          Width = 54
          Height = 17
          Caption = #1042#1110#1076#1089#1090#1072#1085#1100
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 232
          Top = 16
          Width = 101
          Height = 17
          Caption = #1041#1072#1079#1086#1074#1072' '#1074#1072#1088#1090#1110#1089#1090#1100
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 232
          Top = 48
          Width = 35
          Height = 17
          Caption = #1054#1087#1080#1089
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
        end
        object edt1: TEdit
          Left = 64
          Top = 8
          Width = 161
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edt2: TEdit
          Left = 64
          Top = 40
          Width = 161
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edt3: TEdit
          Left = 336
          Top = 8
          Width = 105
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object btn1: TButton
          Left = 448
          Top = 8
          Width = 81
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btn1Click
        end
        object btn2: TButton
          Left = 448
          Top = 40
          Width = 81
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btn2Click
        end
        object btn3: TButton
          Left = 536
          Top = 8
          Width = 81
          Height = 25
          Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btn3Click
        end
        object edt6: TEdit
          Left = 336
          Top = 40
          Width = 105
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object pnl2: TPanel
        Left = 16
        Top = 296
        Width = 633
        Height = 81
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clSkyBlue
        TabOrder = 2
        object lbl4: TLabel
          Left = 184
          Top = 24
          Width = 115
          Height = 17
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1085#1072#1079#1074#1086#1102
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 184
          Top = 56
          Width = 181
          Height = 17
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084' '#1084#1072#1088#1096#1088#1091#1090#1091
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
        end
        object btn4: TButton
          Left = 16
          Top = 8
          Width = 65
          Height = 33
          Caption = #1044#1086#1076#1072#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btn4Click
        end
        object btn5: TButton
          Left = 80
          Top = 8
          Width = 65
          Height = 33
          Caption = #1047#1084#1110#1085#1080#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btn5Click
        end
        object btn6: TButton
          Left = 16
          Top = 40
          Width = 65
          Height = 33
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btn6Click
        end
        object btn7: TButton
          Left = 80
          Top = 40
          Width = 65
          Height = 33
          Caption = #1047#1074#1110#1090
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btn7Click
        end
        object edt4: TEdit
          Left = 376
          Top = 16
          Width = 241
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = edt4Change
        end
        object edt5: TEdit
          Left = 376
          Top = 48
          Width = 97
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object btn8: TButton
          Left = 480
          Top = 48
          Width = 57
          Height = 25
          Caption = #1054#1082
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btn8Click
        end
        object btn9: TButton
          Left = 536
          Top = 48
          Width = 81
          Height = 25
          Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btn9Click
        end
      end
    end
    object ts2: TTabSheet
      Caption = #1041#1110#1083#1077#1090
      ImageIndex = 1
      object lbl7: TLabel
        Left = 16
        Top = 336
        Width = 123
        Height = 17
        Caption = #1044#1072#1090#1072' '#1074#1110#1076#1087#1088#1072#1074#1083#1077#1085#1085#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 16
        Top = 304
        Width = 93
        Height = 17
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1091#1090#1090#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object dbgrd2: TDBGrid
        Left = 16
        Top = 8
        Width = 633
        Height = 249
        DataSource = DataModule2.dsTicket1
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object dtp1: TDateTimePicker
        Left = 144
        Top = 296
        Width = 137
        Height = 25
        Date = 44535.800059525470000000
        Time = 44535.800059525470000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dtp2: TDateTimePicker
        Left = 144
        Top = 328
        Width = 137
        Height = 25
        Date = 44535.800495243060000000
        Time = 44535.800495243060000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object cbb1: TComboBox
        Left = 288
        Top = 312
        Width = 177
        Height = 25
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ItemHeight = 17
        ParentFont = False
        TabOrder = 3
        Text = #1055#1086#1096#1091#1082' '#1079#1072
        Items.Strings = (
          #1044#1072#1090#1086#1102' '#1074#1110#1076#1087#1088#1072#1074#1083#1077#1085#1085#1103
          #1044#1072#1090#1086#1102' '#1087#1088#1080#1073#1091#1090#1090#1103
          #1044#1072#1090#1086#1102' '#1087#1088#1080#1073#1091#1090#1090#1103' '#1110' '#1076#1072#1090#1086#1102' '#1074#1110#1076#1087#1088#1072#1074#1083#1077#1085#1085#1103)
      end
      object btn10: TButton
        Left = 472
        Top = 312
        Width = 49
        Height = 25
        Caption = #1054#1082
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btn10Click
      end
      object btn11: TButton
        Left = 520
        Top = 312
        Width = 113
        Height = 25
        Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btn11Click
      end
    end
    object ts3: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 2
      object lbl9: TLabel
        Left = 88
        Top = 344
        Width = 108
        Height = 17
        Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1076#1072#1090#1086#1102
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object dbgrd3: TDBGrid
        Left = 16
        Top = 16
        Width = 633
        Height = 313
        DataSource = DataModule2.dsChek1
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object dtp3: TDateTimePicker
        Left = 216
        Top = 336
        Width = 121
        Height = 25
        Date = 44535.811656388890000000
        Time = 44535.811656388890000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object btn12: TButton
        Left = 352
        Top = 336
        Width = 49
        Height = 25
        Caption = #1054#1082
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btn12Click
      end
      object btn13: TButton
        Left = 416
        Top = 336
        Width = 97
        Height = 25
        Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btn13Click
      end
    end
    object ts4: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 3
      object dbgrd4: TDBGrid
        Left = 16
        Top = 16
        Width = 625
        Height = 321
        DataSource = DataModule2.dsPers1
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btn14: TButton
        Left = 104
        Top = 344
        Width = 121
        Height = 33
        Caption = #1044#1086#1076#1072#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btn14Click
      end
      object btn15: TButton
        Left = 256
        Top = 344
        Width = 121
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btn15Click
      end
      object btn16: TButton
        Left = 408
        Top = 344
        Width = 121
        Height = 33
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btn16Click
      end
    end
    object ts5: TTabSheet
      Caption = #1051#1110#1090#1072#1082
      ImageIndex = 4
      object dbgrd5: TDBGrid
        Left = 16
        Top = 8
        Width = 625
        Height = 313
        DataSource = DataModule2.dsTrain1
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btn17: TButton
        Left = 104
        Top = 336
        Width = 121
        Height = 33
        Caption = #1044#1086#1076#1072#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btn17Click
      end
      object btn18: TButton
        Left = 264
        Top = 336
        Width = 121
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btn18Click
      end
      object btn19: TButton
        Left = 416
        Top = 336
        Width = 121
        Height = 33
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btn19Click
      end
    end
  end
end
