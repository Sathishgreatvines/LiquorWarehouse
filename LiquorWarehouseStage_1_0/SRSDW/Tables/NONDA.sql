﻿CREATE TABLE SRSDW.[NONDA]
(
  DISTID          varchar(8)    NOT NULL,
  DISTNM          varchar(30)    NOT NULL,
  NODT            varchar(8)    NOT NULL,
  INRANK          varchar(13)    NOT NULL,
  [DATEADDED]     [DATETIME] NOT NULL,
  [LASTUPDATED]   [DATETIME] NOT NULL,
  [SOURCESTATUS]  VARCHAR (10) NOT NULL,
	[SRSDWHash] varchar(32) null, 
  [FILENAME]      VARCHAR(100) NOT NULL,
  CONSTRAINT [PK_NONDA] PRIMARY KEY (DISTID)
)
