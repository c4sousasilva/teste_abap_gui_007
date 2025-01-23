FUNCTION zmf_test_0001.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     REFERENCE(IV_MATNR) TYPE  MATNR
*"  EXCEPTIONS
*"      ERROR
*"----------------------------------------------------------------------

  DATA: lv_maktx TYPE maktx,
        lv_matnr TYPE matnr,
        lv_meins TYPE meins.

  SELECT matnr
         meins UP TO 1 ROWS
    FROM mara
    INTO (lv_matnr, lv_meins)
    WHERE matnr EQ iv_matnr
   ORDER BY PRIMARY KEY.
  ENDSELECT.

  IF sy-subrc NE 0.
    MESSAGE e345(ZWM) RAISE error.
  ENDIF.

ENDFUNCTION.