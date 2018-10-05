object AdminForm: TAdminForm
  Left = 0
  Top = 0
  Caption = 'Admin'
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 88
    Top = 56
    Width = 84
    Height = 19
    Caption = 'User Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 99
    Top = 104
    Width = 73
    Height = 19
    Caption = 'Password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object UserNameEdit: TEdit
    Left = 192
    Top = 58
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object PasswordEdit: TEdit
    Left = 192
    Top = 106
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object HomeBtn: TButton
    Left = 364
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Home'
    TabOrder = 2
    OnClick = HomeBtnClick
  end
  object EnterBtn: TButton
    Left = 152
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Enter'
    TabOrder = 3
    OnClick = EnterBtnClick
  end
end
