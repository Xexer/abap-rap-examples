"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>com.sap.gateway.srvd_a2x.zbs_demo_consumption.v0001</em>
CLASS zcl_bs_rex_consumption DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of COST_CENTER_TYPE</p>
      BEGIN OF tys_value_controls_1,
        "! VALIDITY_END_DATE
        validity_end_date         TYPE /iwbep/v4_value_control,
        "! VALIDITY_START_DATE
        validity_start_date       TYPE /iwbep/v4_value_control,
        "! COST_CENTER_CREATION_DATE
        cost_center_creation_date TYPE /iwbep/v4_value_control,
        "! COMPANY_CODE_2
        company_code_2            TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_1.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of ADDRESS_TYPE</p>
      BEGIN OF tys_value_controls_2,
        "! ADDRESS_CREATED_ON_DATE_TI
        address_created_on_date_ti TYPE /iwbep/v4_value_control,
        "! ADDRESS_CHANGED_ON_DATE_TI
        address_changed_on_date_ti TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_2.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of ACCOUNT_TYPE</p>
      BEGIN OF tys_value_controls_3,
        "! CREATION_DATE
        creation_date  TYPE /iwbep/v4_value_control,
        "! COMPANY_CODE_2
        company_code_2 TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_3.

    TYPES:
      "! <p class="shorttext synchronized">AccountType</p>
      BEGIN OF tys_account_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_3,
        "! <em>Key property</em> GLAccount
        glaccount                  TYPE c LENGTH 10,
        "! GLAccount_Text
        glaccount_text             TYPE c LENGTH 20,
        "! <em>Key property</em> CompanyCode
        company_code               TYPE c LENGTH 4,
        "! ChartOfAccounts
        chart_of_accounts          TYPE c LENGTH 4,
        "! ChartOfAccounts_Text
        chart_of_accounts_text     TYPE c LENGTH 50,
        "! GLAccountGroup
        glaccount_group            TYPE c LENGTH 4,
        "! CorporateGroupAccount
        corporate_group_account    TYPE c LENGTH 10,
        "! AccountIsBlockedForPosting
        account_is_blocked_for_pos TYPE abap_bool,
        "! AccountIsBlockedForPlanning
        account_is_blocked_for_pla TYPE abap_bool,
        "! AccountIsBlockedForCreation
        account_is_blocked_for_cre TYPE abap_bool,
        "! IsBalanceSheetAccount
        is_balance_sheet_account   TYPE abap_bool,
        "! AccountIsMarkedForDeletion
        account_is_marked_for_dele TYPE abap_bool,
        "! PartnerCompany
        partner_company            TYPE c LENGTH 6,
        "! FunctionalArea
        functional_area            TYPE c LENGTH 16,
        "! CreationDate
        creation_date              TYPE datn,
        "! SampleGLAccount
        sample_glaccount           TYPE c LENGTH 10,
        "! IsProfitLossAccount
        is_profit_loss_account     TYPE abap_bool,
        "! GLAccountType
        glaccount_type             TYPE c LENGTH 1,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! ProfitLossAccountType
        profit_loss_account_type   TYPE c LENGTH 2,
        "! ReconciliationAccountType
        reconciliation_account_typ TYPE c LENGTH 1,
        "! LineItemDisplayIsEnabled
        line_item_display_is_enabl TYPE abap_bool,
        "! IsOpenItemManaged
        is_open_item_managed       TYPE abap_bool,
        "! AlternativeGLAccount
        alternative_glaccount      TYPE c LENGTH 10,
        "! AcctgDocItmDisplaySequenceRule
        acctg_doc_itm_display_sequ TYPE c LENGTH 3,
        "! GLAccountExternal
        glaccount_external         TYPE c LENGTH 10,
        "! CountryChartOfAccounts
        country_chart_of_accounts  TYPE c LENGTH 4,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! TaxCategory
        tax_category               TYPE c LENGTH 2,
        "! IsAutomaticallyPosted
        is_automatically_posted    TYPE abap_bool,
        "! CompanyCodeName
        company_code_name          TYPE c LENGTH 25,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_account_type,
      "! <p class="shorttext synchronized">List of AccountType</p>
      tyt_account_type TYPE STANDARD TABLE OF tys_account_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">AddressType</p>
      BEGIN OF tys_address_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_2,
        "! <em>Key property</em> AddressID
        address_id                 TYPE c LENGTH 10,
        "! <em>Key property</em> AddressPersonID
        address_person_id          TYPE c LENGTH 10,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! AddressObjectType
        address_object_type        TYPE c LENGTH 1,
        "! CorrespondenceLanguage
        correspondence_language    TYPE c LENGTH 2,
        "! PrfrdCommMediumType
        prfrd_comm_medium_type     TYPE c LENGTH 3,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! PersonGivenName
        person_given_name          TYPE c LENGTH 40,
        "! PersonFamilyName
        person_family_name         TYPE c LENGTH 40,
        "! OrganizationName1
        organization_name_1        TYPE c LENGTH 40,
        "! OrganizationName2
        organization_name_2        TYPE c LENGTH 40,
        "! OrganizationName3
        organization_name_3        TYPE c LENGTH 40,
        "! OrganizationName4
        organization_name_4        TYPE c LENGTH 40,
        "! AddressSearchTerm1
        address_search_term_1      TYPE c LENGTH 20,
        "! AddressSearchTerm2
        address_search_term_2      TYPE c LENGTH 20,
        "! CityNumber
        city_number                TYPE c LENGTH 12,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! DistrictName
        district_name              TYPE c LENGTH 40,
        "! VillageName
        village_name               TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! CompanyPostalCode
        company_postal_code        TYPE c LENGTH 10,
        "! Street
        street                     TYPE c LENGTH 12,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! StreetAddrNonDeliverableReason
        street_addr_non_deliverabl TYPE c LENGTH 4,
        "! StreetPrefixName1
        street_prefix_name_1       TYPE c LENGTH 40,
        "! StreetPrefixName2
        street_prefix_name_2       TYPE c LENGTH 40,
        "! StreetSuffixName1
        street_suffix_name_1       TYPE c LENGTH 40,
        "! StreetSuffixName2
        street_suffix_name_2       TYPE c LENGTH 40,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! HouseNumberSupplementText
        house_number_supplement_te TYPE c LENGTH 10,
        "! Building
        building                   TYPE c LENGTH 20,
        "! Floor
        floor                      TYPE c LENGTH 10,
        "! RoomNumber
        room_number                TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! TransportZone
        transport_zone             TYPE c LENGTH 10,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! POBoxAddrNonDeliverableReason
        pobox_addr_non_deliverable TYPE c LENGTH 4,
        "! POBoxIsWithoutNumber
        pobox_is_without_number    TYPE abap_bool,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! POBoxLobbyName
        pobox_lobby_name           TYPE c LENGTH 40,
        "! POBoxDeviatingCityName
        pobox_deviating_city_name  TYPE c LENGTH 40,
        "! POBoxDeviatingCityCode
        pobox_deviating_city_code  TYPE c LENGTH 12,
        "! POBoxDeviatingRegion
        pobox_deviating_region     TYPE c LENGTH 3,
        "! POBoxDeviatingCountry
        pobox_deviating_country    TYPE c LENGTH 3,
        "! CareOfName
        care_of_name               TYPE c LENGTH 40,
        "! DeliveryServiceTypeCode
        delivery_service_type_code TYPE c LENGTH 4,
        "! DeliveryServiceNumber
        delivery_service_number    TYPE c LENGTH 10,
        "! AddressTimeZone
        address_time_zone          TYPE c LENGTH 6,
        "! SecondaryRegion
        secondary_region           TYPE c LENGTH 8,
        "! SecondaryRegionName
        secondary_region_name      TYPE c LENGTH 40,
        "! TertiaryRegion
        tertiary_region            TYPE c LENGTH 8,
        "! TertiaryRegionName
        tertiary_region_name       TYPE c LENGTH 40,
        "! RegionalStructureCheckStatus
        regional_structure_check_s TYPE c LENGTH 1,
        "! AddressGroup
        address_group              TYPE c LENGTH 4,
        "! AddressCreatedByUser
        address_created_by_user    TYPE c LENGTH 12,
        "! AddressCreatedOnDateTime
        address_created_on_date_ti TYPE timestampl,
        "! AddressChangedByUser
        address_changed_by_user    TYPE c LENGTH 12,
        "! AddressChangedOnDateTime
        address_changed_on_date_ti TYPE timestampl,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_address_type,
      "! <p class="shorttext synchronized">List of AddressType</p>
      tyt_address_type TYPE STANDARD TABLE OF tys_address_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CompanyType</p>
      BEGIN OF tys_company_type,
        "! <em>Key property</em> CompanyCode
        company_code               TYPE c LENGTH 4,
        "! CompanyCodeName
        company_code_name          TYPE c LENGTH 25,
        "! CityName
        city_name                  TYPE c LENGTH 25,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Currency
        currency                   TYPE c LENGTH 3,
        "! Language
        language                   TYPE c LENGTH 2,
        "! ChartOfAccounts
        chart_of_accounts          TYPE c LENGTH 4,
        "! FiscalYearVariant
        fiscal_year_variant        TYPE c LENGTH 2,
        "! Company
        company                    TYPE c LENGTH 6,
        "! CreditControlArea
        credit_control_area        TYPE c LENGTH 4,
        "! CreditControlArea_Text
        credit_control_area_text   TYPE c LENGTH 35,
        "! CountryChartOfAccounts
        country_chart_of_accounts  TYPE c LENGTH 4,
        "! FinancialManagementArea
        financial_management_area  TYPE c LENGTH 4,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! TaxableEntity
        taxable_entity             TYPE c LENGTH 4,
        "! VATRegistration
        vatregistration            TYPE c LENGTH 20,
        "! ExtendedWhldgTaxIsActive
        extended_whldg_tax_is_acti TYPE abap_bool,
        "! ControllingArea
        controlling_area           TYPE c LENGTH 4,
        "! ControllingArea_Text
        controlling_area_text      TYPE c LENGTH 25,
        "! FieldStatusVariant
        field_status_variant       TYPE c LENGTH 4,
        "! NonTaxableTransactionTaxCode
        non_taxable_transaction_ta TYPE c LENGTH 2,
        "! DocDateIsUsedForTaxDetn
        doc_date_is_used_for_tax_d TYPE abap_bool,
        "! TaxRptgDateIsActive
        tax_rptg_date_is_active    TYPE abap_bool,
        "! CashDiscountBaseAmtIsNetAmt
        cash_discount_base_amt_is  TYPE abap_bool,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_company_type,
      "! <p class="shorttext synchronized">List of CompanyType</p>
      tyt_company_type TYPE STANDARD TABLE OF tys_company_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CostCenterType</p>
      BEGIN OF tys_cost_center_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_1,
        "! <em>Key property</em> ControllingArea
        controlling_area           TYPE c LENGTH 4,
        "! <em>Key property</em> CostCenter
        cost_center                TYPE c LENGTH 10,
        "! CostCenter_Text
        cost_center_text           TYPE c LENGTH 20,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! IsBlkdForPrimaryCostsPosting
        is_blkd_for_primary_costs  TYPE c LENGTH 1,
        "! IsBlockedForPlanPrimaryCosts
        is_blocked_for_plan_primar TYPE c LENGTH 1,
        "! CompanyCode
        company_code               TYPE c LENGTH 4,
        "! BusinessArea
        business_area              TYPE c LENGTH 4,
        "! CostCenterCategory
        cost_center_category       TYPE c LENGTH 1,
        "! CostCtrResponsiblePersonName
        cost_ctr_responsible_perso TYPE c LENGTH 20,
        "! CostCtrResponsibleUser
        cost_ctr_responsible_user  TYPE c LENGTH 12,
        "! CostCenterCurrency
        cost_center_currency       TYPE c LENGTH 3,
        "! CostingSheet
        costing_sheet              TYPE c LENGTH 6,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! LogicalSystem
        logical_system             TYPE c LENGTH 10,
        "! CostCenterCreationDate
        cost_center_creation_date  TYPE datn,
        "! CostCenterCreatedByUser
        cost_center_created_by_use TYPE c LENGTH 12,
        "! IsBlkdForSecondaryCostsPosting
        is_blkd_for_secondary_cost TYPE c LENGTH 1,
        "! IsBlockedForRevenuePosting
        is_blocked_for_revenue_pos TYPE c LENGTH 1,
        "! IsBlockedForCommitmentPosting
        is_blocked_for_commitment  TYPE c LENGTH 1,
        "! IsBlockedForPlanSecondaryCosts
        is_blocked_for_plan_second TYPE c LENGTH 1,
        "! IsBlockedForPlanRevenues
        is_blocked_for_plan_revenu TYPE c LENGTH 1,
        "! CostCenterAllocationMethod
        cost_center_allocation_met TYPE c LENGTH 2,
        "! ConsumptionQtyIsRecorded
        consumption_qty_is_recorde TYPE c LENGTH 1,
        "! Department
        department                 TYPE c LENGTH 12,
        "! SubsequentCostCenter
        subsequent_cost_center     TYPE c LENGTH 10,
        "! ConditionUsage
        condition_usage            TYPE c LENGTH 1,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! CostCenterAccountingOverhead
        cost_center_accounting_ove TYPE c LENGTH 6,
        "! Country
        country                    TYPE c LENGTH 3,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 15,
        "! AddressName
        address_name               TYPE c LENGTH 35,
        "! AddressAdditionalName
        address_additional_name    TYPE c LENGTH 35,
        "! CostCenterAddrName3
        cost_center_addr_name_3    TYPE c LENGTH 35,
        "! CostCenterAddrName4
        cost_center_addr_name_4    TYPE c LENGTH 35,
        "! CityName
        city_name                  TYPE c LENGTH 35,
        "! District
        district                   TYPE c LENGTH 35,
        "! StreetAddressName
        street_address_name        TYPE c LENGTH 35,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! Region
        region                     TYPE c LENGTH 3,
        "! Language
        language                   TYPE c LENGTH 2,
        "! TeleboxNumber
        telebox_number             TYPE c LENGTH 15,
        "! PhoneNumber1
        phone_number_1             TYPE c LENGTH 16,
        "! PhoneNumber2
        phone_number_2             TYPE c LENGTH 16,
        "! FaxNumber
        fax_number                 TYPE c LENGTH 31,
        "! TeletexNumber
        teletex_number             TYPE c LENGTH 30,
        "! TelexNumber
        telex_number               TYPE c LENGTH 30,
        "! DataCommunicationPhoneNumber
        data_communication_phone_n TYPE c LENGTH 14,
        "! CostCenterPrinterDestination
        cost_center_printer_destin TYPE c LENGTH 4,
        "! CostCenterStandardHierArea
        cost_center_standard_hier  TYPE c LENGTH 12,
        "! CostCollector
        cost_collector             TYPE c LENGTH 23,
        "! CostCenterIsComplete
        cost_center_is_complete    TYPE c LENGTH 1,
        "! IsStatisticalCostCenter
        is_statistical_cost_center TYPE abap_bool,
        "! ObjectInternalID
        object_internal_id         TYPE c LENGTH 22,
        "! CostCenterFunction
        cost_center_function       TYPE c LENGTH 3,
        "! CostCenterAlternativeFunction
        cost_center_alternative_fu TYPE c LENGTH 3,
        "! FunctionalArea
        functional_area            TYPE c LENGTH 16,
        "! ActyIndepFormulaPlanningTmpl
        acty_indep_formula_plannin TYPE c LENGTH 10,
        "! ActyDepdntFormulaPlanningTmpl
        acty_depdnt_formula_planni TYPE c LENGTH 10,
        "! ActyIndependentAllocationTmpl
        acty_independent_allocatio TYPE c LENGTH 10,
        "! ActyDependentAllocationTmpl
        acty_dependent_allocation  TYPE c LENGTH 10,
        "! ActlIndepStatisticalKeyFigures
        actl_indep_statistical_key TYPE c LENGTH 10,
        "! ActlDepStatisticalKeyFigures
        actl_dep_statistical_key_f TYPE c LENGTH 10,
        "! JointVenture
        joint_venture              TYPE c LENGTH 6,
        "! JointVentureRecoveryCode
        joint_venture_recovery_cod TYPE c LENGTH 2,
        "! JointVentureEquityType
        joint_venture_equity_type  TYPE c LENGTH 3,
        "! JointVentureObjectType
        joint_venture_object_type  TYPE c LENGTH 4,
        "! JointVentureClass
        joint_venture_class        TYPE c LENGTH 3,
        "! JointVentureSubClass
        joint_venture_sub_class    TYPE c LENGTH 5,
        "! BudgetCarryingCostCenter
        budget_carrying_cost_cente TYPE c LENGTH 10,
        "! AvailabilityControlProfile
        availability_control_profi TYPE c LENGTH 6,
        "! AvailabilityControlIsActive
        availability_control_is_ac TYPE abap_bool,
        "! Fund
        fund                       TYPE c LENGTH 10,
        "! GrantID
        grant_id                   TYPE c LENGTH 20,
        "! FundIsFixAssigned
        fund_is_fix_assigned       TYPE abap_bool,
        "! GrantIDIsFixAssigned
        grant_idis_fix_assigned    TYPE abap_bool,
        "! FunctionalAreaIsFixAssigned
        functional_area_is_fix_ass TYPE abap_bool,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_cost_center_type,
      "! <p class="shorttext synchronized">List of CostCenterType</p>
      tyt_cost_center_type TYPE STANDARD TABLE OF tys_cost_center_type WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! Account
        "! <br/> Collection of type 'AccountType'
        account     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ACCOUNT',
        "! Address
        "! <br/> Collection of type 'AddressType'
        address     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ADDRESS',
        "! Company
        "! <br/> Collection of type 'CompanyType'
        company     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'COMPANY',
        "! CostCenter
        "! <br/> Collection of type 'CostCenterType'
        cost_center TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'COST_CENTER',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for AccountType</p>
        "! See also structure type {@link ..tys_account_type}
        BEGIN OF account_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _CompanyCode
            company_code_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'COMPANY_CODE_2',
          END OF navigation,
        END OF account_type,
        "! <p class="shorttext synchronized">Internal names for AddressType</p>
        "! See also structure type {@link ..tys_address_type}
        BEGIN OF address_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF address_type,
        "! <p class="shorttext synchronized">Internal names for CompanyType</p>
        "! See also structure type {@link ..tys_company_type}
        BEGIN OF company_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF company_type,
        "! <p class="shorttext synchronized">Internal names for CostCenterType</p>
        "! See also structure type {@link ..tys_cost_center_type}
        BEGIN OF cost_center_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _CompanyCode
            company_code_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'COMPANY_CODE_2',
          END OF navigation,
        END OF cost_center_type,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define AccountType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_account_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define AddressType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_address_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CompanyType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_company_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CostCenterType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_cost_center_type RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZCL_BS_REX_CONSUMPTION IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'com.sap.gateway.srvd_a2x.zbs_demo_consumption.v0001' ) ##NO_TEXT.

    def_account_type( ).
    def_address_type( ).
    def_company_type( ).
    def_cost_center_type( ).

  ENDMETHOD.


  METHOD def_account_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ACCOUNT_TYPE'
                                    is_structure              = VALUE tys_account_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'AccountType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'ACCOUNT' ).
    lo_entity_set->set_edm_name( 'Account' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLACCOUNT' ).
    lo_primitive_property->set_edm_name( 'GLAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLACCOUNT_TEXT' ).
    lo_primitive_property->set_edm_name( 'GLAccount_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHART_OF_ACCOUNTS' ).
    lo_primitive_property->set_edm_name( 'ChartOfAccounts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHART_OF_ACCOUNTS_TEXT' ).
    lo_primitive_property->set_edm_name( 'ChartOfAccounts_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLACCOUNT_GROUP' ).
    lo_primitive_property->set_edm_name( 'GLAccountGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORPORATE_GROUP_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'CorporateGroupAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_IS_BLOCKED_FOR_POS' ).
    lo_primitive_property->set_edm_name( 'AccountIsBlockedForPosting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_IS_BLOCKED_FOR_PLA' ).
    lo_primitive_property->set_edm_name( 'AccountIsBlockedForPlanning' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_IS_BLOCKED_FOR_CRE' ).
    lo_primitive_property->set_edm_name( 'AccountIsBlockedForCreation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BALANCE_SHEET_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'IsBalanceSheetAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_IS_MARKED_FOR_DELE' ).
    lo_primitive_property->set_edm_name( 'AccountIsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'PartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCTIONAL_AREA' ).
    lo_primitive_property->set_edm_name( 'FunctionalArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAMPLE_GLACCOUNT' ).
    lo_primitive_property->set_edm_name( 'SampleGLAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PROFIT_LOSS_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'IsProfitLossAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLACCOUNT_TYPE' ).
    lo_primitive_property->set_edm_name( 'GLAccountType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFIT_LOSS_ACCOUNT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProfitLossAccountType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECONCILIATION_ACCOUNT_TYP' ).
    lo_primitive_property->set_edm_name( 'ReconciliationAccountType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINE_ITEM_DISPLAY_IS_ENABL' ).
    lo_primitive_property->set_edm_name( 'LineItemDisplayIsEnabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_OPEN_ITEM_MANAGED' ).
    lo_primitive_property->set_edm_name( 'IsOpenItemManaged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_GLACCOUNT' ).
    lo_primitive_property->set_edm_name( 'AlternativeGLAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCTG_DOC_ITM_DISPLAY_SEQU' ).
    lo_primitive_property->set_edm_name( 'AcctgDocItmDisplaySequenceRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLACCOUNT_EXTERNAL' ).
    lo_primitive_property->set_edm_name( 'GLAccountExternal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_CHART_OF_ACCOUNTS' ).
    lo_primitive_property->set_edm_name( 'CountryChartOfAccounts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'TaxCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_AUTOMATICALLY_POSTED' ).
    lo_primitive_property->set_edm_name( 'IsAutomaticallyPosted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyCodeName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'COMPANY_CODE_2' ).
    lo_navigation_property->set_edm_name( '_CompanyCode' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'COMPANY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_address_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ADDRESS_TYPE'
                                    is_structure              = VALUE tys_address_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'AddressType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'ADDRESS' ).
    lo_entity_set->set_edm_name( 'Address' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_PERSON_ID' ).
    lo_primitive_property->set_edm_name( 'AddressPersonID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'AddressObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDENCE_LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'CorrespondenceLanguage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRFRD_COMM_MEDIUM_TYPE' ).
    lo_primitive_property->set_edm_name( 'PrfrdCommMediumType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON_GIVEN_NAME' ).
    lo_primitive_property->set_edm_name( 'PersonGivenName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON_FAMILY_NAME' ).
    lo_primitive_property->set_edm_name( 'PersonFamilyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_1' ).
    lo_primitive_property->set_edm_name( 'OrganizationName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_2' ).
    lo_primitive_property->set_edm_name( 'OrganizationName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_3' ).
    lo_primitive_property->set_edm_name( 'OrganizationName3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_4' ).
    lo_primitive_property->set_edm_name( 'OrganizationName4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_SEARCH_TERM_1' ).
    lo_primitive_property->set_edm_name( 'AddressSearchTerm1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_SEARCH_TERM_2' ).
    lo_primitive_property->set_edm_name( 'AddressSearchTerm2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NUMBER' ).
    lo_primitive_property->set_edm_name( 'CityNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT_NAME' ).
    lo_primitive_property->set_edm_name( 'DistrictName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VILLAGE_NAME' ).
    lo_primitive_property->set_edm_name( 'VillageName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET' ).
    lo_primitive_property->set_edm_name( 'Street' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_ADDR_NON_DELIVERABL' ).
    lo_primitive_property->set_edm_name( 'StreetAddrNonDeliverableReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER_SUPPLEMENT_TE' ).
    lo_primitive_property->set_edm_name( 'HouseNumberSupplementText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUILDING' ).
    lo_primitive_property->set_edm_name( 'Building' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FLOOR' ).
    lo_primitive_property->set_edm_name( 'Floor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROOM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RoomNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_ZONE' ).
    lo_primitive_property->set_edm_name( 'TransportZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_ADDR_NON_DELIVERABLE' ).
    lo_primitive_property->set_edm_name( 'POBoxAddrNonDeliverableReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_IS_WITHOUT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'POBoxIsWithoutNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_LOBBY_NAME' ).
    lo_primitive_property->set_edm_name( 'POBoxLobbyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_CITY_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_REGION' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_DEVIATING_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'POBoxDeviatingCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARE_OF_NAME' ).
    lo_primitive_property->set_edm_name( 'CareOfName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_SERVICE_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'DeliveryServiceTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_SERVICE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DeliveryServiceNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_TIME_ZONE' ).
    lo_primitive_property->set_edm_name( 'AddressTimeZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECONDARY_REGION' ).
    lo_primitive_property->set_edm_name( 'SecondaryRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECONDARY_REGION_NAME' ).
    lo_primitive_property->set_edm_name( 'SecondaryRegionName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TERTIARY_REGION' ).
    lo_primitive_property->set_edm_name( 'TertiaryRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TERTIARY_REGION_NAME' ).
    lo_primitive_property->set_edm_name( 'TertiaryRegionName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGIONAL_STRUCTURE_CHECK_S' ).
    lo_primitive_property->set_edm_name( 'RegionalStructureCheckStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_GROUP' ).
    lo_primitive_property->set_edm_name( 'AddressGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'AddressCreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_CREATED_ON_DATE_TI' ).
    lo_primitive_property->set_edm_name( 'AddressCreatedOnDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'AddressChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_CHANGED_ON_DATE_TI' ).
    lo_primitive_property->set_edm_name( 'AddressChangedOnDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

  ENDMETHOD.


  METHOD def_company_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'COMPANY_TYPE'
                                    is_structure              = VALUE tys_company_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CompanyType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'COMPANY' ).
    lo_entity_set->set_edm_name( 'Company' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyCodeName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHART_OF_ACCOUNTS' ).
    lo_primitive_property->set_edm_name( 'ChartOfAccounts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_VARIANT' ).
    lo_primitive_property->set_edm_name( 'FiscalYearVariant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY' ).
    lo_primitive_property->set_edm_name( 'Company' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREDIT_CONTROL_AREA' ).
    lo_primitive_property->set_edm_name( 'CreditControlArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREDIT_CONTROL_AREA_TEXT' ).
    lo_primitive_property->set_edm_name( 'CreditControlArea_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_CHART_OF_ACCOUNTS' ).
    lo_primitive_property->set_edm_name( 'CountryChartOfAccounts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FINANCIAL_MANAGEMENT_AREA' ).
    lo_primitive_property->set_edm_name( 'FinancialManagementArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAXABLE_ENTITY' ).
    lo_primitive_property->set_edm_name( 'TaxableEntity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION' ).
    lo_primitive_property->set_edm_name( 'VATRegistration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTENDED_WHLDG_TAX_IS_ACTI' ).
    lo_primitive_property->set_edm_name( 'ExtendedWhldgTaxIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTROLLING_AREA' ).
    lo_primitive_property->set_edm_name( 'ControllingArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTROLLING_AREA_TEXT' ).
    lo_primitive_property->set_edm_name( 'ControllingArea_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIELD_STATUS_VARIANT' ).
    lo_primitive_property->set_edm_name( 'FieldStatusVariant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NON_TAXABLE_TRANSACTION_TA' ).
    lo_primitive_property->set_edm_name( 'NonTaxableTransactionTaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_DATE_IS_USED_FOR_TAX_D' ).
    lo_primitive_property->set_edm_name( 'DocDateIsUsedForTaxDetn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_RPTG_DATE_IS_ACTIVE' ).
    lo_primitive_property->set_edm_name( 'TaxRptgDateIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_BASE_AMT_IS' ).
    lo_primitive_property->set_edm_name( 'CashDiscountBaseAmtIsNetAmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

  ENDMETHOD.


  METHOD def_cost_center_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'COST_CENTER_TYPE'
                                    is_structure              = VALUE tys_cost_center_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CostCenterType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'COST_CENTER' ).
    lo_entity_set->set_edm_name( 'CostCenter' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTROLLING_AREA' ).
    lo_primitive_property->set_edm_name( 'ControllingArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER' ).
    lo_primitive_property->set_edm_name( 'CostCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_TEXT' ).
    lo_primitive_property->set_edm_name( 'CostCenter_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BLKD_FOR_PRIMARY_COSTS' ).
    lo_primitive_property->set_edm_name( 'IsBlkdForPrimaryCostsPosting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BLOCKED_FOR_PLAN_PRIMAR' ).
    lo_primitive_property->set_edm_name( 'IsBlockedForPlanPrimaryCosts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_AREA' ).
    lo_primitive_property->set_edm_name( 'BusinessArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'CostCenterCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CTR_RESPONSIBLE_PERSO' ).
    lo_primitive_property->set_edm_name( 'CostCtrResponsiblePersonName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CTR_RESPONSIBLE_USER' ).
    lo_primitive_property->set_edm_name( 'CostCtrResponsibleUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'CostCenterCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_SHEET' ).
    lo_primitive_property->set_edm_name( 'CostingSheet' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFIT_CENTER' ).
    lo_primitive_property->set_edm_name( 'ProfitCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOGICAL_SYSTEM' ).
    lo_primitive_property->set_edm_name( 'LogicalSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CostCenterCreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_CREATED_BY_USE' ).
    lo_primitive_property->set_edm_name( 'CostCenterCreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BLKD_FOR_SECONDARY_COST' ).
    lo_primitive_property->set_edm_name( 'IsBlkdForSecondaryCostsPosting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BLOCKED_FOR_REVENUE_POS' ).
    lo_primitive_property->set_edm_name( 'IsBlockedForRevenuePosting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BLOCKED_FOR_COMMITMENT' ).
    lo_primitive_property->set_edm_name( 'IsBlockedForCommitmentPosting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BLOCKED_FOR_PLAN_SECOND' ).
    lo_primitive_property->set_edm_name( 'IsBlockedForPlanSecondaryCosts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BLOCKED_FOR_PLAN_REVENU' ).
    lo_primitive_property->set_edm_name( 'IsBlockedForPlanRevenues' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_ALLOCATION_MET' ).
    lo_primitive_property->set_edm_name( 'CostCenterAllocationMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_QTY_IS_RECORDE' ).
    lo_primitive_property->set_edm_name( 'ConsumptionQtyIsRecorded' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPARTMENT' ).
    lo_primitive_property->set_edm_name( 'Department' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSEQUENT_COST_CENTER' ).
    lo_primitive_property->set_edm_name( 'SubsequentCostCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_USAGE' ).
    lo_primitive_property->set_edm_name( 'ConditionUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_APPLICATION' ).
    lo_primitive_property->set_edm_name( 'ConditionApplication' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_ACCOUNTING_OVE' ).
    lo_primitive_property->set_edm_name( 'CostCenterAccountingOverhead' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_NAME' ).
    lo_primitive_property->set_edm_name( 'AddressName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ADDITIONAL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddressAdditionalName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_ADDR_NAME_3' ).
    lo_primitive_property->set_edm_name( 'CostCenterAddrName3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_ADDR_NAME_4' ).
    lo_primitive_property->set_edm_name( 'CostCenterAddrName4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT' ).
    lo_primitive_property->set_edm_name( 'District' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_ADDRESS_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetAddressName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TELEBOX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'TeleboxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_1' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_2' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'FaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 31 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TELETEX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'TeletexNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TELEX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'TelexNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DATA_COMMUNICATION_PHONE_N' ).
    lo_primitive_property->set_edm_name( 'DataCommunicationPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_PRINTER_DESTIN' ).
    lo_primitive_property->set_edm_name( 'CostCenterPrinterDestination' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_STANDARD_HIER' ).
    lo_primitive_property->set_edm_name( 'CostCenterStandardHierArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_COLLECTOR' ).
    lo_primitive_property->set_edm_name( 'CostCollector' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 23 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_IS_COMPLETE' ).
    lo_primitive_property->set_edm_name( 'CostCenterIsComplete' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_STATISTICAL_COST_CENTER' ).
    lo_primitive_property->set_edm_name( 'IsStatisticalCostCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 22 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'CostCenterFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER_ALTERNATIVE_FU' ).
    lo_primitive_property->set_edm_name( 'CostCenterAlternativeFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCTIONAL_AREA' ).
    lo_primitive_property->set_edm_name( 'FunctionalArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTY_INDEP_FORMULA_PLANNIN' ).
    lo_primitive_property->set_edm_name( 'ActyIndepFormulaPlanningTmpl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTY_DEPDNT_FORMULA_PLANNI' ).
    lo_primitive_property->set_edm_name( 'ActyDepdntFormulaPlanningTmpl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTY_INDEPENDENT_ALLOCATIO' ).
    lo_primitive_property->set_edm_name( 'ActyIndependentAllocationTmpl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTY_DEPENDENT_ALLOCATION' ).
    lo_primitive_property->set_edm_name( 'ActyDependentAllocationTmpl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTL_INDEP_STATISTICAL_KEY' ).
    lo_primitive_property->set_edm_name( 'ActlIndepStatisticalKeyFigures' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTL_DEP_STATISTICAL_KEY_F' ).
    lo_primitive_property->set_edm_name( 'ActlDepStatisticalKeyFigures' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JOINT_VENTURE' ).
    lo_primitive_property->set_edm_name( 'JointVenture' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JOINT_VENTURE_RECOVERY_COD' ).
    lo_primitive_property->set_edm_name( 'JointVentureRecoveryCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JOINT_VENTURE_EQUITY_TYPE' ).
    lo_primitive_property->set_edm_name( 'JointVentureEquityType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JOINT_VENTURE_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'JointVentureObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JOINT_VENTURE_CLASS' ).
    lo_primitive_property->set_edm_name( 'JointVentureClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JOINT_VENTURE_SUB_CLASS' ).
    lo_primitive_property->set_edm_name( 'JointVentureSubClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUDGET_CARRYING_COST_CENTE' ).
    lo_primitive_property->set_edm_name( 'BudgetCarryingCostCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CONTROL_PROFI' ).
    lo_primitive_property->set_edm_name( 'AvailabilityControlProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CONTROL_IS_AC' ).
    lo_primitive_property->set_edm_name( 'AvailabilityControlIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUND' ).
    lo_primitive_property->set_edm_name( 'Fund' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GRANT_ID' ).
    lo_primitive_property->set_edm_name( 'GrantID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUND_IS_FIX_ASSIGNED' ).
    lo_primitive_property->set_edm_name( 'FundIsFixAssigned' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GRANT_IDIS_FIX_ASSIGNED' ).
    lo_primitive_property->set_edm_name( 'GrantIDIsFixAssigned' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCTIONAL_AREA_IS_FIX_ASS' ).
    lo_primitive_property->set_edm_name( 'FunctionalAreaIsFixAssigned' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'COMPANY_CODE_2' ).
    lo_navigation_property->set_edm_name( '_CompanyCode' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'COMPANY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.
ENDCLASS.
