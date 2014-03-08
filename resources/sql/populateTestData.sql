--#################INSERTING DATA INTO USER_DEF########################################

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (100000000, 'test', '723988AD27B18C383E1ED38C41E0CCCA06091977', TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (10000001, 'testUser1', 'E148A0A8462E9CB2B90F6C55B982CF7D8B311D24', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (10000002, 'ReadUser', '1092E8671C5A3BCC52E59895B9EB805967640BA3', TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (10000003, 'FullUser', 'C93E52EF7E2E09F21089926B60D5BFC14B5D2957', TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (10000004, 'NoRightUser', '096251E2485D599179E2DB06A9C65EC19A497CB0', TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (10000005, 'UserWorkflowUser', '4BAB7A4EBB4650DAD46215B4649C737B99F4DCA8', TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser',
   -1)
/

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (10000008, 'UserWorkflowUser1', 'EDF7B7712420C41D4A696EC29B4CE9061B4FA7BC', TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser',
   -1)
/

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (10000006, 'DataWorkflowUser', 'CD2AA9FC21133C437F5EFBC106C27234B7E6C1D6', TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser',
   -1)
/

INSERT INTO AUTH_USER
(ID, NAME, PASSWORD, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (10000007, 'DataWorkflowUser1', '0715AE79BB763DB0A7B7F1889C0B59C661CCE308', TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser',
   -1)
/

--#################END INSERTING DATA INTO USER_DEF######################################

--#################INSERTING DATA INTO USER PREFERENCE#################################
INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'test'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'testUser1'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'ReadUser'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'FullUser'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'NoRightUser'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'UserWorkflowUser'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'UserWorkflowUser1'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'DataWorkflowUser'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

INSERT INTO AUTH_USER_PREFERENCE
(ID, AUTH_USER_ID, DATE_FORMAT, DATE_TIME_FORMAT, EVENING_MORNING_AM_FORMAT, REF_READING_DIRECTION_ID, LAST_OPENED_MODEL_ID, USER_UPDATE, VERSION_KEY, LOCALE, PAGE_SIZE, REOPEN_LAST_MODEL_ON_STARTUP, LINE_SEPARATOR_EXPRESSION, LINE_SEPARATOR, DECIMAL_SEPARATOR, THOUSAND_SEPARATOR, DECIMALS_DISPLAYED)
VALUES
  (S_AUTH_USER_PREFERENCE.NEXTVAL, (SELECT
                                      ID
                                    FROM AUTH_USER
                                    WHERE NAME = 'DataWorkflowUser1'), 'd/M/yyyy', 'd/M/yyyy HH:mm:ss', 1, 1, -1, 'setup', -1, 'en', 40, 1, '[,;]', ',', '.', '''', 2)
/

--#################END INSERTING DATA INTO USER PREFERENCE######################################

--#################INSERTING DATA INTO USER_PROPERTY#####################################

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'test'), 'setup', -1, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0, TO_TIMESTAMP(
       '5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'testUser1'), 'setup', -1, TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM',
                                                                                       'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0, TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM',
                                                                                                                                                      'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'),
   TO_TIMESTAMP(
       '5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'ReadUser'), 'setup', -1, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                      'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                                                                                     'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'),
   TO_TIMESTAMP(
       '5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'FullUser'), 'setup', -1, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                      'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                                                                                     'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'),
   TO_TIMESTAMP(
       '5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'NoRightUser'), 'setup', -1, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                         'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0,
   TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), TO_TIMESTAMP(
       '5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'UserWorkflowUser'), 'setup', -1, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                              'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0,
   TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), TO_TIMESTAMP(
       '5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'UserWorkflowUser1'), 'setup', -1, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                               'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0,
   TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), TO_TIMESTAMP(
       '5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'DataWorkflowUser'), 'setup', -1, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                              'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0,
   TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), TO_TIMESTAMP(
       '5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

INSERT INTO AUTH_USER_PROPERTY
(ID, AUTH_USER_ID, USER_UPDATE, VERSION_KEY, LAST_UPDATE, IS_LOCKED, CHANGE_PASSWORD, LAST_LOGIN, LAST_PASSWORD_CHANGE) VALUES
  (S_AUTH_USER_PROPERTY.NEXTVAL, (SELECT
                                    ID
                                  FROM AUTH_USER
                                  WHERE NAME = 'DataWorkflowUser1'), 'setup', -1, TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                                                                                               'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 0, 0,
   TO_TIMESTAMP('5/5/2020 12:00:00.000000 AM',
                'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), TO_TIMESTAMP(
       '5/5/2020 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'))
/

--#################END INSERTING DATA INTO USER_PROPERTY##################################

--#################INSERTING DATA INTO ROLE################################################
INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'test', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'test2', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'test3', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'Read', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'Full', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'NoRight', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'UserWorkflow', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'UserWorkflow1', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'DataWorkflow', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

INSERT INTO AUTH_ROLE
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_ROLE.NEXTVAL, 'DataWorkflow1', 'Test role', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/
--#################END INSERTING DATA INTO ROLE#############################################

--#################INSERTING DATA INTO GROUP################################################
INSERT INTO AUTH_GROUP
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_GROUP.NEXTVAL, 'testGroup', 'test Group', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'Administration', -1)
/

INSERT INTO AUTH_GROUP
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_GROUP.NEXTVAL, 'Read', 'test group with only read rights', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'Administration', -1)
/

INSERT INTO AUTH_GROUP
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_GROUP.NEXTVAL, 'Full', 'test group with read and write rights', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'Administration',
   -1)
/

INSERT INTO AUTH_GROUP
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_GROUP.NEXTVAL, 'NoRight', 'test group with', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'Administration', -1)
/

INSERT INTO AUTH_GROUP
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_GROUP.NEXTVAL, 'UserWorkflow', 'test Group', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'Administration', -1)
/

INSERT INTO AUTH_GROUP
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_GROUP.NEXTVAL, 'UserWorkflow1', 'test Group', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'Administration', -1)
/

INSERT INTO AUTH_GROUP
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_GROUP.NEXTVAL, 'DataWorkflow', 'test Group', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'Administration', -1)
/

INSERT INTO AUTH_GROUP
(ID, NAME, DESCRIPTION, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_AUTH_GROUP.NEXTVAL, 'DataWorkflow1', 'test Group', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'Administration', -1)
/
--#################END INSERTING DATA INTO GROUP#############################################

--#################INSERTING DATA INTO USER_GROUP############################################
INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'test'), (SELECT
                             ID
                           FROM AUTH_GROUP
                           WHERE NAME = 'testGroup'))
/

INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'testUser1'), (SELECT
                                  ID
                                FROM AUTH_GROUP
                                WHERE NAME = 'testGroup'))
/

INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'ReadUser'), (SELECT
                                 ID
                               FROM AUTH_GROUP
                               WHERE NAME = 'Read'))
/

INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'FullUser'), (SELECT
                                 ID
                               FROM AUTH_GROUP
                               WHERE NAME = 'Full'))
/

INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'NoRightUser'), (SELECT
                                    ID
                                  FROM AUTH_GROUP
                                  WHERE NAME = 'NoRight'))
/

INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'UserWorkflowUser'), (SELECT
                                         ID
                                       FROM AUTH_GROUP
                                       WHERE NAME = 'UserWorkflow'))
/

INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'UserWorkflowUser1'), (SELECT
                                          ID
                                        FROM AUTH_GROUP
                                        WHERE NAME = 'UserWorkflow1'))
/

INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'DataWorkflowUser'), (SELECT
                                         ID
                                       FROM AUTH_GROUP
                                       WHERE NAME = 'DataWorkflow'))
/

INSERT INTO AUTH_USER_GROUP
(USER_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_USER
    WHERE NAME = 'DataWorkflowUser1'), (SELECT
                                          ID
                                        FROM AUTH_GROUP
                                        WHERE NAME = 'DataWorkflow1'))
/
--#################END INSERTING DATA INTO USER_GROUP########################################

--#################INSERTING DATA INTO GROUP_ROLE############################################
INSERT INTO AUTH_GROUP_ROLE
(ROLE_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_ROLE
    WHERE NAME = 'test'), (SELECT
                             ID
                           FROM AUTH_GROUP
                           WHERE NAME = 'testGroup'))
/

INSERT INTO AUTH_GROUP_ROLE
(ROLE_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_ROLE
    WHERE NAME = 'Read'), (SELECT
                             ID
                           FROM AUTH_GROUP
                           WHERE NAME = 'Read'))
/

INSERT INTO AUTH_GROUP_ROLE
(ROLE_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_ROLE
    WHERE NAME = 'Full'), (SELECT
                             ID
                           FROM AUTH_GROUP
                           WHERE NAME = 'Full'))
/

INSERT INTO AUTH_GROUP_ROLE
(ROLE_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_ROLE
    WHERE NAME = 'NoRight'), (SELECT
                                ID
                              FROM AUTH_GROUP
                              WHERE NAME = 'NoRight'))
/

INSERT INTO AUTH_GROUP_ROLE
(ROLE_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_ROLE
    WHERE NAME = 'UserWorkflow'), (SELECT
                                     ID
                                   FROM AUTH_GROUP
                                   WHERE NAME = 'UserWorkflow'))
/

INSERT INTO AUTH_GROUP_ROLE
(ROLE_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_ROLE
    WHERE NAME = 'UserWorkflow1'), (SELECT
                                      ID
                                    FROM AUTH_GROUP
                                    WHERE NAME = 'UserWorkflow1'))
/

INSERT INTO AUTH_GROUP_ROLE
(ROLE_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_ROLE
    WHERE NAME = 'DataWorkflow'), (SELECT
                                     ID
                                   FROM AUTH_GROUP
                                   WHERE NAME = 'DataWorkflow'))
/

INSERT INTO AUTH_GROUP_ROLE
(ROLE_ID, GROUP_ID) VALUES
  ((SELECT
      ID
    FROM AUTH_ROLE
    WHERE NAME = 'DataWorkflow1'), (SELECT
                                      ID
                                    FROM AUTH_GROUP
                                    WHERE NAME = 'DataWorkflow1'))
/

--#################END INSERTING DATA INTO GROUP_ROLE########################################

--#################INSERTING DATA INTO WORKFLOW############################################
INSERT INTO WORKFLOW
(ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES
  (S_WORKFLOW.NEXTVAL, 'wf1', 'desc1', 'testUser1', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), -1)
/

INSERT INTO WORKFLOW
(ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES
  (S_WORKFLOW.NEXTVAL, 'wf2', 'desc2', 'testUser1', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), -1)
/

INSERT INTO WORKFLOW
(ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES
  (S_WORKFLOW.NEXTVAL, 'wf3', 'desc3', 'testUser1', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), -1)
/

INSERT INTO WORKFLOW
(ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES
  (S_WORKFLOW.NEXTVAL, 'wf4', 'desc4', 'testUser1', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), -1)
/

INSERT INTO WORKFLOW
(ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES
  (S_WORKFLOW.NEXTVAL, 'wf5', 'desc5', 'testUser1', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), -1)
/

INSERT INTO WORKFLOW
(ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES
  (S_WORKFLOW.NEXTVAL, 'test_workflow', 'TEST_DESCRIPTION', 'AdminUser', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), -1)
/

INSERT INTO WORKFLOW
(ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES
  (S_WORKFLOW.NEXTVAL, 'test_workflow2', 'TEST_DESCRIPTION', 'AdminUser', TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), -1)
/
--#################END INSERTING DATA INTO WORKFLOW########################################

--####################### INSERTING CALENDAR############################################

INSERT INTO CALENDAR
(CALENDAR_ID, NAME, END_OF_WEEK_DAY, LAST_UPDATE, USER_UPDATE, VERSION_KEY) VALUES
  (S_CALENDAR.NEXTVAL, 'testCalendar', 6, TO_TIMESTAMP('5/5/2012 12:00:00.000000 AM', 'fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'AdminUser', -1)
/

--###################### END INSERTING CALENDAR#########################################

--####################### INSERTING JOB_TYPE############################################

INSERT INTO JOB_TYPE (ID, NAME, DESCRIPTION, APPLICATION_NAME, META_INFORMATION, DEFAULT_VALUES_XML, VERSION_KEY, USER_UPDATE, LAST_UPDATE)
VALUES (S_JOB_TYPE.NEXTVAL, 'TESTJOBTYPE1', 'no descr', 'UNKNOWN APP', '<?xml version="1.0" encoding="utf-8" ?>
<jobTypeMetaInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <parameter type="LONG" name="paramLong" optional="true"/>
    <parameter type="STRING" name="paramString"/>
    <parameter type="DATE" name="paramDate"/>
    <parameter type="ENUM" name="paramEnum" optional="true">
        <enumValues>
            <key>1</key>
            <value>TJT1Value1</value>
        </enumValues>
        <enumValues>
            <key>2</key>
            <value>TJT1Value2</value>
        </enumValues>
    </parameter>
    <parameter type="DOUBLE" name="paramDouble" optional="true"/>
</jobTypeMetaInfo>',
        '<?xml version="1.0" encoding="utf-8" ?>
        <jobParameters xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <parameter name="paramLong" value="1111"/>
            <parameter name="paramString" value="TJT1ParamValue1"/>
            <parameter name="paramDate" value="12-12-2011 14:12:24"/>
            <parameter name="paramEnum" value="TJT1Value1" key="1"/>
            <parameter name="paramDouble" value="11.11"/>
        </jobParameters>', 1, null,
        to_timestamp('22-SEP-11', 'DD-MON-RR HH.MI.SSXFF AM'))
/

INSERT INTO JOB_TYPE (ID, NAME, DESCRIPTION, APPLICATION_NAME, META_INFORMATION, DEFAULT_VALUES_XML, VERSION_KEY, USER_UPDATE, LAST_UPDATE)
VALUES (S_JOB_TYPE.NEXTVAL, 'TESTJOBTYPE2', 'no desc2', 'UNKNOWN APP2', '<?xml version="1.0" encoding="utf-8" ?>
<jobTypeMetaInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <parameter type="LONG" name="paramLong" optional="true"/>
    <parameter type="ENUM" name="paramEnum" optional="true">
        <enumValues>
            <key>1</key>
            <value>TJT2Value1</value>
        </enumValues>
        <enumValues>
            <key>2</key>
            <value>TJT2Value2</value>
        </enumValues>
    </parameter>
    <parameter type="STRING" name="paramString"/>
    <parameter type="STRING" name="paramString2"/>
    <parameter type="DATE" name="paramDate"/>
    <parameter type="DOUBLE" name="paramDouble" optional="true"/>
</jobTypeMetaInfo>',
        '<?xml version="1.0" encoding="utf-8" ?>
        <jobParameters xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <parameter name="paramLong" value="2222"/>
            <parameter name="paramString" value="TJT2ParamValue1"/>
            <parameter name="paramString2" value="TJT2ParamValue2"/>
            <parameter name="paramDate" value="10-12-2011"/>
            <parameter name="paramEnum" value="TJT2Value2" key="2"/>
            <parameter name="paramDouble" value="22.22"/>
        </jobParameters>', 1, null,
        to_timestamp('22-SEP-11', 'DD-MON-RR HH.MI.SSXFF AM'))
/

--###################### END INSERTING JOB_TYPE#########################################

--####################### INSERTING CUSTOM_EVENT############################################

INSERT INTO CUSTOM_EVENT (ID, NAME, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (S_EVENT.NEXTVAL, 'CUSTOMEVENT1', null, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO CUSTOM_EVENT (ID, NAME, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (S_EVENT.NEXTVAL, 'CUSTOMEVENT2', null, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO CUSTOM_EVENT (ID, NAME, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (S_EVENT.NEXTVAL, 'CUSTOMEVENT3', null, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO CUSTOM_EVENT (ID, NAME, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (S_EVENT.NEXTVAL, 'CUSTOMEVENT4', null, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO CUSTOM_EVENT (ID, NAME, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (S_EVENT.NEXTVAL, 'CUSTOMEVENT5', null, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO CUSTOM_EVENT (ID, NAME, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (S_EVENT.NEXTVAL, 'CUSTOMEVENT6', null, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/
--###################### END INSERTING CUSTOM_EVENT#########################################

--####################### INSERTING EVENT############################################

INSERT INTO EVENT (EVENT_TYPE, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (2, (SELECT
                                                                                        ID
                                                                                      FROM CUSTOM_EVENT
                                                                                      WHERE NAME = 'CUSTOMEVENT1'), NULL, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO EVENT (EVENT_TYPE, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (2, (SELECT
                                                                                        ID
                                                                                      FROM CUSTOM_EVENT
                                                                                      WHERE NAME = 'CUSTOMEVENT2'), NULL, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO EVENT (EVENT_TYPE, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (2, (SELECT
                                                                                        ID
                                                                                      FROM CUSTOM_EVENT
                                                                                      WHERE NAME = 'CUSTOMEVENT3'), NULL, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO EVENT (EVENT_TYPE, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (2, (SELECT
                                                                                        ID
                                                                                      FROM CUSTOM_EVENT
                                                                                      WHERE NAME = 'CUSTOMEVENT4'), NULL, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO EVENT (EVENT_TYPE, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (2, (SELECT
                                                                                        ID
                                                                                      FROM CUSTOM_EVENT
                                                                                      WHERE NAME = 'CUSTOMEVENT5'), NULL, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/

INSERT INTO EVENT (EVENT_TYPE, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY) VALUES (2, (SELECT
                                                                                        ID
                                                                                      FROM CUSTOM_EVENT
                                                                                      WHERE NAME = 'CUSTOMEVENT6'), NULL, to_timestamp('11-OCT-11', 'DD-MON-RR HH.MI.SSXFF AM'), 1)
/
--###################### END INSERTING EVENT#########################################

DECLARE myId   NUMBER;
  navigationId NUMBER;
BEGIN

-- ================ 1 ===================
  SELECT
    S_DEFINITION.NEXTVAL
  INTO myId
  FROM DUAL;
  INSERT INTO WORKFLOW_ELEMENT (ID, NAME, DESCRIPTION, WORKFLOW_ID, DEFINITION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE, EVENT_ID) VALUES (myId, 'TESTJOB1', 'nodescr1', (SELECT
                                                                                                                                                                               ID
                                                                                                                                                                             FROM
                                                                                                                                                                               WORKFLOW
                                                                                                                                                                             WHERE
                                                                                                                                                                               NAME
                                                                                                                                                                               =
                                                                                                                                                                               'wf4'),
                                                                                                                                              1, -1, to_timestamp(
        '22-SEP-11',
        'DD-MON-RR HH.MI.SSXFF AM'), null, (SELECT
                                              ID
                                            FROM CUSTOM_EVENT
                                            WHERE NAME = 'CUSTOMEVENT1'));
  INSERT INTO JOB_DEFINITION (ID, JOB_TYPE_ID, PARAMETERS_XML, ASSIGNED_USER_ID) VALUES (myId, (SELECT
                                                                                                  ID
                                                                                                FROM JOB_TYPE
                                                                                                WHERE NAME = 'TESTJOBTYPE1'), '<?xml version="1.0" encoding="utf-8" ?>
  <jobParameters xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <parameter name="paramLong" value="44"/>
      <parameter name="paramString" value="gqerg"/>
      <parameter name="paramDate" value="12-11-2011"/>
      <parameter name="paramEnum" value="TJT1Value2" key="2"/>
      <parameter name="paramDouble" value="12.33"/>
  </jobParameters>
  ', (SELECT
                                                                                                                                      ID
      FROM AUTH_USER
      WHERE NAME = 'AdminUser'));
  DELETE FROM SCHEDULE_CHANGE
  WHERE WORKFLOW_ELEMENT_ID = myId;

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'JOB_1',
    'desc1',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    1,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    null
  );

  INSERT INTO JOB (ID, JOB_STATE_ID, JOB_DEFINITION, ERROR_MESSAGES, NR_ERRORS, USER_UPDATE, VERSION_KEY, LAST_UPDATE, START_TIME, FINISH_TIME) VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    1,
    myId,
    '',
    0,
    null,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    to_timestamp('20-SEP-13', 'DD-MON-RR'),
    to_timestamp('22-SEP-13', 'DD-MON-RR')
  );

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'JOB_1',
    'desc2',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    1,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    null
  );

  INSERT INTO JOB (ID, JOB_STATE_ID, JOB_DEFINITION, ERROR_MESSAGES, NR_ERRORS, USER_UPDATE, VERSION_KEY, LAST_UPDATE, START_TIME, FINISH_TIME) VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    2,
    myId,
    '',
    0,
    null,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    to_timestamp('20-SEP-13', 'DD-MON-RR'),
    to_timestamp('25-SEP-13', 'DD-MON-RR')
  );

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'JOB_1',
    'desc3',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    1,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    null
  );

  INSERT INTO JOB (ID, JOB_STATE_ID, JOB_DEFINITION, ERROR_MESSAGES, NR_ERRORS, USER_UPDATE, VERSION_KEY, LAST_UPDATE, START_TIME, FINISH_TIME) VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    3,
    myId,
    'Custom Error Messages',
    3,
    null,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    to_timestamp('20-SEP-13', 'DD-MON-RR'),
    to_timestamp('22-SEP-13', 'DD-MON-RR')
  );

-- ================ 2 ===================
  SELECT
    S_DEFINITION.NEXTVAL
  INTO myId
  FROM DUAL;
  INSERT INTO WORKFLOW_ELEMENT (ID, NAME, DESCRIPTION, WORKFLOW_ID, DEFINITION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE, EVENT_ID) VALUES (myId, 'TESTJOB2', 'nodescr2', (SELECT
                                                                                                                                                                               ID
                                                                                                                                                                             FROM
                                                                                                                                                                               WORKFLOW
                                                                                                                                                                             WHERE
                                                                                                                                                                               NAME
                                                                                                                                                                               =
                                                                                                                                                                               'wf4'),
                                                                                                                                              1, -1, to_timestamp(
        '22-SEP-11',
        'DD-MON-RR HH.MI.SSXFF AM'), null, (SELECT
                                              ID
                                            FROM CUSTOM_EVENT
                                            WHERE NAME = 'CUSTOMEVENT2'));
  INSERT INTO JOB_DEFINITION (ID, JOB_TYPE_ID, PARAMETERS_XML, ASSIGNED_USER_ID) VALUES (myId, (SELECT
                                                                                                  ID
                                                                                                FROM JOB_TYPE
                                                                                                WHERE NAME = 'TESTJOBTYPE1'), '<?xml version="1.0" encoding="utf-8" ?>
  <jobParameters xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <parameter name="paramLong" value="55"/>
      <parameter name="paramString" value="hergvrer"/>
      <parameter name="paramDate" value="12-12-2011"/>
      <parameter name="paramEnum" value="TJT1Value1" key="1"/>
      <parameter name="paramDouble" value="412.23"/>
  </jobParameters>
  ', (SELECT
                                                                                                                                      ID
      FROM AUTH_USER
      WHERE NAME = 'AdminUser'));
  DELETE FROM SCHEDULE_CHANGE
  WHERE WORKFLOW_ELEMENT_ID = myId;

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'JOB_2',
    'desc4',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    1,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    null
  );

  INSERT INTO JOB (ID, JOB_STATE_ID, JOB_DEFINITION, ERROR_MESSAGES, NR_ERRORS, USER_UPDATE, VERSION_KEY, LAST_UPDATE, START_TIME, FINISH_TIME) VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    4,
    myId,
    'Custom Error Message',
    1,
    null,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    to_timestamp('20-SEP-13', 'DD-MON-RR'),
    to_timestamp('22-SEP-13', 'DD-MON-RR')
  );
-- ================ 3 ===================
  SELECT
    S_DEFINITION.NEXTVAL
  INTO myId
  FROM DUAL;
  INSERT INTO WORKFLOW_ELEMENT (ID, NAME, DESCRIPTION, WORKFLOW_ID, DEFINITION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE, EVENT_ID) VALUES (myId, 'TESTJOB3', 'nodescr3', (SELECT
                                                                                                                                                                               ID
                                                                                                                                                                             FROM
                                                                                                                                                                               WORKFLOW
                                                                                                                                                                             WHERE
                                                                                                                                                                               NAME
                                                                                                                                                                               =
                                                                                                                                                                               'wf4'),
                                                                                                                                              1, -1, to_timestamp(
        '22-SEP-11',
        'DD-MON-RR HH.MI.SSXFF AM'), null, (SELECT
                                              ID
                                            FROM CUSTOM_EVENT
                                            WHERE NAME = 'CUSTOMEVENT3'));
  INSERT INTO JOB_DEFINITION (ID, JOB_TYPE_ID, PARAMETERS_XML, ASSIGNED_USER_ID) VALUES (myId, (SELECT
                                                                                                  ID
                                                                                                FROM JOB_TYPE
                                                                                                WHERE NAME = 'TESTJOBTYPE2'), '<?xml version="1.0" encoding="utf-8" ?>
  <jobParameters xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <parameter name="paramLong" value="1"/>
      <parameter name="paramEnum" value="TJT2Value2" key="2"/>
      <parameter name="paramDate" value="12-12-2011 14:12:24"/>
      <parameter name="paramString" value="asdf"/>
      <parameter name="paramString2" value="gewg"/>
  </jobParameters>
  ', (SELECT
                                                                                                                                      ID
      FROM AUTH_USER
      WHERE NAME = 'AdminUser'));
  DELETE FROM SCHEDULE_CHANGE
  WHERE WORKFLOW_ELEMENT_ID = myId;

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'JOB_3',
    'desc5',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    1,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    null
  );

  INSERT INTO JOB (ID, JOB_STATE_ID, JOB_DEFINITION, ERROR_MESSAGES, NR_ERRORS, USER_UPDATE, VERSION_KEY, LAST_UPDATE, START_TIME, FINISH_TIME) VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    5,
    myId,
    'Custom Error Message',
    1,
    null,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR'),
    to_timestamp('20-SEP-13', 'DD-MON-RR'),
    to_timestamp('22-SEP-13', 'DD-MON-RR')
  );

-- Insert Tasks and their comments

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'Task 1',
    'desc',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    0,
    -1,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    null
  );

  INSERT INTO TASK (ID, ORD, CATEGORY, STATE_ID, START_DATE, DUE_DATE, FINISHED_DATE, TASK_DEFINITION, BEFORE_STARTED, BEFORE_STARTED_GROUP, URL, CONTEXT, USER_ID, REVIEWER_ID, VERSION_KEY, USER_UPDATE, LAST_UPDATE, OVERDUE_COUNT)
  VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    'Red',
    2,
    to_timestamp('10-SEP-14', 'DD-MON-RR'),
    to_timestamp('19-NOV-14', 'DD-MON-RR'),
    NULL,
    NULL,
    NULL,
    NULL,
    'http://clu-atf:8080/mocker-webapp/mockerMain#simpleForm',
    NULL,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'GuestUser'),
    0,
    NULL,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0
  );

  INSERT INTO TASK_COMMENT (ID, TASK_ID, COMMENT_ORDER, COMMENT_TEXT) VALUES (
    S_TASK_COMMENT.NEXTVAL,
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    '<p><br>AdminUser(Thu Jan 09 17:03:30 FET 2014) : REVERT<br>Reverted for some reason</p>'
  );

  INSERT INTO TASK_COMMENT (ID, TASK_ID, COMMENT_ORDER, COMMENT_TEXT) VALUES (
    S_TASK_COMMENT.NEXTVAL,
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    1,
    '<p><br>AdminUser(Thu Jan 09 17:02:59 FET 2014) : DONE<br></p>'
  );

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'Task 2',
    'desc',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    0,
    -1,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    null
  );

  INSERT INTO TASK (ID, ORD, CATEGORY, STATE_ID, START_DATE, DUE_DATE, FINISHED_DATE, TASK_DEFINITION, BEFORE_STARTED, BEFORE_STARTED_GROUP, URL, CONTEXT, USER_ID, REVIEWER_ID, VERSION_KEY, USER_UPDATE, LAST_UPDATE, OVERDUE_COUNT)
  VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    'Green',
    2,
    to_timestamp('10-SEP-14', 'DD-MON-RR'),
    to_timestamp('19-NOV-14', 'DD-MON-RR'),
    NULL,
    NULL,
    NULL,
    NULL,
    'http://clu-atf:8080/portal/portalMain#workflowUseCase',
    NULL,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'GuestUser'),
    0,
    NULL,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0
  );

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'Task 3',
    'desc',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    0,
    -1,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    null
  );

  INSERT INTO TASK (ID, ORD, CATEGORY, STATE_ID, START_DATE, DUE_DATE, FINISHED_DATE, TASK_DEFINITION, BEFORE_STARTED, BEFORE_STARTED_GROUP, URL, CONTEXT, USER_ID, REVIEWER_ID, VERSION_KEY, USER_UPDATE, LAST_UPDATE, OVERDUE_COUNT)
  VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    'Red',
    1,
    to_timestamp('10-SEP-14', 'DD-MON-RR'),
    to_timestamp('19-NOV-14', 'DD-MON-RR'),
    NULL,
    NULL,
    NULL,
    NULL,
    'http://clu-atf:8080/mocker-webapp/mockerMain#simpleForm',
    NULL,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'GuestUser'),
    0,
    NULL,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0
  );

  INSERT INTO TASK_COMMENT (ID, TASK_ID, COMMENT_ORDER, COMMENT_TEXT) VALUES (
    S_TASK_COMMENT.NEXTVAL,
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    '<p><br>AdminUser(Thu Jan 09 17:03:30 FET 2014) : REVERT<br>Reverted for some other reason</p>'
  );

  INSERT INTO TASK_COMMENT (ID, TASK_ID, COMMENT_ORDER, COMMENT_TEXT) VALUES (
    S_TASK_COMMENT.NEXTVAL,
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    1,
    '<p><br>AdminUser(Thu Jan 09 17:02:59 FET 2014) : DONE<br></p>'
  );

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'Task 4',
    'desc',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    0,
    -1,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    null
  );

  INSERT INTO TASK (ID, ORD, CATEGORY, STATE_ID, START_DATE, DUE_DATE, FINISHED_DATE, TASK_DEFINITION, BEFORE_STARTED, BEFORE_STARTED_GROUP, URL, CONTEXT, USER_ID, REVIEWER_ID, VERSION_KEY, USER_UPDATE, LAST_UPDATE, OVERDUE_COUNT)
  VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    'Green',
    1,
    to_timestamp('10-SEP-14', 'DD-MON-RR'),
    to_timestamp('19-NOV-14', 'DD-MON-RR'),
    NULL,
    NULL,
    NULL,
    NULL,
    'http://clu-atf:8080/portal/portalMain#workflowUseCase',
    NULL,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'GuestUser'),
    0,
    NULL,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0
  );

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'Task 5',
    'desc',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    0,
    -1,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    null
  );

  INSERT INTO TASK (ID, ORD, CATEGORY, STATE_ID, START_DATE, DUE_DATE, FINISHED_DATE, TASK_DEFINITION, BEFORE_STARTED, BEFORE_STARTED_GROUP, URL, CONTEXT, USER_ID, REVIEWER_ID, VERSION_KEY, USER_UPDATE, LAST_UPDATE, OVERDUE_COUNT)
  VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    'Red',
    3,
    to_timestamp('10-SEP-14', 'DD-MON-RR'),
    to_timestamp('19-NOV-14', 'DD-MON-RR'),
    NULL,
    NULL,
    NULL,
    NULL,
    'http://clu-atf:8080/mocker-webapp/mockerMain#simpleForm',
    NULL,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'GuestUser'),
    0,
    NULL,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0
  );

  INSERT INTO TASK_COMMENT (ID, TASK_ID, COMMENT_ORDER, COMMENT_TEXT) VALUES (
    S_TASK_COMMENT.NEXTVAL,
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    '<p><br>AdminUser(Thu Jan 09 17:03:30 FET 2014) : REVERT<br>Reverted for some totally different reason</p>'
  );

  INSERT INTO TASK_COMMENT (ID, TASK_ID, COMMENT_ORDER, COMMENT_TEXT) VALUES (
    S_TASK_COMMENT.NEXTVAL,
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    1,
    '<p><br>AdminUser(Thu Jan 09 17:02:59 FET 2014) : DONE<br></p>'
  );

  INSERT INTO DEFINITION_MATERIALIZATION (ID, NAME, DESCRIPTION, WORKFLOW_ID, MATERIALIZATION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE) VALUES (
    S_DEFINITION_MATERIALIZATION.NEXTVAL,
    'Task 6',
    'desc',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    0,
    -1,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    null
  );

  INSERT INTO TASK (ID, ORD, CATEGORY, STATE_ID, START_DATE, DUE_DATE, FINISHED_DATE, TASK_DEFINITION, BEFORE_STARTED, BEFORE_STARTED_GROUP, URL, CONTEXT, USER_ID, REVIEWER_ID, VERSION_KEY, USER_UPDATE, LAST_UPDATE, OVERDUE_COUNT)
  VALUES (
    S_DEFINITION_MATERIALIZATION.CURRVAL,
    0,
    'Green',
    3,
    to_timestamp('10-SEP-14', 'DD-MON-RR'),
    to_timestamp('19-NOV-14', 'DD-MON-RR'),
    NULL,
    NULL,
    NULL,
    NULL,
    'http://clu-atf:8080/portal/portalMain#workflowUseCase',
    NULL,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'GuestUser'),
    0,
    NULL,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0
  );

-- Insert Alerts

  INSERT INTO ALERT (ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY, ALERT_TYPE, IS_READ, CREATION_DATE, USER_ID, ELEMENT_NAME) VALUES (
    S_ALERT.NEXTVAL,
    'Alert 1',
    'desc',
    'SUPER_USER',
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0,
    'TaskCreation',
    0,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    'Element Name'
  );

  INSERT INTO ALERT (ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY, ALERT_TYPE, IS_READ, CREATION_DATE, USER_ID, ELEMENT_NAME) VALUES (
    S_ALERT.NEXTVAL,
    'Alert 2',
    'desc',
    'SUPER_USER',
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0,
    'TaskDecline',
    0,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    'Element Name'
  );

  INSERT INTO ALERT (ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY, ALERT_TYPE, IS_READ, CREATION_DATE, USER_ID, ELEMENT_NAME) VALUES (
    S_ALERT.NEXTVAL,
    'Alert 3',
    'desc',
    'SUPER_USER',
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0,
    'TaskDecline',
    1,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    'Element Name'
  );

  INSERT INTO ALERT (ID, NAME, DESCRIPTION, USER_UPDATE, LAST_UPDATE, VERSION_KEY, ALERT_TYPE, IS_READ, CREATION_DATE, USER_ID, ELEMENT_NAME) VALUES (
    S_ALERT.NEXTVAL,
    'Alert 4',
    'desc',
    'SUPER_USER',
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    0,
    'TaskRevert',
    1,
    to_timestamp('13-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'AdminUser'),
    'Element Name'
  );

--Insert Definition Group (Workflow Element Group)
  INSERT INTO WORKFLOW_ELEMENT_GROUP (ID, NAME, VERSION_KEY, USER_UPDATE, LAST_UPDATE, WORKFLOW_ID) VALUES (
    S_WORKFLOW_ELEMENT_GROUP.NEXTVAL,
    'WorkflowGroup1',
    0,
    'AdminUser',
    to_date('15-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4')
  );

  INSERT INTO WORKFLOW_ELEMENT_GROUP (ID, NAME, VERSION_KEY, USER_UPDATE, LAST_UPDATE, WORKFLOW_ID) VALUES (
    S_WORKFLOW_ELEMENT_GROUP.NEXTVAL,
    'WorkflowGroup4',
    0,
    'AdminUser',
    to_date('15-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4')
  );

  INSERT INTO WORKFLOW_ELEMENT_GROUP (ID, NAME, VERSION_KEY, USER_UPDATE, LAST_UPDATE, WORKFLOW_ID) VALUES (
    S_WORKFLOW_ELEMENT_GROUP.NEXTVAL,
    'WorkflowGroup5',
    0,
    'AdminUser',
    to_date('15-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4')
  );

  INSERT INTO WORKFLOW_ELEMENT_GROUP (ID, NAME, VERSION_KEY, USER_UPDATE, LAST_UPDATE, WORKFLOW_ID) VALUES (
    S_WORKFLOW_ELEMENT_GROUP.NEXTVAL,
    'WorkflowGroup2',
    0,
    'AdminUser',
    to_date('15-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf3')
  );

  INSERT INTO WORKFLOW_ELEMENT_GROUP (ID, NAME, VERSION_KEY, USER_UPDATE, LAST_UPDATE, WORKFLOW_ID) VALUES (
    S_WORKFLOW_ELEMENT_GROUP.NEXTVAL,
    'WorkflowGroup3',
    0,
    'AdminUser',
    to_date('15-JAN-14', 'DD-MON-RR'),
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf3')
  );

--Insert Alert Definition
  INSERT INTO ALERT_DEFINITIONS (ID, NAME, DESCRIPTION, EVENT_TYPE, SEND_EMAIL, EMAIL_ADDRESSES, USER_UPDATE, LAST_UPDATE, VERSION_KEY, TASK_OVERDUE, TASK_CRITICAL_OVERDUE, TASK_UPCOMING)
  VALUES (
    S_ALERT_DEFINITIONS.NEXTVAL,
    'TEST_ALERT_DEF_1',
    'nodescr1',
    'jobFinishedSuccessfully',
    1,
    'no-reply@wolterskluwer.com',
    'SUPER_USER',
    to_timestamp('22-NOV-13 12.09.45.958000000 PM', 'DD-MON-RR HH.MI.SS.FF AM'),
    0,
    null,
    null,
    null
  );

  INSERT INTO ALERT_DEFINITIONS (ID, NAME, DESCRIPTION, EVENT_TYPE, SEND_EMAIL, EMAIL_ADDRESSES, USER_UPDATE, LAST_UPDATE, VERSION_KEY, TASK_OVERDUE, TASK_CRITICAL_OVERDUE, TASK_UPCOMING)
  VALUES (
    S_ALERT_DEFINITIONS.NEXTVAL,
    'TEST_ALERT_DEF_2',
    'nodescr2',
    'upcomingTask',
    1,
    'no-reply@wolterskluwer.com',
    'SUPER_USER',
    to_timestamp('22-NOV-13 12.09.45.958000000 PM', 'DD-MON-RR HH.MI.SS.FF AM'),
    0,
    null,
    null,
    'Days_1'
  );

  INSERT INTO ALERT_DEFINITIONS (ID, NAME, DESCRIPTION, EVENT_TYPE, SEND_EMAIL, EMAIL_ADDRESSES, USER_UPDATE, LAST_UPDATE, VERSION_KEY, TASK_OVERDUE, TASK_CRITICAL_OVERDUE, TASK_UPCOMING)
  VALUES (
    S_ALERT_DEFINITIONS.NEXTVAL,
    'TEST_ALERT_DEF_3',
    'nodescr3',
    'dueTask',
    1,
    'no-reply@wolterskluwer.com',
    'SUPER_USER',
    to_timestamp('22-NOV-13 12.09.45.958000000 PM', 'DD-MON-RR HH.MI.SS.FF AM'),
    0,
    null,
    null,
    null
  );

  INSERT INTO ALERT_DEFINITIONS (ID, NAME, DESCRIPTION, EVENT_TYPE, SEND_EMAIL, EMAIL_ADDRESSES, USER_UPDATE, LAST_UPDATE, VERSION_KEY, TASK_OVERDUE, TASK_CRITICAL_OVERDUE, TASK_UPCOMING)
  VALUES (
    S_ALERT_DEFINITIONS.NEXTVAL,
    'TEST_ALERT_DEF_4',
    'nodescr4',
    'overdueTask',
    1,
    'no-reply@wolterskluwer.com',
    'SUPER_USER',
    to_timestamp('22-NOV-13 12.09.45.958000000 PM', 'DD-MON-RR HH.MI.SS.FF AM'),
    0,
    'Hours_4',
    'Hours_7',
    null
  );

  INSERT INTO ALERT_DEFINITIONS (ID, NAME, DESCRIPTION, EVENT_TYPE, SEND_EMAIL, EMAIL_ADDRESSES, USER_UPDATE, LAST_UPDATE, VERSION_KEY, TASK_OVERDUE, TASK_CRITICAL_OVERDUE, TASK_UPCOMING)
  VALUES (
    S_ALERT_DEFINITIONS.NEXTVAL,
    'TEST_ALERT_DEF_5',
    'nodescr5',
    'jobFinishedWithErrors',
    1,
    'no-reply@wolterskluwer.com',
    'SUPER_USER',
    to_timestamp('22-NOV-13 12.09.45.958000000 PM', 'DD-MON-RR HH.MI.SS.FF AM'),
    0,
    null,
    null,
    null
  );

  INSERT INTO ALERT_DEFINITIONS (ID, NAME, DESCRIPTION, EVENT_TYPE, SEND_EMAIL, EMAIL_ADDRESSES, USER_UPDATE, LAST_UPDATE, VERSION_KEY, TASK_OVERDUE, TASK_CRITICAL_OVERDUE, TASK_UPCOMING)
  VALUES (
    S_ALERT_DEFINITIONS.NEXTVAL,
    'TEST_ALERT_DEF_6',
    'nodescr6',
    'jobFailed',
    1,
    'no-reply@wolterskluwer.com',
    'SUPER_USER',
    to_timestamp('22-NOV-13 12.09.45.958000000 PM', 'DD-MON-RR HH.MI.SS.FF AM'),
    0,
    null,
    null,
    null
  );

  INSERT INTO ALERT_DEFINITIONS (ID, NAME, DESCRIPTION, EVENT_TYPE, SEND_EMAIL, EMAIL_ADDRESSES, USER_UPDATE, LAST_UPDATE, VERSION_KEY, TASK_OVERDUE, TASK_CRITICAL_OVERDUE, TASK_UPCOMING)
  VALUES (
    S_ALERT_DEFINITIONS.NEXTVAL,
    'TEST_ALERT_DEF_7',
    'nodescr7',
    'jobErrors',
    1,
    'no-reply@wolterskluwer.com',
    'SUPER_USER',
    to_timestamp('22-NOV-13 12.09.45.958000000 PM', 'DD-MON-RR HH.MI.SS.FF AM'),
    0,
    null,
    null,
    null
  );

--Insert Task Definition

-- ========= 1 =========
  SELECT
    S_DEFINITION.NEXTVAL
  INTO myId
  FROM DUAL;
  INSERT INTO WORKFLOW_ELEMENT (ID, NAME, DESCRIPTION, WORKFLOW_ID, DEFINITION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE, EVENT_ID) VALUES (
    myId,
    'TEST_TASK_DEF1',
    'nodescr1',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    1,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR HH.MI.SSXFF AM'),
    null,
    (SELECT
       ID
     FROM CUSTOM_EVENT
     WHERE NAME = 'CUSTOMEVENT4')
  );

  SELECT
    S_NAVIGATION.NEXTVAL
  INTO navigationId
  FROM DUAL;

  INSERT INTO ABSTRACT_NAVIGATION (ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY, NAVIGATION_TYPE) VALUES (
    navigationId,
    null,
    to_date('10-JAN-14', 'DD-MON-RR'),
    0,
    1
  );

  INSERT INTO DEFAULT_NAVIGATION (UC_NAME, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY, WEB_APPLICATION_ADDRESS) VALUES (
    null,
    navigationId,
    null,
    to_timestamp('10-JAN-14 11.55.48.990000000 AM', 'DD-MON-RR HH.MI.SS.FF AM'),
    1,
    null
  );

  INSERT INTO TASK_DEFINITION (ID, USER_ID, ROLE_ID, ESTIMATE, NAVIGATION_ID, REVIEWER_ID) VALUES (
    myId,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'test'),
    null,
    1,
    navigationId,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'testUser1')
  );

-- ========= 2 =========
  SELECT
    S_DEFINITION.NEXTVAL
  INTO myId
  FROM DUAL;
  INSERT INTO WORKFLOW_ELEMENT (ID, NAME, DESCRIPTION, WORKFLOW_ID, DEFINITION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE, EVENT_ID) VALUES (
    myId,
    'TEST_TASK_DEF2',
    'nodescr2',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    1,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR HH.MI.SSXFF AM'),
    null,
    (SELECT
       ID
     FROM CUSTOM_EVENT
     WHERE NAME = 'CUSTOMEVENT5'
    )
  );

  SELECT
    S_NAVIGATION.NEXTVAL
  INTO navigationId
  FROM DUAL;

  INSERT INTO ABSTRACT_NAVIGATION (ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY, NAVIGATION_TYPE) VALUES (
    navigationId,
    null,
    to_date('10-JAN-14', 'DD-MON-RR'),
    0,
    1
  );

  INSERT INTO DEFAULT_NAVIGATION (UC_NAME, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY, WEB_APPLICATION_ADDRESS) VALUES (
    null,
    navigationId,
    null,
    to_timestamp('10-JAN-14 11.55.48.990000000 AM', 'DD-MON-RR HH.MI.SS.FF AM'),
    1,
    null
  );

  INSERT INTO TASK_DEFINITION (ID, USER_ID, ROLE_ID, ESTIMATE, NAVIGATION_ID, REVIEWER_ID) VALUES (
    myId,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'test'),
    null,
    1,
    navigationId,
    (SELECT
       ID
     FROM AUTH_USER
     WHERE NAME = 'testUser1')
  );

-- ========= 3 =========
  SELECT
    S_DEFINITION.NEXTVAL
  INTO myId
  FROM DUAL;

  INSERT INTO WORKFLOW_ELEMENT (ID, NAME, DESCRIPTION, WORKFLOW_ID, DEFINITION_TYPE, VERSION_KEY, LAST_UPDATE, USER_UPDATE, EVENT_ID) VALUES (
    myId,
    'TEST_TASK_DEF3',
    'nodescr3',
    (SELECT
       ID
     FROM WORKFLOW
     WHERE NAME = 'wf4'),
    1,
    -1,
    to_timestamp('22-SEP-11', 'DD-MON-RR HH.MI.SSXFF AM'),
    null,
    (SELECT
       ID
     FROM CUSTOM_EVENT
     WHERE NAME = 'CUSTOMEVENT6')
  );

  SELECT
    S_NAVIGATION.NEXTVAL
  INTO navigationId
  FROM DUAL;

  INSERT INTO ABSTRACT_NAVIGATION (ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY, NAVIGATION_TYPE) VALUES (
    navigationId,
    null,
    to_date('10-JAN-14', 'DD-MON-RR'),
    0,
    1
  );

  INSERT INTO DEFAULT_NAVIGATION (UC_NAME, ID, USER_UPDATE, LAST_UPDATE, VERSION_KEY, WEB_APPLICATION_ADDRESS) VALUES (
    null,
    navigationId,
    null,
    to_timestamp('10-JAN-14 11.55.48.990000000 AM', 'DD-MON-RR HH.MI.SS.FF AM'),
    1,
    null
  );

  INSERT INTO TASK_DEFINITION (ID, USER_ID, ROLE_ID, ESTIMATE, NAVIGATION_ID, REVIEWER_ID) VALUES (myId, (SELECT
                                                                                                            ID
                                                                                                          FROM AUTH_USER
                                                                                                          WHERE NAME = 'test'), null, 1, navigationId, (SELECT
                                                                                                                                                          ID
                                                                                                                                                        FROM AUTH_USER
                                                                                                                                                        WHERE NAME = 'testUser1'));

END;
/

