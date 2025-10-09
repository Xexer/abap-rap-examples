@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define view entity ZBS_R_REXDEEPDOCUMENT
  as select from ZBS_RXDPDOCUMENT as REXDeepDocument
  association to parent ZBS_R_REXDEEPEMPLOYEE as _REXDeepEmployee on $projection.ParentUuid = _REXDeepEmployee.Uuid
  association [1..1] to ZBS_R_REXDEEPCOMPANY as _REXDeepCompany on $projection.RootUuid = _REXDeepCompany.Uuid
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  root_uuid as RootUUID,
  name as Name,
  content as Content,
  _REXDeepEmployee,
  _REXDeepCompany
}
