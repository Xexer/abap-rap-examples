@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZBS_C_REXDEEPDOCUMENT
  as projection on ZBS_R_REXDEEPDOCUMENT
  association [1..1] to ZBS_R_REXDEEPDOCUMENT as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  RootUUID,
  Name,
  Content,
  _REXDeepEmployee : redirected to parent ZBS_C_REXDEEPEMPLOYEE,
  _REXDeepCompany : redirected to ZBS_C_REXDEEPCOMPANY,
  _BaseEntity
}
