CLASS zmke_cl_alarm_clock DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor IMPORTING io_time TYPE REF TO zmke_if_time.

    METHODS set_time IMPORTING io_time TYPE REF TO zmke_if_time.

    METHODS set_alarm_time IMPORTING io_alarm_time TYPE REF TO zmke_if_time.

    METHODS calculate_time_until_alarm RETURNING VALUE(rv_result) TYPE zmke_d_time.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA mo_time TYPE REF TO zmke_if_time.
    DATA mo_alarm_time TYPE REF TO zmke_if_time.

ENDCLASS.



CLASS zmke_cl_alarm_clock IMPLEMENTATION.

  METHOD constructor.
    mo_time = io_time.
  ENDMETHOD.

  METHOD calculate_time_until_alarm.
    IF mo_time->get_time( ) > mo_alarm_time->get_time( ).
      rv_result = mo_time->get_time( ) - mo_alarm_time->get_time( ).
    ELSE.
      rv_result = mo_alarm_time->get_time( ) - mo_time->get_time( ).
    ENDIF.
  ENDMETHOD.

  METHOD set_time.
    mo_time = io_time.
  ENDMETHOD.

  METHOD set_alarm_time.
    mo_alarm_time = io_alarm_time.
  ENDMETHOD.

ENDCLASS.
