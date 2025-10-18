CLASS zcl_bs_rex_test_data DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    METHODS create_deep_data.
ENDCLASS.


CLASS zcl_bs_rex_test_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    create_deep_data( ).
  ENDMETHOD.


  METHOD create_deep_data.
    DATA companies TYPE STANDARD TABLE OF zbs_rxdepcompany WITH EMPTY KEY.

    companies = VALUE #( ( uuid                = xco_cp=>uuid( )->value
                           registration_number = 'CZ00134775615'
                           company_name        = 'Red Unicorns'
                           status              = 'ACT'
                           founded_at          = '20220314' )
                         ( uuid                = xco_cp=>uuid( )->value
                           registration_number = 'FR130098421'
                           company_name        = 'Nuage'
                           status              = 'SOLD'
                           founded_at          = '20200602' )
                         ( uuid                = xco_cp=>uuid( )->value
                           registration_number = 'DE2005988894'
                           company_name        = 'Blue Devtober'
                           status              = 'ACT'
                           founded_at          = '20031015' )
                         ( uuid                = xco_cp=>uuid( )->value
                           registration_number = 'ST111222333'
                           company_name        = 'Similar Tries'
                           status              = 'INS'
                           founded_at          = '19800128' ) ).

    DELETE FROM zbs_rxdepcompany.
    COMMIT WORK.

    INSERT zbs_rxdepcompany FROM TABLE @companies.
    COMMIT WORK.
  ENDMETHOD.
ENDCLASS.
