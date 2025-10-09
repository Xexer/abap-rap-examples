@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZBS_C_REXDEEPVEHICLE
  as projection on ZBS_R_REXDEEPVEHICLE
  association [1..1] to ZBS_R_REXDEEPVEHICLE as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  PlateNumber,
  VehicleType,
  Brand,
  _REXDeepEquipment : redirected to composition child ZBS_C_REXDEEPEQUIPMENT,
  _REXDeepCompany : redirected to parent ZBS_C_REXDEEPCOMPANY,
  _BaseEntity
}
