@EndUserText.label: 'Custom: Actor'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_BS_REX_CUSTOM_FILM_QRY'
define custom entity ZBS_I_REXCustActor
{

  key FilmID    : abap.char(10);

      @UI.lineItem: [{ position: 10 }]
      @EndUserText.label: 'Actor'
  key ActorID   : abap.char(5);

      @UI.lineItem: [{ position: 20 }]
      @EndUserText.label: 'Actor Name'
      ActorName : abap.char(120);

      _Film     : association to parent ZBS_R_REXCustFilm on _Film.FilmID = $projection.FilmID;
      _Payment    : composition of exact one to many ZBS_I_REXCustPayment;
}
