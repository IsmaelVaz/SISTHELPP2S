object frmNotificacao: TfrmNotificacao
  Left = 0
  Top = 0
  Caption = 'Notifica'#231#245'es'
  ClientHeight = 404
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnGeral: TPanel
    Left = -4
    Top = -5
    Width = 733
    Height = 414
    Align = alCustom
    Anchors = [akTop]
    BevelEdges = []
    BevelOuter = bvNone
    Color = clMenuBar
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 733
      Height = 122
      Align = alTop
      BevelEdges = []
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      ExplicitTop = -6
    end
    object Panel2: TPanel
      Left = 0
      Top = 122
      Width = 733
      Height = 292
      Align = alClient
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 130
      ExplicitWidth = 731
      ExplicitHeight = 284
      object StringGrid1: TStringGrid
        Left = 0
        Top = 29
        Width = 733
        Height = 263
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 8
        ExplicitTop = 40
        ExplicitWidth = 713
        ExplicitHeight = 232
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 733
        Height = 29
        Margins.Left = 50
        ButtonHeight = 25
        ButtonWidth = 41
        Caption = 'ToolBar1'
        Color = clBtnHighlight
        GradientEndColor = clCream
        HotTrackColor = clCream
        Images = ImageList1
        ParentColor = False
        TabOrder = 1
        ExplicitLeft = 8
        ExplicitTop = 5
        ExplicitWidth = 713
        object cmdInserir: TToolButton
          Left = 0
          Top = 0
          Hint = 'Inserir'
          ImageIndex = 0
        end
        object cmdExcluir: TToolButton
          Left = 41
          Top = 0
          Hint = 'Excluir'
          ImageIndex = 1
        end
        object cmdEditar: TToolButton
          Left = 82
          Top = 0
          Hint = 'Editar'
          ImageIndex = 2
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 672
    Top = 120
    Bitmap = {
      494C010103000800340010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008780E0008780E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500EFD6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A7000DA31B0008780E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000C6A59C00FFEF
      D600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600EFCE9C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A7000EAA1D0008780E00000000000000
      000000000000000000000000000000000000000000000000000000009A00174A
      FD00103BF40000009A000000000000000000000000000000000000009A00002C
      F8000030FC0000009A0000000000000000000000000000000000C6ADA500FFEF
      E7002D2D2D0058534E00D6C6BD00F7DEBD00EFD6AD00EFCE9C00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A7000EA81C0008780E00000000000000
      000000000000000000000000000000000000000000000000000000009A001A47
      F8001A4CFF00123BF10000009A00000000000000000000009A00012DF6000132
      FF00002AF30000009A0000000000000000000000000000000000C6ADA500FFF7
      E70058534E004544420051606100D6C6BD00F7DEB500EFD6AD00EFCE9C00EFCE
      9C00EFCE9C00EFCE9400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A70010AA1F0008780E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A001C47F6001B4DFF00143EF40000009A0000009A00002DF8000134FF00032B
      F20000009A000000000000000000000000000000000000000000CEB5AD00FFFF
      F700C6C6C60054777B00477AA90018556F008A5B5200C6B5B500C6C6C600C6C6
      C600C6C6C600EFCE9C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000008780E000878
      0E0008780E0008780E0008780E0076F9A70019B02C0008780E0008780E000878
      0E0008780E0008780E0000000000000000000000000000000000000000000000
      000000009A001D48F6001D50FF00103DFB000431FE000132FF00002CF6000000
      9A00000000000000000000000000000000000000000000000000D6B5AD00FFFF
      FF00FFF7EF0054777B0041749600947E7500C17135008A5B5200D6C6BD00EFD6
      AD00EFD6AD00EFD6AD00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008780E0076F9A70055E3
      830049DA720042D3680037C856002AB9430022B337001CB2300016AF27000FA8
      1D000EA91B000DA21B0008780E00000000000000000000000000000000000000
      00000000000000009A001A48F9001342FF000C3CFF000733F60000009A000000
      0000000000000000000000000000000000000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF007C707800F1BC8600F0A85C00C07638008A5B5200D6C6
      BD00EFD6AD00EFD6AD00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008780E0076F9A70076F9
      A70076F9A70076F9A70076F9A70076F9A7002CBB480076F9A70076F9A70076F9
      A70076F9A70076F9A70008780E00000000000000000000000000000000000000
      00000000000000009A00214EFC001D4BFF001847FF001743F60000009A000000
      0000000000000000000000000000000000000000000000000000D6BDB500FFFF
      FF00C6C6C600C6C6C600AD7B7300FBD3A900F9C48D00EFA65A00C07638008A5B
      5200C6B5B500D6C6BD00BD949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000008780E000878
      0E0008780E0008780E0008780E0076F9A7003CCB5D0008780E0008780E000878
      0E0008780E0008780E0000000000000000000000000000000000000000000000
      000000009A002E5BF9002C5FFF00224DF800204BF8002355FF001B46F6000000
      9A00000000000000000000000000000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700AD7B7300FBD3A900F9C48D00F0A85C00C171
      35008A5B5200D6C6BD00C6ADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A70049D9720008780E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A003664FA00386BFF002D59F40000009A0000009A00224CF4002558FF001D49
      F60000009A000000000000000000000000000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700AD7B7300FBD3A900F8C28C00EDA7
      5F00B56D3E008A5B5200C6B5B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A70055E2820008780E00000000000000
      000000000000000000000000000000000000000000000000000000009A004071
      FA004274FF00325DF10000009A00000000000000000000009A00224DF100275A
      FF00204CF80000009A0000000000000000000000000000000000E7C6B500FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600AD7B7300FBD3A9009891
      A20035A8F5000316AC0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A70063F0970008780E00000000000000
      000000000000000000000000000000000000000000000000000000009A00497A
      FC003B66F30000009A000000000000000000000000000000000000009A002550
      F4002655FA0000009A0000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700AD7B73004A9E
      ED001029D6001029D6000316AC0000009A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A70076F9A70008780E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE000018
      C6006D8AFD00106BFF001029D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008780E0008780E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B000018C6000018C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFC0010000FE7FFFFFC0010000
      FC3FE7E7C0010000FC3FC3C3C0010000FC3FC183C0010000FC3FE007C0010000
      C003F00FC00100008001F81FC00100008001F81FC0010000C003F00FC0010000
      FC3FE007C0010000FC3FC183C0010000FC3FC3C3C0000000FC3FE7E7C0010000
      FE7FFFFFC0030000FFFFFFFFC00F000000000000000000000000000000000000
      000000000000}
  end
end
