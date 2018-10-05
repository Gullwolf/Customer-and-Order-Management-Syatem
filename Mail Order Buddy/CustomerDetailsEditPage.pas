unit CustomerDetailsEditPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.UITypes, Vcl.Mask,
  Vcl.DBCtrls;

type
  TEditDetailsForm = class(TForm)
    Label1: TLabel;
    CustomerNamelbl: TLabel;
    CutomerAddresslbl: TLabel;
    CustomerPostcodelbl: TLabel;
    Homebtn: TButton;
    CustomerTelephonelbl: TLabel;
    DBCustomerNameEdit: TDBEdit;
    DBCustomerAddressLine1Edit: TDBEdit;
    DBCustomerAddressLine2Edit: TDBEdit;
    DBCustomerAddressLine3Edit: TDBEdit;
    DBCustomerPostcodeEdit: TDBEdit;
    DBCustomerTelephoneEdit: TDBEdit;
    CompanyNamelbl: TLabel;
    DBCompanyNameEdit: TDBEdit;
    UpdateBtn: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure HomebtnClick(Sender: TObject);
    procedure UpdateBtnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    CustomerSearchEdit: TEdit;
  end;

var
  EditDetailsForm: TEditDetailsForm;

implementation

{$R *.dfm}

uses Home, CustomerDataBase1, DMain;

procedure TEditDetailsForm.HomebtnClick(Sender: TObject);
 { Closes the current form and makes the 'Main' form visible again so that the user can carry out a new task. }
begin
  HomeForm.Visible := True;
  Close;
end;

procedure TEditDetailsForm.UpdateBtnClick(Sender: TObject);
 { Updates the current values in the Database for the currently selected customer. }
begin
  with DMain.DataMain.CustomerSet do
  begin
    Edit; { Sets the DataSet up ready for editing values inside of it. }
    FieldValues['CompanyName'] := DBCompanyNameEdit.Text; { Changes the 'CompanyName' to the string that is in the 'Edit Box'. }
    FieldValues['ContactName'] := DBCustomerNameEdit.Text; { Changes the 'ContactName' to the string that is in the 'Edit Box'. }
    FieldValues['Address'] := DBCustomerAddressLine1Edit.Text; { Changes the 'Address' to the string that is in the 'Edit Box'. }
    FieldValues['City'] := DBCustomerAddressLine2Edit.Text; { Changes the 'City' to the string that is in the 'Edit Box'. }
    FieldValues['Postcode'] := DBCustomerPostcodeEdit.Text; { Changes the 'Postcode' to the string that is in the 'Edit Box'. }
    FieldValues['County'] := DBCustomerAddressLine3Edit.Text; { Changes the 'County' to the string that is in the 'Edit Box'. }
    FieldValues['Phone'] := DBCustomerTelephoneEdit.Text; { Changes the 'Phone' to the string that is in the 'Edit Box'. }
     { It changes will rewrite all of the values, even if they have not been changed, to stop errors of data going in to the wrong cells in the database. }
    Post; { Save the new record. }
  end;

  ShowMessage('Update Complete'); { A message box to let the user know that the update it complete and successful. }
end;

end.
