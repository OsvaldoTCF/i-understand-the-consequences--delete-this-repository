unit Product;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, MyObjects, contnrs, MeasureUnits; // classes;

type

    { TProduct }

  TProduct = class(TMyObject)
  private
  FDesc: double;
  FName: String;
  FUnit: TMeasure;
  FUnitPrice: Double;
  FQty: Integer;
  FTaxName: String;
  FTaxRate: Double;
  function getUnitMeasure: TMeasure;
  procedure setUnitMeasure(AValue: TMeasure);
  public
  property Name: String read FName write FName;
  property UnitMeasure: TMeasure read getUnitMeasure write setUnitMeasure;
  property Desc: Double read FDesc write FDesc;
  property qty: Integer read FQty write FQty;
  property UnitPrice: Double read FUnitPrice write FUnitPrice;
  property TaxName: String read FTaxName write FTaxName;
  property TaxRate: Double read FTaxRate write FTaxRate;
  end;

implementation

{ TProduct }

function TProduct.getUnitMeasure: TMeasure;
begin

end;

procedure TProduct.setUnitMeasure(AValue: TMeasure);
begin

end;

end.

