unit Location;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, MyObjects, contnrs;  //classes;

type


        { TState }

    TState = class(TMyObject)
    private
    FName: String;
    public
    property Name: String read FName write FName;
    end;

      { TCity }

  TCity = class(TMyObject)
  private
  FName: String;
  FState: TState;
  function getState: String;
  procedure setState(AValue: String);
  public
  property Name: String read FName write FName;
  property State: String read getState write setState;
  end;

    { TAddress }

  TAddress = class(TMyObject)
  private
  FStreet: String;
  FNumber: String;
  FZipCode: String;
  FType: (Res, Com);
  FCity: TCity;
  function getCity: String;
  procedure setCity(AValue: String);
  public
  property Street: String read FStreet write FStreet;
  property Number: String read FNumber write FNumber;
  property ZipCode: String read FZipCode write FZipCode;
  property City: String read getCity write setCity;
  end;

implementation

{ TAddress }

function TAddress.getCity: String;
begin

end;

procedure TAddress.setCity(AValue: String);
begin

end;

{ TCity }

function TCity.getState: String;
begin

end;

procedure TCity.setState(AValue: String);
begin

end;

end.

