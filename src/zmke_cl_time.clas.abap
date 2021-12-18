CLASS zmke_cl_time DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor.

    METHODS get_time RETURNING VALUE(rv_result) TYPE zmke_d_time.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zmke_cl_time IMPLEMENTATION.

  METHOD constructor.

  ENDMETHOD.

  METHOD get_time.
    rv_result = sy-uzeit.
  ENDMETHOD.

ENDCLASS.
