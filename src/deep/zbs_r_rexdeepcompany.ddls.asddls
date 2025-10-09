@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZBS_Company'
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'Registrationnumber' ]
define root view entity ZBS_R_REXDEEPCOMPANY
  as select from ZBS_RXDEPCOMPANY as REXDeepCompany
  composition [1..*] of ZBS_R_REXDEEPEMPLOYEE as _REXDeepEmployee
  composition [1..*] of ZBS_R_REXDEEPVEHICLE as _REXDeepVehicle
  composition [1..*] of ZBS_R_REXDEEPINVESTMENT as _REXDeepInvestment
{
  key uuid as UUID,
  registration_number as RegistrationNumber,
  company_name as CompanyName,
  status as Status,
  founded_at as FoundedAt,
  location as Location,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  _REXDeepEmployee,
  _REXDeepVehicle,
  _REXDeepInvestment
}
