namespace db;

using {
  cuid,
  Country,
  managed
} from '@sap/cds/common';


entity Employee : cuid, managed {
  empNum       : String;
  empName      : String;
  emailAddress : String;
  country      : Country;
  designation  : String;

}
