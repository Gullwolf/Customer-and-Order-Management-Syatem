unit NewCustomerDetails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TNewDetailsForm = class(TForm)
    Homebtn: TButton;
    CompanyNamelbl: TLabel;
    CustomerNamelbl: TLabel;
    CutomerAddresslbl: TLabel;
    CustomerTelephonelbl: TLabel;
    CustomerPostcodelbl: TLabel;
    Label1: TLabel;
    NewCustomerBtn: TButton;
    NewCompanyEdit: TEdit;
    NewCustomerEdit: TEdit;
    NewAddress1Edit: TEdit;
    NewAddress2Edit: TEdit;
    NewAddress3Edit: TEdit;
    NewPostcodeEdit: TEdit;
    NewPhoneNumberEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure HomebtnClick(Sender: TObject);
    procedure NewCustomerBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewDetailsForm: TNewDetailsForm;

implementation

{$R *.dfm}

uses Home, CustomerDataBase1, CustomerDetailsEditPage, NewOrderForm, DMain;

procedure TNewDetailsForm.HomebtnClick(Sender: TObject);
 { Closes the current form and makes the 'Main' form visible again so that the user can carry out a new task. }
begin
  HomeForm.visible := True;
  NewDetailsForm.Close;
end;

procedure TNewDetailsForm.NewCustomerBtnClick(Sender: TObject);
begin
  with DMain.DataMain.CustomerSet do
  begin
    Open;
    Append;
    FieldValues['CompanyName'] := NewCompanyEdit.Text; { Sets the 'CompanyName' to the string that is in the 'Edit Box'. }
    FieldValues['ContactName'] := NewCustomerEdit.Text; { Sets the 'ContactName' to the string that is in the 'Edit Box'. }
    FieldValues['Address'] := NewAddress1Edit.Text; { Sets the 'Address' to the string that is in the 'Edit Box'. }
    FieldValues['City'] := NewAddress2Edit.Text; { Sets the 'City' to the string that is in the 'Edit Box'. }
    FieldValues['Postcode'] := NewPostcodeEdit.Text; { Sets the 'Postcode' to the string that is in the 'Edit Box'. }
    FieldValues['County'] := NewAddress3Edit.Text; { Sets the 'County' to the string that is in the 'Edit Box'. }
    FieldValues['Phone'] := NewPhoneNumberEdit.Text; { Sets the 'Phone' to the string that is in the 'Edit Box'. }
    Post;
  end;

  NewCompanyEdit.Clear; { Clears the 'CompanyName' 'EditBox' ready for the user to enter another customer. }
  NewCustomerEdit.Clear; { Clears the 'ContactName' 'EditBox' ready for the user to enter another customer. }
  NewAddress1Edit.Clear; { Clears the 'Address' 'EditBox' ready for the user to enter another customer. }
  NewAddress2Edit.Clear; { Clears the 'City' 'EditBox' ready for the user to enter another customer. }
  NewAddress3Edit.Clear; { Clears the 'County' 'EditBox' ready for the user to enter another customer. }
  NewPostcodeEdit.Clear; { Clears the 'Postcode' 'EditBox' ready for the user to enter another customer. }
  NewPhoneNumberEdit.Clear; { Clears the 'PhoneNumber' 'EditBox' ready for the user to enter another customer. }

  ShowMessage('New Customer Created'); { Tells the user that the new customer has been added to the database. }

end;

end.
