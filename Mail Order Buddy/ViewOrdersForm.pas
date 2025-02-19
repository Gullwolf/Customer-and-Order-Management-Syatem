unit ViewOrdersForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, ShellApi;

type
  TViewOrders = class(TForm)
    OrdersGrid: TDBGrid;
    HomeBtn: TButton;
    SearchBtn: TButton;
    SearchEdit: TEdit;
    SearchLbl: TLabel;
    procedure HomeBtnClick(Sender: TObject);
    procedure SearchBtnClick(Sender: TObject);
    procedure OrdersGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewOrders: TViewOrders;
  htmlfile: Text;

implementation

uses Home, DMain;

{$R *.dfm}

Procedure OrdersGridDblClick(Sender: TObject);
var
  Row, Order: integer;

begin
end;

procedure TViewOrders.HomeBtnClick(Sender: TObject);
begin
  ViewOrders.Visible := False;
  HomeForm.Visible := True;
end;

procedure TViewOrders.OrdersGridDblClick(Sender: TObject);
{ Procedure that opens the required order form, based on an 'OrderID' entered by the user. }
var
  FileInteger: string;

begin
  FileInteger :=
    'C:\Users\GeorgeCook\Desktop\New folder\Computer Science Project- after project hand in addtitions...if looking for orginal it is on your memory stick\Win32\Debug\Order '
    + (SearchEdit.Text) + '.html';
  { Gets the 'path' for the file that is required based on the 'OrderID' given by the user and saves it in a variable. }

  ShellExecute(Handle, 'open',
    '"C:\Program Files (x86)\Internet Explorer\iexplore.exe"',
    PWideChar(FileInteger), nil, SW_SHOWNORMAL);
  { A 'ShellExecute' procedure that handles the opening of the file that has just been created. }
  { It opens the file automatically, this makes it easier for the user to use as then they don't have to go and search for the file. }
end;

procedure TViewOrders.SearchBtnClick(Sender: TObject);
begin
  with DMain.DataMain.OrdersSet do
  begin
    Close; { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * FROM Orders WHERE OrderID LIKE "' + SearchEdit.Text
      + '" OR CustomerID LIKE "' + SearchEdit.Text + '" OR OrderDate LIKE "' +
      SearchEdit.Text + '"';
    Open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
    if SearchEdit.Text = '' then
    Begin
      Close;
      CommandText := 'SELECT * FROM Orders';
      Open;
    End;
  end;
end;

end.
