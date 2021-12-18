CLASS zmke_td_morning_time DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zmke_if_time.

    CLASS-METHODS get_instance RETURNING VALUE(ro_result) TYPE REF TO zmke_if_time.

    METHODS constructor.

    DATA mv_standard_time TYPE zmke_d_time VALUE '010000' READ-ONLY.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zmke_td_morning_time IMPLEMENTATION.

  METHOD constructor.
  ENDMETHOD.

  METHOD zmke_if_time~get_time.
    rv_result = mv_standard_time.
  ENDMETHOD.

  METHOD get_instance.
    ro_result = NEW zmke_td_morning_time( ).
  ENDMETHOD.

ENDCLASS.
