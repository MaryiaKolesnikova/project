CREATE TABLE GROSS (
    DATE_ACT DATE,
    SUB_ID BIGINT PRIMARY KEY,
    PP_ID BIGINT,
    CUSTOMER_TYPE VARCHAR(50),
    REACTIVATION SMALLINT
);
CREATE TABLE TARIFF (
    PP_ID BIGINT,
    PP_NAME VARCHAR(100),
    SUB_ID BIGINT,
    PP_START_DATE TIMESTAMP(0),
    PP_END_DATE TIMESTAMP(0),
    PRIMARY KEY (PP_ID, SUB_ID),
    FOREIGN KEY (SUB_ID) REFERENCES GROSS(SUB_ID)
);
CREATE TABLE SERVICE (
    SERVICE_START_DATE TIMESTAMP(0),
    SERVICE_STOP_DATE TIMESTAMP(0),
    SUB_ID BIGINT,
    SERVICE_NAME VARCHAR(250),
    PRIMARY KEY (SERVICE_START_DATE, SUB_ID),
    FOREIGN KEY (SUB_ID) REFERENCES GROSS(SUB_ID)
);
CREATE TABLE SUBSCRIBER (
    MONTH DATE,
    COMPANY_NAME VARCHAR(100),
    SUB_ID BIGINT,
    CUSTOMER_TYPE VARCHAR(50),
    STATUS SMALLINT,
    PP_TYPE_ID VARCHAR(50),
    PRIMARY KEY (MONTH, SUB_ID),
    FOREIGN KEY (SUB_ID) REFERENCES GROSS(SUB_ID)
);
INSERT INTO GROSS (DATE_ACT, SUB_ID, PP_ID, CUSTOMER_TYPE, REACTIVATION) VALUES
('2023-12-01', 1, 101, 'Business', 0),
('2023-12-02', 2, 102, 'Business', 0),
('2023-12-03', 3, 103, 'Business', 0),
('2023-12-04', 4, 104, 'Business', 0),
('2023-12-05', 5, 105, 'Business', 0),
('2023-12-06', 6, 106, 'Business', 0),
('2023-12-07', 7, 107, 'Business', 0),
('2023-12-08', 8, 108, 'Business', 0),
('2023-12-09', 9, 109, 'Business', 0),
('2023-12-10', 10, 110, 'Business', 0),
('2023-12-11', 11, 111, 'Business', 0),
('2023-12-12', 12, 112, 'Business', 0),
('2023-12-13', 13, 113, 'Business', 0),
('2023-12-14', 14, 114, 'Business', 0),
('2023-12-15', 15, 115, 'Business', 0);
INSERT INTO TARIFF (PP_ID, PP_NAME, SUB_ID, PP_START_DATE, PP_END_DATE) VALUES
(101, 'Бизнес-план', 1, '2023-12-01 00:00:00', '2999-01-01 00:00:00'),
(102, 'Бизнес-план 1.0', 2, '2023-12-02 00:00:00', '2999-01-01 00:00:00'),
(103, 'Бизнес-план 2.0', 3, '2023-12-03 00:00:00', '2999-01-01 00:00:00'),
(104, 'Бизнес-план 3.0', 4, '2023-12-04 00:00:00', '2999-01-01 00:00:00'),
(105, 'Бизнес-план 4.0', 5, '2023-12-05 00:00:00', '2999-01-01 00:00:00'),
(106, 'Бизнес-план', 6, '2023-12-06 00:00:00', '2999-01-01 00:00:00'),
(107, 'Бизнес-план 1.0', 7, '2023-12-07 00:00:00', '2999-01-01 00:00:00'),
(108, 'Бизнес-план 2.0', 8, '2023-12-08 00:00:00', '2999-01-01 00:00:00'),
(109, 'Бизнес-план 3.0', 9, '2023-12-09 00:00:00', '2999-01-01 00:00:00'),
(110, 'Бизнес-план 4.0', 10, '2023-12-10 00:00:00', '2999-01-01 00:00:00'),
(111, 'Бизнес-план', 11, '2023-12-11 00:00:00', '2999-01-01 00:00:00'),
(112, 'Бизнес-план 1.0', 12, '2023-12-12 00:00:00', '2999-01-01 00:00:00'),
(113, 'Бизнес-план 2.0', 13, '2023-12-13 00:00:00', '2999-01-01 00:00:00'),
(114, 'Бизнес-план 3.0', 14, '2023-12-14 00:00:00', '2999-01-01 00:00:00'),
(115, 'Бизнес-план 4.0', 15, '2023-12-15 00:00:00', '2999-01-01 00:00:00');
INSERT INTO SERVICE (SERVICE_START_DATE, SERVICE_STOP_DATE, SUB_ID, SERVICE_NAME) VALUES
('2023-12-01 00:00:00', '2999-01-01 00:00:00', 1, 'Безлимитный интернет 512'),
('2023-12-02 00:00:00', '2999-01-01 00:00:00', 2, 'Безлимитный интернет 1'),
('2023-12-03 00:00:00', '2999-01-01 00:00:00', 3, 'Безлимитный интернет 2'),
('2023-12-04 00:00:00', '2999-01-01 00:00:00', 4, 'Безлимитный интернет 512'),
('2023-12-05 00:00:00', '2999-01-01 00:00:00', 5, 'Безлимитный интернет 1'),
('2023-12-06 00:00:00', '2999-01-01 00:00:00', 6, 'Безлимитный интернет 2'),
('2023-12-07 00:00:00', '2999-01-01 00:00:00', 7, 'Безлимитный интернет 512'),
('2023-12-08 00:00:00', '2999-01-01 00:00:00', 8, 'Безлимитный интернет 1'),
('2023-12-09 00:00:00', '2999-01-01 00:00:00', 9, 'Безлимитный интернет 2'),
('2023-12-10 00:00:00', '2999-01-01 00:00:00', 10, 'Безлимитный интернет 512'),
('2023-12-11 00:00:00', '2999-01-01 00:00:00', 11, 'Безлимитный интернет 1'),
('2023-12-12 00:00:00', '2999-01-01 00:00:00', 12, 'Безлимитный интернет 2'),
('2023-12-13 00:00:00', '2999-01-01 00:00:00', 13, 'Безлимитный интернет 512'),
('2023-12-14 00:00:00', '2999-01-01 00:00:00', 14, 'Безлимитный интернет 1'),
('2023-12-15 00:00:00', '2999-01-01 00:00:00', 15, 'Безлимитный интернет 2');
INSERT INTO SUBSCRIBER (MONTH, COMPANY_NAME, SUB_ID, CUSTOMER_TYPE, STATUS, PP_TYPE_ID) VALUES
('2023-12-31', 'Компания А', 1, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания Б', 2, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания В', 3, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания Г', 4, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания Д', 5, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания Е', 6, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания Ж', 7, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания З', 8, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания И', 9, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания К', 10, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания Л', 11, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания М', 12, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания Н', 13, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания О', 14, 'Business', 1, 'Voice'),
('2023-12-31', 'Компания П', 15, 'Business', 1, 'Voice');
WITH ActiveSubscribers AS (
    SELECT 
        G.DATE_ACT AS ActivationDate,
        G.SUB_ID,
        T.PP_NAME AS CurrentTariffPlan,
        S.SERVICE_NAME AS CurrentService,
        SUB.COMPANY_NAME,
        COUNT(*) OVER (PARTITION BY SUB.COMPANY_NAME) AS ActiveVoiceSubscribers
    FROM 
        GROSS G
    JOIN 
        TARIFF T ON G.SUB_ID = T.SUB_ID AND T.PP_END_DATE = '2999-01-01 00:00:00'
    JOIN 
        SERVICE S ON G.SUB_ID = S.SUB_ID AND S.SERVICE_STOP_DATE = '2999-01-01 00:00:00'
    JOIN 
        SUBSCRIBER SUB ON G.SUB_ID = SUB.SUB_ID
    WHERE 
        G.DATE_ACT BETWEEN '2023-12-01' AND '2023-12-31'
        AND G.REACTIVATION = 0
        AND SUB.CUSTOMER_TYPE = 'Business'
        AND T.PP_NAME IN ('Бизнес-план', 'Бизнес-план 1.0', 'Бизнес-план 2.0', 'Бизнес-план 3.0', 'Бизнес-план 4.0')
        AND S.SERVICE_NAME IN ('Безлимитный интернет 512', 'Безлимитный интернет 1', 'Безлимитный интернет 2')
)
SELECT 
    ActivationDate,
    SUB_ID,
    CurrentTariffPlan,
    CurrentService,
    COMPANY_NAME,
    ActiveVoiceSubscribers
FROM 
    ActiveSubscribers;
