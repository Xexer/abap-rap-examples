@EndUserText.label: 'Custom: Film'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_BS_REX_CUSTOM_FILM_QRY'
define root custom entity ZBS_R_REXCustFilm
{
      @UI.facet   : [
        {
          id      : 'idFilmData',
          label   : 'Data',
          position: 10,
          type    : #IDENTIFICATION_REFERENCE
        },
        {
          label   : 'Actors',
          position: 20,
          type    : #LINEITEM_REFERENCE,
          targetElement: '_Actor'
        },
        {
          label   : 'Locations',
          position: 30,
          type    : #LINEITEM_REFERENCE,
          targetElement: '_Location'
        }
      ]

      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
      @EndUserText.label: 'ID'
  key FilmID      : abap.char(10);

      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem: [{ position: 15 }]
      @UI.identification: [{ position: 15 }]
      FilmType    : zbs_rex_custom_ftype;

      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      @EndUserText.label: 'Name'
      FilmName    : abap.char(100);

      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      @EndUserText.label: 'Rating'
      Rating      : abap.dec( 4, 2 );

      @UI.selectionField: [{ position: 20 }]
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      @EndUserText.label: 'Release'
      ReleaseDate : abap.datn;

      _Actor      : composition of exact one to many ZBS_I_REXCustActor;
      _Location   : composition of exact one to many ZBS_I_REXCustLocation;
}
