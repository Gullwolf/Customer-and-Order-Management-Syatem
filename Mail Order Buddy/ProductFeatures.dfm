object ProductForm: TProductForm
  Left = 0
  Top = 0
  Caption = 'Products'
  ClientHeight = 443
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 216
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object DBProductsGrid: TDBGrid
    Left = 56
    Top = 8
    Width = 473
    Height = 169
    DataSource = DataMain.ProductsSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 128
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 120
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
  end
end
