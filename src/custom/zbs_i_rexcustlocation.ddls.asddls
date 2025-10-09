@EndUserText.label: 'Custom: Location'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_BS_REX_CUSTOM_FILM_QRY'
define custom entity ZBS_I_REXCustLocation
{
  key FilmID   : abap.char(10);

      @UI.lineItem: [{ position: 10 }]
      @EndUserText.label: 'Location Name'
  key Location : abap.char(80);

      _Film    : association to parent ZBS_R_REXCustFilm on _Film.FilmID = $projection.FilmID;
}
