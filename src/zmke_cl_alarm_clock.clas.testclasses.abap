*"* use this source file for your ABAP unit test classes
CLASS ltc_alarm_clock DEFINITION FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.

  PRIVATE SECTION.
    METHODS calculate_1am_to_6am FOR TESTING.

ENDCLASS.

CLASS ltc_alarm_clock IMPLEMENTATION.

  METHOD calculate_1am_to_6am.
    DATA(lo_td_morning_time_1am) = zmke_td_morning_time=>get_instance( ).
    DATA(lo_alarm_clock) = NEW zmke_cl_alarm_clock( lo_td_morning_time_1am ).

    DATA(lo_alarm_time) = NEW zmke_cl_alarm_time( iv_alarm_time = '060000' ).
    lo_alarm_clock->set_alarm_time( lo_alarm_time ).

    DATA(lv_time_for_sleep) = lo_alarm_clock->calculate_time_until_alarm( ).

    cl_abap_unit_assert=>assert_equals( act = lv_time_for_sleep
                                        exp = '050000' ).
  ENDMETHOD.

ENDCLASS.
