@EndUserText.label: 'CustomerFI Consumption View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true


define root view entity ZC_FI 
provider contract transactional_query
as projection on ZI_FI as CustomerFI {

 @EndUserText.label: 'Id'
  key Id,
  @EndUserText.label: 'Company Name'
      @Search.defaultSearchElement: true
      Companyname,
      @EndUserText.label: 'Street'
      @Search.defaultSearchElement: true
      Streetname,
      @EndUserText.label: 'Postalcode'
      Postalcode,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'City'
      City,
      @EndUserText.label: 'Country Code'
      Countrycode,
      @EndUserText.label: 'Phone'
      Phonenumber,
      @EndUserText.label: 'Email'
      Emailadress,
      @EndUserText.label: 'IBAN'
      Iban,
      @EndUserText.label: 'Contact Person'
      Contactperson,
      @EndUserText.label: 'Active'
      Active,
      LastChangedAt,
      LocalLastChangedAt
    
}
