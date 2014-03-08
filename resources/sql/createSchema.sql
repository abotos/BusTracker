--##################################################################### CREATE_SEQUENCES ################################################

CREATE SEQUENCE S_BUS_LOCATION_UPDATE MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1
/

--##################################################################### DEFINITION_TYPE ################################################

CREATE TABLE "BUS_LOCATION_UPDATE" (
  "ID"          NUMBER                            NOT NULL ENABLE,
  "LAST_UPDATE" TIMESTAMP(6) DEFAULT systimestamp NOT NULL ENABLE,
  "NAME"        VARCHAR2(75 CHAR)                 NOT NULL ENABLE,
  CONSTRAINT "BUS_LOCATION_UPDATE_PK" PRIMARY KEY ("ID") ENABLE,
  CONSTRAINT "UNIQUE_BUS_LOCATION_UPDATE" UNIQUE ("NAME") ENABLE
)
/
