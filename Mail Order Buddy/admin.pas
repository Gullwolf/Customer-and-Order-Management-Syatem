unit admin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAdminForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    UserNameEdit: TEdit;
    PasswordEdit: TEdit;
    HomeBtn: TButton;
    EnterBtn: TButton;
    procedure HomeBtnClick(Sender: TObject);
    procedure EnterBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdminForm: TAdminForm;

implementation

{$R *.dfm}

uses Home, AdminFeatures;

procedure TAdminForm.EnterBtnClick(Sender: TObject);
{ Opens the admin features page when login details are correct. }
begin
  if (UserNameEdit.text = 'MailOrderBuddy') and (PasswordEdit.text = 'Order123')
  then
  begin
    UserNameEdit.Text := '';
    PasswordEdit.Text := '';
    AdminForm.Visible := False;
    AdminFeaturesForm.Visible := True;
  end
  else
    BEGIN
      ShowMessage('Username or Password incorrect.');
    END;
end;

procedure TAdminForm.HomeBtnClick(Sender: TObject);
{ Goes back to the main menu page. }
begin
  AdminForm.Visible := False;
  HomeForm.Visible := True;
end;

end.
