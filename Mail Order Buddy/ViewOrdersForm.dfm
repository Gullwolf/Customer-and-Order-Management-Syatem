object ViewOrders: TViewOrders
  Left = 0
  Top = 0
  Caption = 'View Orders'
  ClientHeight = 471
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SearchLbl: TLabel
    Left = 40
    Top = 232
    Width = 320
    Height = 16
    Caption = 'Search by entering: CustomerID, OrderID, or OrderDate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object OrdersGrid: TDBGrid
    Left = 48
    Top = 24
    Width = 401
    Height = 120
    DataSource = DataMain.OrdersSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = OrdersGridDblClick
  end
  object HomeBtn: TButton
    Left = 443
    Top = 438
    Width = 75
    Height = 25
    Caption = 'Home'
    TabOrder = 1
    OnClick = HomeBtnClick
  end
  object SearchBtn: TButton
    Left = 64
    Top = 291
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 2
    OnClick = SearchBtnClick
  end
  object SearchEdit: TEdit
    Left = 40
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
