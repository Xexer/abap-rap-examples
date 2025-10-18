@EndUserText.label: 'REX Config'
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
define view entity ZBS_I_RexConfig
  as select from ZBS_REX_CONF
  association to parent ZBS_R_RexConfigS as _RexConfigAll on $projection.SingletonID = _RexConfigAll.SingletonID
{
  key CHAR_KEY as CharKey,
  DESCRIPTION as Description,
  COUNTER as Counter,
  @Consumption.hidden: true
  1 as SingletonID,
  _RexConfigAll
}
