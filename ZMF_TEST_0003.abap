FUNCTION zmf_test_0001.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     REFERENCE(IV_MATNR) TYPE  MATNR
*"  EXCEPTIONS
*"      ERROR
*"----------------------------------------------------------------------

  DATA: lv_maktx TYPE maktx,
        lv_matnr TYPE matnr.

  SELECT SINGLE matnr
    FROM mara
    INTO lv_matnr
    WHERE matnr EQ iv_matnr.

  IF sy-subrc NE 0.
    RAISE error.
  ENDIF.

ENDFUNCTION.