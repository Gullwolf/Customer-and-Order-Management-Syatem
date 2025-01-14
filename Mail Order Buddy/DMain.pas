unit DMain;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataMain = class(TDataModule)
    MainDataConnect: TADOConnection;
    CustomerSet: TADODataSet;
    CustomerSource: TDataSource;
    OrdersSet: TADODataSet;
    OrdersSource: TDataSource;
    OrderDetailsSet: TADODataSet;
    OrderDetailsSource: TDataSource;
    ProductsSet: TADODataSet;
    ProductsSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataMain: TDataMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
