unit MyObjects;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, MyUtils, FPJSON;

type
  EMyErro = class(Exception);

  { TMyObject }

  TMyObject = class
  private
//   FDados: TJSONObject;
    FTag: Integer;
    function getDataJSON: TJSONObject;
    procedure setDataJSON(AValue: TJSONObject);
  public
    procedure Validate;
    procedure AssertData(const AExpr: Boolean; const AMsg: string);
    property DataJSON: TJSONObject read getDataJSON write setDataJSON default nil;
  published
    property Tag: Integer read FTag write FTag default 0;

  end;


implementation

function TMyObject.getDataJSON: TJSONObject;
begin
  result := ObjectToJSON(self);

end;

procedure TMyObject.setDataJSON(AValue: TJSONObject);
begin
  JSONToObject(AValue, self);
end;

procedure TMyObject.Validate;
begin
  AssertData(FTag >= 0 , 'Propriedade "Tag" tem que ser maior que zero.');
//  AssertData(FAge <> 0, 'Age must not be zero.');
//  AssertData(FWeight <> 0, 'Weight must not be zero.');
end;

procedure TMyObject.AssertData(const AExpr: Boolean; const AMsg: string);
begin
  if not AExpr then
    raise EMyErro.CreateFmt('%s: %s', [ClassName, AMsg]);
end;

end.

