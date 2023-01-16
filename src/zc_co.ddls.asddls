@EndUserText.label: 'CustomerFI Consumption View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity ZC_CO
provider contract transactional_query
as projection on ZI_CO as CostcCO {
    
    
  @EndUserText.label: 'Id'
  key Id,
  @EndUserText.label: 'Company Name'
      @Search.defaultSearchElement: true
      Companyname,
      @EndUserText.label: 'Controlling Area'
      @Search.defaultSearchElement: true
      Controllingarea,
      @EndUserText.label: 'Cost Center'
      @Search.defaultSearchElement: true
      Costcenter,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'Responsible Person'
      Responsibleperson,
      @EndUserText.label: 'Company Code'
      Companycode,
      LastChangedAt,
      LocalLastChangedAt
}
