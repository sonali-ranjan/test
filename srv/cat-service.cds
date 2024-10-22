using {db} from '../db/schema';
// using from '@sap/cds-common-content';

service CatalogService {
    @odata.draft.enabled
    entity Employee as projection on db.Employee;
}

annotate CatalogService with @(requires: 'authenticated-user');

annotate CatalogService.Employee with @(restrict: [
  {
    grant: '*',
    where: 'country_code = $user.country'
  }
]);