CLASS zcl_bs_rex_company_query DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.

  PRIVATE SECTION.
    METHODS generate_data
      RETURNING VALUE(result) TYPE zcl_bs_rex_consumption=>tyt_company_type.
ENDCLASS.


CLASS zcl_bs_rex_company_query IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA companies TYPE STANDARD TABLE OF ZBS_I_REXDeepCompanyVH WITH EMPTY KEY.
    DATA counter   TYPE int8.

    companies = CORRESPONDING #( generate_data( ) ).
    NEW zcl_bs_demo_adjust_data( )->adjust_via_request( EXPORTING io_request = io_request
                                                        CHANGING  ct_data    = companies
                                                                  cd_count   = counter ).

    IF io_request->is_data_requested( ).
      io_response->set_data( companies ).
    ENDIF.

    IF io_request->is_total_numb_of_rec_requested( ).
      io_response->set_total_number_of_records( counter ).
    ENDIF.
  ENDMETHOD.


  METHOD generate_data.
    RETURN VALUE #( ( company_code      = '1234'
                      company_code_name = 'Red Unicorns'
                      city_name         = 'Prague'
                      country           = 'CZ'
                      currency          = 'CZK' )
                    ( company_code      = '1235'
                      company_code_name = 'Nuage'
                      city_name         = 'Paris'
                      country           = 'FR'
                      currency          = 'EUR' )
                    ( company_code      = '1236'
                      company_code_name = 'Blue Devtober'
                      city_name         = 'Dortmund'
                      country           = 'DE'
                      currency          = 'EUR' )
                    ( company_code      = '1236'
                      company_code_name = 'Golden Peach'
                      city_name         = 'New York'
                      country           = 'US'
                      currency          = 'USD' ) ).
  ENDMETHOD.
ENDCLASS.
