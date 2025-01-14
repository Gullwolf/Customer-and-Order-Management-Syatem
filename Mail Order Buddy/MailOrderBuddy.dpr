program MailOrderBuddy;

uses
  Vcl.Forms,
  Home in 'Home.pas' {HomeForm},
  CustomerDataBase1 in 'CustomerDataBase1.pas' {CustomerDataBaseForm},
  CustomerDetailsEditPage in 'CustomerDetailsEditPage.pas' {EditDetailsForm},
  NewCustomerDetails in 'NewCustomerDetails.pas' {NewDetailsForm},
  NewOrderForm in 'NewOrderForm.pas' {NewOrdersForm},
  DMain in 'DMain.pas' {DataMain: TDataModule},
  TestData in 'TestData.pas' {Testdatatable},
  NewOrderCustomer in 'NewOrderCustomer.pas' {NewOrderCustomerForm},
  OpenOrderForm in 'OpenOrderForm.pas' {OpenOrdersForm},
  admin in 'admin.pas' {AdminForm},
  AdminFeatures in 'AdminFeatures.pas' {AdminFeaturesForm},
  ViewOrdersForm in 'ViewOrdersForm.pas' {ViewOrders},
  ProductFeatures in 'ProductFeatures.pas' {ProductForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(THomeForm, HomeForm);
  Application.CreateForm(TCustomerDataBaseForm, CustomerDataBaseForm);
  Application.CreateForm(TEditDetailsForm, EditDetailsForm);
  Application.CreateForm(TNewDetailsForm, NewDetailsForm);
  Application.CreateForm(TNewOrdersForm, NewOrdersForm);
  Application.CreateForm(TDataMain, DataMain);
  Application.CreateForm(TTestdatatable, Testdatatable);
  Application.CreateForm(TNewOrderCustomerForm, NewOrderCustomerForm);
  Application.CreateForm(TOpenOrdersForm, OpenOrdersForm);
  Application.CreateForm(TAdminForm, AdminForm);
  Application.CreateForm(TAdminFeaturesForm, AdminFeaturesForm);
  Application.CreateForm(TViewOrders, ViewOrders);
  Application.CreateForm(TProductForm, ProductForm);
  Application.Run;
end.
