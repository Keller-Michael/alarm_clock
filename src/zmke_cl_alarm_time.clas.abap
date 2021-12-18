CLASS zmke_cl_alarm_time DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor IMPORTING iv_alarm_time TYPE zmke_d_time.

    INTERFACES zmke_if_time.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA mv_alarm_time TYPE zmke_d_time.

ENDCLASS.



CLASS zmke_cl_alarm_time IMPLEMENTATION.

  METHOD constructor.
    mv_alarm_time = iv_alarm_time.
  ENDMETHOD.

  METHOD zmke_if_time~get_time.
    rv_result = mv_alarm_time.
  ENDMETHOD.

ENDCLASS.
