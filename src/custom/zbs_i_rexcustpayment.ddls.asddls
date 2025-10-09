@EndUserText.label: 'Custom: Payment'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_BS_REX_CUSTOM_FILM_QRY'
define custom entity ZBS_I_REXCustPayment
{
  key FilmID    : abap.char(10);

      @UI.lineItem: [{ position: 10 }]
      @EndUserText.label: 'Actor'
  key ActorID   : abap.char(5);
  key PaymentID : sysuuid_x16;

      _Actor    : association to parent ZBS_I_REXCustActor on  _Actor.FilmID  = $projection.FilmID
                                                           and _Actor.ActorID = $projection.ActorID;

      _Film     : association [1] to ZBS_R_REXCustFilm on _Film.FilmID = $projection.FilmID;
}
