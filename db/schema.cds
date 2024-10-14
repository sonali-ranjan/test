namespace db;

using {
  cuid,
  Country, managed
} from '@sap/cds/common';


entity Employee @(restrict: [
  {
    grant: '*',
    to   : 'msgIndia',
    where: 'country_code = $user.country'
  },
  {
    grant: '*',
    to   : 'msgIndia',
    where: 'country_code = $user.country'
  }
]) : cuid, managed {


  empNum       : String;
  empName      : String;
  emailAddress : String;
  country      : Country;
  designation  : String;

}
