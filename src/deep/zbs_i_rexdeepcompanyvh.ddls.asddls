@EndUserText.label: 'Company Remote VH'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_BS_REX_COMPANY_QUERY'
define custom entity ZBS_I_REXDeepCompanyVH
{

      @EndUserText.label         : 'CompanyCode'
  key company_code               : abap.char(4);
      @EndUserText.label         : 'CompanyCodeName'
      company_code_name          : abap.char(25);
      @EndUserText.label         : 'CityName'
      city_name                  : abap.char(25);
      @EndUserText.label         : 'Country'
      country                    : abap.char(3);
      @EndUserText.label         : 'Currency'
      currency                   : abap.char(3);
      @EndUserText.label         : 'Language'
      language                   : abap.char(2);
      @EndUserText.label         : 'ChartOfAccounts'
      chart_of_accounts          : abap.char(4);
      @EndUserText.label         : 'FiscalYearVariant'
      fiscal_year_variant        : abap.char(2);
      @EndUserText.label         : 'Company'
      company                    : abap.char(6);
      @EndUserText.label         : 'CreditControlArea'
      credit_control_area        : abap.char(4);
      @EndUserText.label         : 'CreditControlArea_Text'
      credit_control_area_text   : abap.char(35);
      @EndUserText.label         : 'CountryChartOfAccounts'
      country_chart_of_accounts  : abap.char(4);
      @EndUserText.label         : 'FinancialManagementArea'
      financial_management_area  : abap.char(4);
      @EndUserText.label         : 'AddressID'
      address_id                 : abap.char(10);
      @EndUserText.label         : 'TaxableEntity'
      taxable_entity             : abap.char(4);
      @EndUserText.label         : 'VATRegistration'
      vatregistration            : abap.char(20);
      @EndUserText.label         : 'ExtendedWhldgTaxIsActive'
      extended_whldg_tax_is_acti : abap_boolean;
      @EndUserText.label         : 'ControllingArea'
      controlling_area           : abap.char(4);
      @EndUserText.label         : 'ControllingArea_Text'
      controlling_area_text      : abap.char(25);
      @EndUserText.label         : 'FieldStatusVariant'
      field_status_variant       : abap.char(4);
      @EndUserText.label         : 'NonTaxableTransactionTaxCode'
      non_taxable_transaction_ta : abap.char(2);
      @EndUserText.label         : 'DocDateIsUsedForTaxDetn'
      doc_date_is_used_for_tax_d : abap_boolean;
      @EndUserText.label         : 'TaxRptgDateIsActive'
      tax_rptg_date_is_active    : abap_boolean;
      @EndUserText.label         : 'CashDiscountBaseAmtIsNetAmt'
      cash_discount_base_amt_is  : abap_boolean;
}
