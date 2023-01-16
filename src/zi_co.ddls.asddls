@AbapCatalog.sqlViewName: 'ZZI_COSTCE_01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view of ZRAP Cost Center'


define root view ZI_CO as select from zrap_costcenter {
    key id as Id,
    companyname as Companyname,
    controllingarea as Controllingarea,
    costcenter as Costcenter,
    responsibleperson as Responsibleperson,
    companycode as Companycode,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt
   
}
