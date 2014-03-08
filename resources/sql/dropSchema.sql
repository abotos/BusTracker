--##################################################################### DROP_CONSTRAINTS ################################################

begin execute immediate 'ALTER TABLE BUS_LOCATION_UPDATE DROP CONSTRAINT UNIQUE_BUS_LOCATION_UPDATE'; exception when others then if sqlcode !=-2443 and sqlcode != -942 then raise; end if; end;
/

begin execute immediate 'ALTER TABLE BUS_LOCATION_UPDATE DROP CONSTRAINT BUS_LOCATION_UPDATE_PK'; exception when others then if sqlcode !=-2443 and sqlcode != -942 then raise; end if; end;
/

--##################################################################### DROP_TABLES ################################################

begin execute immediate 'DROP TABLE BUS_LOCATION_UPDATE'; exception when others then if sqlcode != -942 then raise; end if; end;
/

--##################################################################### DROP_SEQUENCES ################################################

begin execute immediate 'DROP SEQUENCE S_BUS_LOCATION_UPDATE'; exception when others then if sqlcode != -2289 then raise; end if; end;
/
