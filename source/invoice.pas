unit Invoice;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, MyObjects, contnrs, product, customer;  //classes;

type

    { TInvoiceItem }

  TInvoiceItem = class(TMyObject)
  private
  FDesc: double;
  FProduct: TProduct;
  FUnitPrice: Double;
  FQty: Integer;
  FTaxName: String;
  FTaxRate: Double;
  function getProduct: TProduct;
  procedure setProduct(AValue: TProduct);
  public
  property Product: TProduct read getProduct write setProduct;
  property Desc: Double read FDesc write FDesc;
  property qty: Integer read FQty write FQty;
  property UnitPrice: Double read FUnitPrice write FUnitPrice;
  property TaxName: String read FTaxName write FTaxName;
  property TaxRate: Double read FTaxRate write FTaxRate;
  end;

   { TInvoiceItem }

  TInvoiceItems = class(TObjectList)

  end;


  { TInvoice }

  TInvoice = class(TMyObject)
  private
  FCustomer: TCustomer;
  FTerms: String;
  FCurrencyCode: String;
  FItems: TInvoiceItems;
  FInvoiceNo: String;
  FEMailTo: String;
  FEMailFrom: String;
  function getCustomer: TCustomer;
  procedure setCustomer(AValue: TCustomer);
  public
  constructor Create; virtual;
  destructor Destroy; override;
  property InvoiceNo: String read FInvoiceNo write FInvoiceNo;
  property Items: TInvoiceItems read FItems;
  property EMailFrom: String read FEMailFrom write FEMailFrom;
  property EMailTo: String read FEMailTo write FEMailTo;
  property CurrencyCode: String read FCurrencyCode write FCurrencyCode;
  property Terms: String read FTerms write FTerms;
  property Customer: TCustomer read getCustomer write setCustomer;
  end;


implementation

{ TInvoiceItem }

function TInvoiceItem.getProduct: TProduct;
begin

end;

procedure TInvoiceItem.setProduct(AValue: TProduct);
begin

end;


{ TInvoice }

function TInvoice.getCustomer: TCustomer;
begin

end;

procedure TInvoice.setCustomer(AValue: TCustomer);
begin

end;

constructor TInvoice.Create;
begin

end;

destructor TInvoice.Destroy;
begin
  inherited Destroy;
end;

end.

