unit OpenOrderForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShellApi;

type
  TOpenOrdersForm = class(TForm)
    OpenOrdersEdit: TEdit;
    OpenOrdersBtn: TButton;
    OpenOrderLbl: TLabel;
    HomeBtn: TButton;
    procedure OpenOrdersBtnClick(Sender: TObject);
    procedure HomeBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpenOrdersForm: TOpenOrdersForm;
  htmlfile: text; 

implementation

{$R *.dfm}

uses
  Home;

procedure TOpenOrdersForm.HomeBtnClick(Sender: TObject);
{ Closes the current form and makes the 'Main' form visible again so that the user can carry out a new task. }
begin
OpenOrdersForm.Close;
{ Closes the 'OpenOrders' form as it is no longer needed. }
HomeForm.Visible:=True;
{ Shows the 'Main' form so the user can carry out their next task. }
end;

procedure TOpenOrdersForm.OpenOrdersBtnClick(Sender: TObject);
{ Procedure that opens the required order form, based on an 'OrderID' entered by the user. }
var
  FileInteger:string;

begin
  FileInteger:='C:\Users\GeorgeCook\Desktop\New folder\Computer Science Project- after project hand in addtitions...if looking for orginal it is on your memory stick\Win32\Debug\Order '+(OpenOrdersEdit.Text)+'.html';
   { Gets the 'path' for the file that is required based on the 'OrderID' given by the user and saves it in a variable. }

  ShellExecute(Handle, 'open',
    '"C:\Program Files (x86)\Internet Explorer\iexplore.exe"',
    PWideChar(FileInteger), nil, SW_SHOWNORMAL);
  { A 'ShellExecute' procedure that handles the opening of the file that has just been created. }
  { It opens the file automatically, this makes it easier for the user to use as then they don't have to go and search for the file. }
end;

end.
