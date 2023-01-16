CLASS lhc_CostCenter DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

  DATA iv_action type C.
  DATA rv_message type string.
  DATA is_room type C.


    METHODS validatecostcenter FOR VALIDATE ON SAVE
      IMPORTING keys FOR CostCenter~validateCostCenter.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR CostCenter RESULT result.

    METHODS setActive FOR MODIFY
      IMPORTING keys FOR ACTION CostCenter~setActive RESULT result.

ENDCLASS.

CLASS lhc_CostCenter IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD setActive.
  ENDMETHOD.

  METHOD validateCostCenter.
    AUTHORITY-CHECK OBJECT 'Z_LOCAOCO' ID 'ACTVT' FIELD iv_action ID 'Z_LOCAFCO' FIELD is_room.
    IF sy-subrc <> 0.
      rv_message = 'Not authorized'.
    ENDIF.
endmethod.

ENDCLASS.
