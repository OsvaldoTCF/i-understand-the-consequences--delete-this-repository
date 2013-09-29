unit Brokers;

{$mode objfpc}{$H+}

interface

uses
    // {BrookFCLHTTPDaemonBroker,} BrookApplication,{fpmimetypes,}
    BrookFCLHTTPAppBroker, {BrookStaticFileBroker,}
    BrookHTTPConsts, BrookUtils, BrookSQLdbBroker, SQLite3Conn;// Classes, SysUtils ;

//const
//  PUBLIC_HTML = '/home/My/Documentos/www/t/';


{
 uses
  BrookFCLCGIBroker, BrookUtils, BrookSQLdbBroker, SQLite3Conn;
}
implementation


initialization
  BrookSettings.Port := 2000;
  BrookSettings.Charset := BROOK_HTTP_CHARSET_UTF_8;
  //BrookSettings.Page404File := PUBLIC_HTML + '404.html';
  //BrookSettings.Page500File := PUBLIC_HTML + '500.html';
  BrookSettings.Configuration := './db/db.cfg';
  BrookSettings.ContentType := BROOK_HTTP_CONTENT_TYPE_APP_JSON;
  BrookSettings.Page404 := '{ "error": "Page not found." }';
  BrookSettings.Page500 := '{ "error": "@error" }';

end.
