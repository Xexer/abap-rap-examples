@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define view entity ZBS_R_REXDEEPEMPLOYEE
  as select from ZBS_RXDPEMPLOYEE as REXDeepEmployee
  association to parent ZBS_R_REXDEEPCOMPANY as _REXDeepCompany on $projection.ParentUuid = _REXDeepCompany.Uuid
  composition [1..*] of ZBS_R_REXDEEPDOCUMENT as _REXDeepDocument
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  first_name as FirstName,
  last_name as LastName,
  @Semantics.amount.currencyCode: 'Currency'
  salary as Salary,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  employed_since as EmployedSince,
  _REXDeepDocument,
  _REXDeepCompany
}
