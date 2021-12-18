CLASS zmke_cl_user_time DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zmke_if_time.

    METHODS constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmke_cl_user_time IMPLEMENTATION.

  METHOD constructor.
  ENDMETHOD.

  METHOD zmke_if_time~get_time.
    rv_result = sy-timlo.
  ENDMETHOD.

ENDCLASS.
