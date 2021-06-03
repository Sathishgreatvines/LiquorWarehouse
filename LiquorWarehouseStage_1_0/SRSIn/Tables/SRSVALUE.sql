﻿CREATE TABLE SRSIn.[SRSVALUE]
(
  RECORDTYPE  varchar(6)  NOT NULL,
  FIELD       varchar(10) NOT NULL,
  FIELDNAME   varchar(20) NOT NULL,
  CODE        varchar(3)  NOT NULL,
  [DESC]      varchar(50) NOT NULL,
	[FILENAME] VARCHAR(100) NOT NULL,
	[SEQID]      INT           IDENTITY (1, 1) NOT NULL
)
