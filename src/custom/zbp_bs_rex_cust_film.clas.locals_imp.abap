CLASS lhc_Film DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Film RESULT result.

    METHODS read FOR READ
      IMPORTING keys FOR READ Film RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK Film.

    METHODS rba_Actor FOR READ
      IMPORTING keys_rba FOR READ Film\_Actor FULL result_requested RESULT result LINK association_links.

    METHODS rba_Location FOR READ
      IMPORTING keys_rba FOR READ Film\_Location FULL result_requested RESULT result LINK association_links.

    METHODS cba_Actor FOR MODIFY
      IMPORTING entities_cba FOR CREATE Film\_Actor.

    METHODS cba_Location FOR MODIFY
      IMPORTING entities_cba FOR CREATE Film\_Location.

ENDCLASS.


CLASS lhc_Film IMPLEMENTATION.
  METHOD get_instance_authorizations.
  ENDMETHOD.


  METHOD read.
  ENDMETHOD.


  METHOD lock.
  ENDMETHOD.


  METHOD rba_Actor.
  ENDMETHOD.


  METHOD rba_Location.
  ENDMETHOD.


  METHOD cba_Actor.
  ENDMETHOD.


  METHOD cba_Location.
  ENDMETHOD.
ENDCLASS.


CLASS lhc_Actor DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS read FOR READ
      IMPORTING keys FOR READ Actor RESULT result.

    METHODS rba_Film FOR READ
      IMPORTING keys_rba FOR READ Actor\_Film FULL result_requested RESULT result LINK association_links.

    METHODS rba_Payment FOR READ
      IMPORTING keys_rba FOR READ Actor\_Payment FULL result_requested RESULT result LINK association_links.

    METHODS cba_Payment FOR MODIFY
      IMPORTING entities_cba FOR CREATE Actor\_Payment.

ENDCLASS.


CLASS lhc_Actor IMPLEMENTATION.
  METHOD read.
  ENDMETHOD.


  METHOD rba_Film.
  ENDMETHOD.


  METHOD rba_Payment.
  ENDMETHOD.


  METHOD cba_Payment.
  ENDMETHOD.
ENDCLASS.


CLASS lhc_Payment DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS read FOR READ
      IMPORTING keys FOR READ Payment RESULT result.

    METHODS rba_Actor FOR READ
      IMPORTING keys_rba FOR READ Payment\_Actor FULL result_requested RESULT result LINK association_links.

    METHODS rba_Film FOR READ
      IMPORTING keys_rba FOR READ Payment\_Film FULL result_requested RESULT result LINK association_links.

ENDCLASS.


CLASS lhc_Payment IMPLEMENTATION.
  METHOD read.
  ENDMETHOD.


  METHOD rba_Actor.
  ENDMETHOD.


  METHOD rba_Film.
  ENDMETHOD.
ENDCLASS.


CLASS lhc_Location DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS read FOR READ
      IMPORTING keys FOR READ Location RESULT result.

    METHODS rba_Film FOR READ
      IMPORTING keys_rba FOR READ Location\_Film FULL result_requested RESULT result LINK association_links.

ENDCLASS.


CLASS lhc_Location IMPLEMENTATION.
  METHOD read.
  ENDMETHOD.


  METHOD rba_Film.
  ENDMETHOD.
ENDCLASS.


CLASS lsc_ZBS_R_REXCUSTFILM DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.
    METHODS
      finalize REDEFINITION.

    METHODS
      check_before_save REDEFINITION.

    METHODS
      save REDEFINITION.

    METHODS
      cleanup REDEFINITION.

    METHODS
      cleanup_finalize REDEFINITION.

ENDCLASS.


CLASS lsc_ZBS_R_REXCUSTFILM IMPLEMENTATION.
  METHOD finalize.
  ENDMETHOD.


  METHOD check_before_save.
  ENDMETHOD.


  METHOD save.
  ENDMETHOD.


  METHOD cleanup.
  ENDMETHOD.


  METHOD cleanup_finalize.
  ENDMETHOD.
ENDCLASS.
