INSERT INTO "D_CALENDAR_MONTH"
WITH base_calendar AS
  (SELECT
    TO_CHAR(CurrDate,'YYYY') || TO_CHAR(CurrDate,'MM') AS CALENDAR_MONTH_CD,    
    ---- Num Values
    CAST(TO_CHAR(CurrDate,'MM') AS INTEGER) AS CALENDAR_MONTH_NUM,
    CAST(TO_CHAR(CurrDate,'Q') AS INTEGER) AS CALENDAR_QTR_NUM,    
    ---- Month Values
    CAST(TO_CHAR(CurrDate,'YYYY') || TO_CHAR(CurrDate,'MM') AS NUMBER) AS CALENDAR_MONTH_SORT,
    TO_CHAR(CurrDate,'Mon') || ' ' || TO_CHAR(CurrDate,'YYYY') AS CALENDAR_MONTH_DESC,
    RTRIM(TO_CHAR(CurrDate,'Month')) || ' ' || TO_CHAR(CurrDate,'YYYY') AS CALENDAR_MONTH_LONG_DESC,
    TO_CHAR(CurrDate,'Mon')     AS CALENDAR_MONTH_NAME,
    RTRIM(TO_CHAR(CurrDate,'Month'))  AS CALENDAR_MONTH_LONG_NAME,     
    ---- Quarter values
    TO_CHAR(CurrDate,'YYYY') || 'Q' || TO_CHAR(CurrDate,'Q')  AS CALENDAR_QTR_CD,
    CAST(TO_CHAR(CurrDate,'YYYY') || TO_CHAR(CurrDate,'Q') AS NUMBER) AS CALENDAR_QTR_SORT,
    'Q' || TO_CHAR(CurrDate,'Q') || ' ' || TO_CHAR(CurrDate,'YYYY') AS CALENDAR_QTR_DESC,
    'Quarter ' || TO_CHAR(CurrDate,'Q') || ' ' || TO_CHAR(CurrDate,'YYYY') AS CALENDAR_QTR_LONG_DESC,
    'Q' || TO_CHAR(CurrDate,'Q')  AS CALENDAR_QTR_NAME,
    'Quarter ' || TO_CHAR(CurrDate,'Q') AS CALENDAR_QTR_LONG_NAME,     
    ---- Year Values
    CAST(TO_CHAR(CurrDate,'YYYY') AS INTEGER) AS CALENDAR_YEAR,     
    ---- Fiscal
    ADD_MONTHS(CurrDate,9) as Fiscal_Date,     
    ---- Fiscal Month Values
    TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') || 'FM'|| TO_CHAR(ADD_MONTHS(CurrDate,9),'MM') AS FISCAL_MONTH_CD,
    CAST(TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') || TO_CHAR(ADD_MONTHS(CurrDate,9),'MM') AS NUMBER) AS FISCAL_MONTH_SORT,
    TO_CHAR(CurrDate,'Mon') || ' ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'YY') || '/' || TO_CHAR(ADD_MONTHS(CurrDate,21),'YY') AS FISCAL_MONTH_DESC,
    RTRIM(TO_CHAR(CurrDate,'Month')) || ' ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') || '/' || TO_CHAR(ADD_MONTHS(CurrDate,21),'YYYY') AS FISCAL_MONTH_LONG_DESC,
    'FM ' || TO_CHAR(CurrDate,'Mon')     AS FISCAL_MONTH_NAME,
    'FM ' || RTRIM(TO_CHAR(CurrDate,'Month'))  AS FISCAL_MONTH_LONG_NAME,     
    ---- Fiscal Quarter values
    TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') || 'FQ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'Q')  AS FISCAL_QTR_CD,
    CAST(TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') || TO_CHAR(ADD_MONTHS(CurrDate,9),'Q') AS NUMBER) AS FISCAL_QTR_SORT,
    'FQ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'Q') || ' ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'YY') || '/' || TO_CHAR(ADD_MONTHS(CurrDate,21),'YY') AS FISCAL_QTR_DESC,
    'Fiscal Quarter ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'Q') || ' ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') || '/' || TO_CHAR(ADD_MONTHS(CurrDate,21),'YYYY') AS FISCAL_QTR_LONG_DESC,
    'FQ ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'Q')  AS FISCAL_QTR_NAME,
    'Fiscal Quarter ' || TO_CHAR(ADD_MONTHS(CurrDate,9),'Q') AS FISCAL_QTR_LONG_NAME,     
    ---- Fiscal Year Values
    'FY' || TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') AS FISCAL_YEAR,
    CAST(TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') AS INTEGER) AS FISCAL_YEAR_SORT,
    TO_CHAR(ADD_MONTHS(CurrDate,9),'YY') || '/' || TO_CHAR(ADD_MONTHS(CurrDate,21),'YY') AS FISCAL_YEAR_NAME,
     TO_CHAR(ADD_MONTHS(CurrDate,9),'YYYY') || '/' || TO_CHAR(ADD_MONTHS(CurrDate,21),'YYYY') AS FISCAL_YEAR_LONG_NAME    
  FROM
    (
--    SELECT     TO_DATE ('01/01/1920','DD/MM/YYYY') + ROWNUM CurrDate
--              FROM DUAL
--        CONNECT BY TO_DATE ('01/01/1920','DD/MM/YYYY') + ROWNUM <= TO_DATE('01/01/1980','DD/MM/YYYY')
    SELECT level n,
      -- Calendar starts at the day after this date.
      ADD_MONTHS(TO_DATE('01/12/2013','DD/MM/YYYY'),level) CurrDate
    FROM dual
      -- Change for the number of days to be added to the table.
      CONNECT BY level <= 60
--    union all SELECT     TO_DATE ('31/12/9999','DD/MM/YYYY') CurrDate from DUAL
    )
  )
SELECT 
  CALENDAR_MONTH_CD,
  CALENDAR_MONTH_NUM,
  CALENDAR_QTR_NUM,
  CALENDAR_MONTH_SORT,
  CALENDAR_MONTH_DESC,
  CALENDAR_MONTH_LONG_DESC,
  CALENDAR_MONTH_NAME,
  CALENDAR_MONTH_LONG_NAME,
  CALENDAR_QTR_CD,
  CALENDAR_QTR_SORT,
  CALENDAR_QTR_DESC,
  CALENDAR_QTR_LONG_DESC,
  CALENDAR_QTR_NAME,
  CALENDAR_QTR_LONG_NAME,
  CALENDAR_YEAR,
  FISCAL_MONTH_CD,
  FISCAL_MONTH_SORT,
  FISCAL_MONTH_DESC,
  FISCAL_MONTH_LONG_DESC,
  FISCAL_MONTH_NAME,
  FISCAL_MONTH_LONG_NAME,
  FISCAL_QTR_CD,
  FISCAL_QTR_SORT,
  FISCAL_QTR_DESC,
  FISCAL_QTR_LONG_DESC,
  FISCAL_QTR_NAME,
  FISCAL_QTR_LONG_NAME,
  FISCAL_YEAR,
  FISCAL_YEAR_SORT,
  FISCAL_YEAR_NAME,
  FISCAL_YEAR_LONG_NAME,
  SYSDATE
FROM base_calendar
ORDER BY CALENDAR_MONTH_SORT
 