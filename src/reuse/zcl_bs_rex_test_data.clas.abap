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
    DATA companies   TYPE STANDARD TABLE OF zbs_rxdepcompany WITH EMPTY KEY.
    DATA employees   TYPE STANDARD TABLE OF zbs_rxdpemployee WITH EMPTY KEY.
    DATA vehicles    TYPE STANDARD TABLE OF zbs_rxdepvehicle WITH EMPTY KEY.
    DATA investments TYPE STANDARD TABLE OF zbs_rxdpnvstment WITH EMPTY KEY.

    companies = VALUE #( ( uuid                = xco_cp=>uuid( )->value
                           registration_number = 'CZ00134775615'
                           company_name        = 'Red Unicorns'
                           status              = 'ACT'
                           location            = 'Prague, CZ'
                           founded_at          = '20220314' )
                         ( uuid                = xco_cp=>uuid( )->value
                           registration_number = 'FR130098421'
                           company_name        = 'Nuage'
                           status              = 'SOLD'
                           location            = 'Paris, FR'
                           founded_at          = '20200602' )
                         ( uuid                = xco_cp=>uuid( )->value
                           registration_number = 'DE2005988894'
                           company_name        = 'Blue Devtober'
                           status              = 'ACT'
                           location            = 'Dortmund, DE'
                           founded_at          = '20031015' )
                         ( uuid                = xco_cp=>uuid( )->value
                           registration_number = 'ST111222333'
                           company_name        = 'Similar Tries'
                           status              = 'INS'
                           location            = 'Spain, ES'
                           founded_at          = '19800128' ) ).

    LOOP AT companies INTO DATA(company).
      INSERT VALUE #( uuid           = xco_cp=>uuid( )->value
                      parent_uuid    = company-uuid
                      first_name     = 'John'
                      last_name      = 'Meier'
                      salary         = '75000'
                      currency       = 'USD'
                      employed_since = '20210305' )
             INTO TABLE employees.
      INSERT VALUE #( uuid           = xco_cp=>uuid( )->value
                      parent_uuid    = company-uuid
                      first_name     = 'Larissa'
                      last_name      = 'Merlei'
                      salary         = '99000'
                      currency       = 'USD'
                      employed_since = '20240802' )
             INTO TABLE employees.
      INSERT VALUE #( uuid           = xco_cp=>uuid( )->value
                      parent_uuid    = company-uuid
                      first_name     = 'Nina'
                      last_name      = 'Smith'
                      salary         = '26000'
                      currency       = 'EUR'
                      employed_since = '20250101' )
             INTO TABLE employees.

      INSERT VALUE #( uuid         = xco_cp=>uuid( )->value
                      parent_uuid  = company-uuid
                      plate_number = 'AZ-CZ 123'
                      vehicle_type = 'CAR'
                      brand        = 'Toyota Corolla' )
             INTO TABLE vehicles.
      INSERT VALUE #( uuid         = xco_cp=>uuid( )->value
                      parent_uuid  = company-uuid
                      plate_number = '45-VC-0147'
                      vehicle_type = 'TRUCK'
                      brand        = 'MAN' )
             INTO TABLE vehicles.

      INSERT VALUE #( uuid                = xco_cp=>uuid( )->value
                      parent_uuid         = company-uuid
                      investment_date     = '20241231'
                      condition000        = 'New office and parking structure'
                      investment_value    = '500000'
                      investment_currency = 'EUR' )
             INTO TABLE investments.
      INSERT VALUE #( uuid                = xco_cp=>uuid( )->value
                      parent_uuid         = company-uuid
                      investment_date     = '20240630'
                      condition000        = 'Vending machine for snacks'
                      investment_value    = '25000'
                      investment_currency = 'EUR' )
             INTO TABLE investments.
    ENDLOOP.

    DELETE FROM zbs_rxdepcompany.
    DELETE FROM zbs_rxdpemployee.
    DELETE FROM zbs_rxdepvehicle.
    DELETE FROM zbs_rxdpnvstment.
    COMMIT WORK.

    INSERT zbs_rxdepcompany FROM TABLE @companies.
    INSERT zbs_rxdpemployee FROM TABLE @employees.
    INSERT zbs_rxdepvehicle FROM TABLE @vehicles.
    INSERT zbs_rxdpnvstment FROM TABLE @investments.
    COMMIT WORK.
  ENDMETHOD.
ENDCLASS.
