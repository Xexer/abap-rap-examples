@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZBS_C_REXDEEPEMPLOYEE
  as projection on ZBS_R_REXDEEPEMPLOYEE
  association [1..1] to ZBS_R_REXDEEPEMPLOYEE as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  FirstName,
  LastName,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  Salary,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  EmployedSince,
  _REXDeepDocument : redirected to composition child ZBS_C_REXDEEPDOCUMENT,
  _REXDeepCompany : redirected to parent ZBS_C_REXDEEPCOMPANY,
  _BaseEntity
}
