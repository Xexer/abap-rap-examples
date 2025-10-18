@EndUserText.label: 'REX Config Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.semanticKey: [ 'SingletonID' ]
@UI: {
  headerInfo: {
    typeName: 'RexConfigAll'
  }
}
define root view entity ZBS_R_RexConfigS
  as select from I_Language
    left outer join I_CstmBizConfignLastChgd on I_CstmBizConfignLastChgd.ViewEntityName = 'ZBS_I_REXCONFIG'
  composition [0..*] of ZBS_I_RexConfig as _RexConfig
{
  @UI.facet: [ {
    id: 'ZBS_I_RexConfig', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'REX Config', 
    position: 1 , 
    targetElement: '_RexConfig'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key 1 as SingletonID,
  _RexConfig,
  @UI.hidden: true
  I_CstmBizConfignLastChgd.LastChangedDateTime as LastChangedAtMax
}
where I_Language.Language = $session.system_language
