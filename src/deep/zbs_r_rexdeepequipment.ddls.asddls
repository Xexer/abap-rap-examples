@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define view entity ZBS_R_REXDEEPEQUIPMENT
  as select from ZBS_RXDPQUIPMENT as REXDeepEquipment
  association to parent ZBS_R_REXDEEPVEHICLE as _REXDeepVehicle on $projection.ParentUuid = _REXDeepVehicle.Uuid
  association [1..1] to ZBS_R_REXDEEPCOMPANY as _REXDeepCompany on $projection.RootUuid = _REXDeepCompany.Uuid
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  root_uuid as RootUUID,
  part_nmae as PartNmae,
  number_of_parts as NumberOfParts,
  _REXDeepVehicle,
  _REXDeepCompany
}
