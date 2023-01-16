@AbapCatalog.sqlViewName: 'ZZI_CUSTOMER_01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view of ZRAP Customer'
define root view ZI_FI as select from zrap_customer 

{
    key id as Id,
    companyname as Companyname,
    streetname as Streetname,
    postalcode as Postalcode,
    city as City,
    countrycode as Countrycode,
    emailadress as Emailadress,
    phonenumber as Phonenumber,
    contactperson as Contactperson,
    iban as Iban,
    active as Active,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt
}
