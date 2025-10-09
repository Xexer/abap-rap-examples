@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZBS_C_REXDEEPEQUIPMENT
  as projection on ZBS_R_REXDEEPEQUIPMENT
  association [1..1] to ZBS_R_REXDEEPEQUIPMENT as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  RootUUID,
  PartNmae,
  NumberOfParts,
  _REXDeepVehicle : redirected to parent ZBS_C_REXDEEPVEHICLE,
  _REXDeepCompany : redirected to ZBS_C_REXDEEPCOMPANY,
  _BaseEntity
}
