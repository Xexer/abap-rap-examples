@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZBS_Company', 
  semanticKey: [ 'Registrationnumber' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZBS_C_REXDEEPCOMPANY
  provider contract transactional_query
  as projection on ZBS_R_REXDEEPCOMPANY
  association [1..1] to ZBS_R_REXDEEPCOMPANY as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  RegistrationNumber,
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZBS_I_REXDeepCompanyVH', element : 'company_code_name' } }]
  CompanyName,
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZBS_I_REXDEEPSTATUSVH', element : 'Status' } }]
  Status,
  FoundedAt,
  Location,
  @Semantics: {
    user.createdBy: true
  }
  LocalCreatedBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  LocalCreatedAt,
  @Semantics: {
    user.localInstanceLastChangedBy: true
  }
  LocalLastChangedBy,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChangedAt,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  _REXDeepEmployee : redirected to composition child ZBS_C_REXDEEPEMPLOYEE,
  _REXDeepVehicle : redirected to composition child ZBS_C_REXDEEPVEHICLE,
  _REXDeepInvestment : redirected to composition child ZBS_C_REXDEEPINVESTMENT,
  _BaseEntity
}
