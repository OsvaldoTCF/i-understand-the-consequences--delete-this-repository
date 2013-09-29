unit Customer;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Person;

type

     { TCustomerType }

  TCustomerType = class(TPerson)


  end;

    { TCustomer }

  TCustomer = class(TPerson)
  private
    FType: TCustomerType;
    function getCustomerType: TCustomerType;
    procedure setCustomerType(AValue: TCustomerType);
  public

  published
     property Customer: TCustomerType read getCustomerType write setCustomerType;
  end;

implementation


{ TCustomer }

function TCustomer.getCustomerType: TCustomerType;
begin

end;

procedure TCustomer.setCustomerType(AValue: TCustomerType);
begin

end;

end.
