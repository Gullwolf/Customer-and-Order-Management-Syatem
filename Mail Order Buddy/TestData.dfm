object Testdatatable: TTestdatatable
  Left = 0
  Top = 0
  ClientHeight = 614
  ClientWidth = 639
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CustomerGrid: TDBGrid
    Left = 631
    Top = 24
    Width = 585
    Height = 153
    DataSource = DataMain.CustomerSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object OrdersGrid: TDBGrid
    Left = 8
    Top = 167
    Width = 609
    Height = 130
    DataSource = DataMain.OrdersSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object OrderDetailsGrid: TDBGrid
    Left = 8
    Top = 303
    Width = 609
    Height = 140
    DataSource = DataMain.OrderDetailsSource
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ProductsGrid: TDBGrid
    Left = 8
    Top = 449
    Width = 417
    Height = 166
    DataSource = DataMain.ProductsSource
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ProductID'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProductName'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QuantityPerUnit'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitPrice'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitsInStock'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Discontinued'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 496
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Home'
    TabOrder = 4
    OnClick = Button1Click
  end
  object SearchTablesEdit: TEdit
    Left = 232
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object SearchProductsBtn: TButton
    Left = 408
    Top = 72
    Width = 139
    Height = 25
    Caption = 'Products Low in Stock'
    TabOrder = 6
    OnClick = SearchProductsBtnClick
  end
  object SearchOrdersBtn: TButton
    Left = 40
    Top = 72
    Width = 139
    Height = 25
    Caption = 'Search Orders by OrderID'
    TabOrder = 7
    OnClick = SearchOrdersBtnClick
  end
  object SearchOrderDetailBtn: TButton
    Left = 208
    Top = 72
    Width = 169
    Height = 25
    Caption = 'Search Order-Details by OrderID'
    TabOrder = 8
    OnClick = SearchOrderDetailBtnClick
  end
end
