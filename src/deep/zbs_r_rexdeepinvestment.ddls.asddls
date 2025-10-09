@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define view entity ZBS_R_REXDEEPINVESTMENT
  as select from ZBS_RXDPNVSTMENT as REXDeepInvestment
  association to parent ZBS_R_REXDEEPCOMPANY as _REXDeepCompany on $projection.ParentUuid = _REXDeepCompany.Uuid
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  investment_date as InvestmentDate,
  condition000 as Condition000,
  @Semantics.amount.currencyCode: 'InvestmentCurrency'
  investment_value as InvestmentValue,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  investment_currency as InvestmentCurrency,
  _REXDeepCompany
}
