@EndUserText.label: 'Copy REX Config'
define abstract entity ZBS_S_RexConfigCopy
{
  @EndUserText.label: 'New Key'
  @UI.defaultValue: #( 'ELEMENT_OF_REFERENCED_ENTITY: CharKey' )
  CharKey : ZBS_REX_CHAR_KEY;
}
