@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define view entity ZBS_R_REXDEEPVEHICLE
  as select from ZBS_RXDEPVEHICLE as REXDeepVehicle
  association to parent ZBS_R_REXDEEPCOMPANY as _REXDeepCompany on $projection.ParentUuid = _REXDeepCompany.Uuid
  composition [1..*] of ZBS_R_REXDEEPEQUIPMENT as _REXDeepEquipment
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  plate_number as PlateNumber,
  vehicle_type as VehicleType,
  brand as Brand,
  _REXDeepEquipment,
  _REXDeepCompany
}
