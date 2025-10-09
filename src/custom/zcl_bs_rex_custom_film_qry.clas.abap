CLASS zcl_bs_rex_custom_film_qry DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.

  PRIVATE SECTION.
    TYPES films  TYPE STANDARD TABLE OF ZBS_R_REXCustFilm WITH EMPTY KEY.
    TYPES actors TYPE STANDARD TABLE OF ZBS_I_REXCustActor WITH EMPTY KEY.

    CLASS-METHODS get_films
      RETURNING VALUE(result) TYPE REF TO films.

    CLASS-METHODS get_actors
      RETURNING VALUE(result) TYPE REF TO actors.
ENDCLASS.


CLASS zcl_bs_rex_custom_film_qry IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA count TYPE int8.
    FIELD-SYMBOLS <result_data> TYPE STANDARD TABLE.

    CASE io_request->get_entity_id( ).
      WHEN 'ZBS_R_REXCUSTFILM'.
        DATA(films) = get_films( ).
        ASSIGN films->* TO <result_data>.
      WHEN 'ZBS_I_REXCUSTACTOR'.
        DATA(actors) = get_actors( ).
        ASSIGN actors->* TO <result_data>.
    ENDCASE.

    NEW zcl_bs_demo_adjust_data( )->adjust_via_request( EXPORTING io_request = io_request
                                                        CHANGING  ct_data    = <result_data>
                                                                  cd_count   = count ).

    IF io_request->is_total_numb_of_rec_requested( ).
      io_response->set_total_number_of_records( count ).
    ENDIF.

    IF io_request->is_data_requested( ).
      io_response->set_data( <result_data> ).
    ENDIF.
  ENDMETHOD.


  METHOD get_films.
    RETURN NEW #(
        ( FilmID = '0000000001' FilmType = 'ACTION' FilmName = 'Transformers' Rating = '8.9' ReleaseDate = '20250201' )
        ( FilmID = '0000000002' FilmType = 'DOCU' FilmName = 'Behind the Scenes' Rating = '2.4' ReleaseDate = '20240201' ) ).
  ENDMETHOD.


  METHOD get_actors.
    RETURN NEW #( ( FilmID = '0000000001' ActorID = '00001' ActorName = 'John Harris' )
                  ( FilmID = '0000000001' ActorID = '00002' ActorName = 'Paul Mastermind' )
                  ( FilmID = '0000000002' ActorID = '00001' ActorName = 'Svetlana Altz' )
                  ( FilmID = '0000000002' ActorID = '00002' ActorName = 'Nia Alberto' ) ).
  ENDMETHOD.
ENDCLASS.
