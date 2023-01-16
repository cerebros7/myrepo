CLASS lhc_Customer DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

  DATA iv_action type C.
  DATA rv_message type string.
  DATA is_room type C.

    METHODS validateIban FOR VALIDATE ON SAVE
      IMPORTING keys FOR Customer~validateIban.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Customer RESULT result.

    METHODS setActive FOR MODIFY
      IMPORTING keys FOR ACTION Customer~setActive RESULT result.

ENDCLASS.

CLASS lhc_Customer IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD setActive.
  ENDMETHOD.

   METHOD validateIban.
    AUTHORITY-CHECK OBJECT 'Z_LOCAO011' ID 'ACTVT' FIELD iv_action ID 'Z_LOCAFI' FIELD is_room.
    IF sy-subrc <> 0.
      rv_message = 'Not authorized'.
    ENDIF.

  ENDMETHOD.


ENDCLASS.
