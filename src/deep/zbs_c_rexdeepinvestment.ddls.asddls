@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZBS_C_REXDEEPINVESTMENT
  as projection on ZBS_R_REXDEEPINVESTMENT
  association [1..1] to ZBS_R_REXDEEPINVESTMENT as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  InvestmentDate,
  Condition000,
  @Semantics: {
    Amount.Currencycode: 'InvestmentCurrency'
  }
  InvestmentValue,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  InvestmentCurrency,
  _REXDeepCompany : redirected to parent ZBS_C_REXDEEPCOMPANY,
  _BaseEntity
}
