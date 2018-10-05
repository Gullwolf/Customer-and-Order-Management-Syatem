object CustomerDataBaseForm: TCustomerDataBaseForm
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Mail Order Buddy'
  ClientHeight = 443
  ClientWidth = 784
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 784
    Height = 38
    Align = alTop
    Alignment = taCenter
    Caption = 'Customer DataBase'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Arial Nova'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ExplicitWidth = 309
  end
  object CustomerSearchEdit: TEdit
    Left = 48
    Top = 160
    Width = 121
    Height = 21
    Hint = 'Search For An Existing Customer Name'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = 'CustomerSearchEdit'
  end
  object CustomerSearchbtn: TButton
    Left = 48
    Top = 216
    Width = 121
    Height = 57
    Hint = 'Search For The Customer'
    Caption = 'CustomerSearchbtn'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = CustomerSearchbtnClick
  end
  object Homebtn: TButton
    Left = 701
    Top = 410
    Width = 75
    Height = 25
    Hint = 'Main Menu'
    Caption = 'Home'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = HomebtnClick
  end
  object EditCustomerbtn: TButton
    Left = 360
    Top = 216
    Width = 121
    Height = 57
    Hint = 'Edit Customer Details'
    Caption = 'EditCustomerbtn'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = EditCustomerbtnClick
  end
  object DContactNameChoice: TDBLookupComboBox
    Left = 360
    Top = 120
    Width = 145
    Height = 21
    KeyField = 'CustomerID'
    ListField = 'ContactName;CompanyName'
    ListSource = DataMain.CustomerSource
    TabOrder = 4
  end
end
