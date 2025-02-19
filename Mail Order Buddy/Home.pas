unit Home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  THomeForm = class(TForm)
    Label1: TLabel;
    Newbtn: TButton;
    EditCustbtn: TButton;
    Exitbtn: TButton;
    NewCustomerbtn: TButton;
    Button1: TButton;
    OpenOrderBtn: TButton;
    AdminBtn: TButton;
    procedure ExitbtnClick(Sender: TObject);
    procedure NewbtnClick(Sender: TObject);
    procedure EditCustbtnClick(Sender: TObject);
    procedure NewCustomerbtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure OpenOrderBtnClick(Sender: TObject);
    procedure AdminBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HomeForm: THomeForm;

implementation

{$R *.dfm}

uses CustomerDataBase1, NewCustomerDetails, NewOrderForm,
  CustomerDetailsEditPage, TestData,
  NewOrderCustomer, DMain, OpenOrderForm, Admin;

procedure THomeForm.AdminBtnClick(Sender: TObject);
{ Opens the admin login page, so you can access admin features of the system. }
begin
  HomeForm.Visible := False;
  { Does not close the program's main form otherwise
    it would shut the whole program and cause an error. }
  AdminForm.Visible := True;
end;

procedure THomeForm.Button1Click(Sender: TObject);
{ Opens the form where the user can view the orders and see what products they
  need to order }
begin
  HomeForm.Visible := False;
  { Does not close the program's main form otherwise
    it would shut the whole program and cause an error. }
  Testdatatable.Visible := True;
end;

procedure THomeForm.EditCustbtnClick(Sender: TObject);
{ Takes the user to the form where they can edit an exisiting customer. }
var
  ButtonSelected: Integer;
begin
  HomeForm.Visible := False; { Does not close the program's main form otherwise
    it would shut the whole program and cause an error. }
  ButtonSelected := Messagedlg('Are you sure that you want to edit a customer?',
    mtCustom, [mbYes, mbNo], 0);
  { Format of the dialog box so that it display 'yes', or 'no' options. }
  if ButtonSelected = mrYes then
  begin { Runs if the selected button on the dialog box is the 'yes' button. }
    ShowMessage('Okay taking you to Customer DataBase!');
    CustomerDataBaseForm.Visible := True; { Then displays the correct form. }
  end;
  if ButtonSelected = mrNo then
  begin { Runs if the selected button on the dialog box is the 'no' button. }
    ShowMessage('Okay taking you back to the home screen!');
    HomeForm.Visible := True;
    { Displays the 'Main' form again as the user has decide that
      they dont need to move from it. }
  end;

end;

procedure THomeForm.ExitbtnClick(Sender: TObject);
{ Closes the program as the user has selected. }
begin
  Close(); { Closes the 'Main' program, which removes the whole program
    from memory and stops executing it. }
end;

procedure THomeForm.NewbtnClick(Sender: TObject);
{ Takes the user to the form where they can add a new order to the
  database with an existing customer. }
var
  ButtonSelected: Integer;
begin
  HomeForm.Visible := False; { Does not close the program's main form otherwise
    it would shut the whole program and cause an error. }
  ButtonSelected :=
    Messagedlg('Are you sure that you want to enter a new order?', mtCustom,
    [mbYes, mbNo], 0);
  { Format of the dialog box so that it display 'yes', or 'no' options. }
  if ButtonSelected = mrYes then
  begin { Runs if the selected button on the dialog box is the 'yes' button. }
    ShowMessage('Taking you to the New Order Page.');
    NewOrderCustomerForm.Visible := True;
  end;
  if ButtonSelected = mrNo then
  begin { Runs if the selected button on the dialog box is the 'no' button. }
    ShowMessage('Taking you back to the Home Page.');
    HomeForm.Visible := True;
  end;

end;

procedure THomeForm.NewCustomerbtnClick(Sender: TObject);
{ Takes the user to the new customer form, this allows the user to
  add a new customer, to the cutomer database. }
var
  ButtonSelected: Integer;
begin
  HomeForm.Visible := False; { Does not close the program's main form otherwise
    it would shut the whole program and cause an error. }
  ButtonSelected := Messagedlg('Are you sure you want to add a new customer?',
    mtCustom, [mbYes, mbNo], 0);
  { Format of the dialog box so that it display 'yes', or 'no' options. }
  if ButtonSelected = mrYes then
  begin { Runs if the selected button on the dialog box is the 'yes' button. }
    ShowMessage('Okay, taking you to the new customer page!');
    NewDetailsForm.Visible := True;
  end;
  if ButtonSelected = mrNo then
  begin { Runs if the selected button on the dialog box is the 'no' button. }
    ShowMessage('Okay taking you back to the home screen!');
    HomeForm.Visible := True;
  end;
end;

procedure THomeForm.OpenOrderBtnClick(Sender: TObject);
{ Takes the user to the from where they can view pre-existing order sheets,
  by searching the order number. }
begin
  OpenOrdersForm.Visible := True;
  HomeForm.Visible := False; { Does not close the program's main form otherwise
    it would shut the whole program and cause an error. }
end;

end.
