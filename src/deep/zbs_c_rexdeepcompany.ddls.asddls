@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZBS_Company', 
  Semantickey: [ 'Registrationnumber' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZBS_C_REXDEEPCOMPANY
  provider contract TRANSACTIONAL_QUERY
  as projection on ZBS_R_REXDEEPCOMPANY
  association [1..1] to ZBS_R_REXDEEPCOMPANY as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  RegistrationNumber,
  CompanyName,
  Status,
  FoundedAt,
  Location,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _REXDeepEmployee : redirected to composition child ZBS_C_REXDEEPEMPLOYEE,
  _REXDeepVehicle : redirected to composition child ZBS_C_REXDEEPVEHICLE,
  _REXDeepInvestment : redirected to composition child ZBS_C_REXDEEPINVESTMENT,
  _BaseEntity
}
