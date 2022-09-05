object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Paint'
  ClientHeight = 650
  ClientWidth = 1107
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 81
    Width = 1107
    Height = 569
    Align = alClient
    Color = clWhite
    ParentColor = False
    OnMouseDown = PaintBoxMouseDown
    OnMouseMove = PaintBoxMouseMove
    OnMouseUp = PaintBoxMouseUp
    ExplicitTop = 34
    ExplicitWidth = 1089
    ExplicitHeight = 616
  end
  object ToolBar: TPanel
    Left = 0
    Top = 0
    Width = 1107
    Height = 81
    Align = alTop
    Alignment = taLeftJustify
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -6
    object LabelColorPen: TLabel
      Left = 0
      Top = 12
      Width = 88
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = 'Pen color'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelWidth: TLabel
      Left = 10
      Top = 41
      Width = 63
      Height = 17
      Alignment = taCenter
      Caption = 'Pen width'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelTextSize: TLabel
      Left = 591
      Top = 46
      Width = 55
      Height = 17
      Caption = 'Text size'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ColorBox: TColorBox
      Left = 94
      Top = 10
      Width = 89
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object EditPenWidth: TEdit
      Left = 104
      Top = 38
      Width = 49
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '1'
    end
    object UpDown: TUpDown
      Left = 153
      Top = 38
      Width = 16
      Height = 24
      Associate = EditPenWidth
      Position = 1
      TabOrder = 2
    end
    object RadioGroupPR: TRadioGroup
      Left = 231
      Top = 4
      Width = 185
      Height = 59
      BiDiMode = bdLeftToRight
      Caption = 'Choose:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Pen'
        'Rubber')
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnClick = RadioGroupPRClick
    end
    object ButtonClear: TButton
      Left = 992
      Top = 4
      Width = 107
      Height = 36
      Caption = 'Clear'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = ButtonClearClick
    end
    object EditText: TEdit
      Left = 440
      Top = 8
      Width = 145
      Height = 32
      Align = alCustom
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tempus Sans ITC'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object ButtonAddText: TButton
      Left = 591
      Top = 8
      Width = 122
      Height = 32
      Caption = 'Add text'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = ButtonAddTextClick
    end
    object ComboBox: TComboBox
      Left = 440
      Top = 46
      Width = 145
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = 'Times New Roman'
      OnChange = ComboBoxChange
      Items.Strings = (
        'Times New Roman'
        'Impact'
        'Georgia'
        'Courier New')
    end
    object EditTextWidth: TEdit
      Left = 652
      Top = 46
      Width = 42
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tempus Sans ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Text = '8'
    end
    object UpDownText: TUpDown
      Left = 692
      Top = 46
      Width = 21
      Height = 23
      Associate = EditTextWidth
      Position = 8
      TabOrder = 9
    end
  end
end
