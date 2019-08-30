﻿CREATE TABLE [GDOut].[GD_Geography_Dim]
(
	[Geography Dim Id] 				    char(18) NOT NULL,
	[Geography Dim Name]	  		  nvarchar(200) NULL,
	[Geography Dim Granularity]		varchar(20) NULL,
	[Geography Dim URL]    			  nvarchar(250) NULL,
	[Geography Hierarchy Dim Id]	char(18) NULL,
	[Created Date]  					    char(10) NULL,
	[Modified Date]       				char(10) NULL,
	[Company Key]	        				varchar(50) NULL,
	[Company Name]	       				varchar(50) NULL,
	[Division Key] 		      			varchar(20) NULL,
	[Division Name] 		      		varchar(50) NULL,
	[Region Key] 			        		varchar(50) NULL,
	[Region Name] 					      varchar(50) NULL,
	[Territory Id]	      				char(18) NULL,
	[Territory URL]       				nvarchar(250) NULL,
	[Territory Key] 		      		varchar(50) NULL,
	[Territory Name] 			      	nvarchar(200) NULL,
	[Territory Custom 1] 		  	  nvarchar(200) NULL,
	[Territory Custom 2]	 	    	nvarchar(200) NULL,
	[Distributor Owner Id] 			  char(18) NULL,
	[Distributor Owner URL] 		  nvarchar(250) NULL,
	[Distributor Owner Last Name] 	nvarchar(75) NULL,
	[Distributor Owner First Name] 	nvarchar(75) NULL,
	[Distributor Owner Full Name] 	nvarchar(250) NULL,
	[Distributor Owner Email] 		nvarchar(300) NULL,
	[Distributor Id]	 	      		char(18) NULL,
	[Distributor Level] 	    		varchar(20) NULL,
	[Distributor URL] 			    	nvarchar(250) NULL,
	[Distributor URL2] 		    		nvarchar(250) NULL,
	[Distributor Account Key]	   	varchar(50) NULL,
	[Distributor Name] 			    	nvarchar(200) NULL,
	[Distributor Name Number]	   	nvarchar(300) NULL,
	[Distributor Record Type] 		char(20) NULL,
	[Distributor Street]	     		nvarchar(250) NULL,
	[Distributor City] 		    		nvarchar(100) NULL,
	[Distributor State] 	    		nvarchar(50) NULL,
	[Distributor Zip]	 		      	nvarchar(20) NULL,
	[Distributor Country]	 	    	nvarchar(100) NULL,
	[Distributor County] 	    		nvarchar(200) NULL,
	[Distributor Phone] 			    varchar(100) NULL,
	[Distributor Key Account]	 	  varchar(50) NULL,
	[Distributor Groups]	 		    nvarchar(100) NULL,
	[Distributor Custom 1]   			nvarchar(255) NULL,
	[Distributor Custom 2] 	  		nvarchar(255) NULL,
	[Distributor Custom 3]	 	  	nvarchar(255) NULL,
	[Distributor Custom 4] 			  nvarchar(255) NULL,
	[Distributor Custom 5]  			nvarchar(255) NULL,
	[Distributor Description] 		nvarchar(300) NULL,
	[Distributor Custom Checkbox 1] nvarchar(100) NULL,
	[Distributor Custom Checkbox 2] nvarchar(100) NULL,
	[Distributor Custom 6]   			nvarchar(255) NULL,
	[Distributor Custom 7] 	  		nvarchar(255) NULL,
	[Distributor Custom 8] 		  	nvarchar(255) NULL,
	[Distributor Custom 9]  			nvarchar(255) NULL,
	[Distributor Custom 10]   		nvarchar(255) NULL,
	[Distributor Custom Date 1]		char(10) NULL,
	[Distributor Custom Date 2] 	char(10) NULL,
	[Distributor Source File] 		nvarchar(300) NULL,
	[Region Custom 1]	       			nvarchar(200) NULL,
	[Region Custom 2]    		  		nvarchar(200) NULL,
	[Division Custom 1]     			nvarchar(200) NULL,
	[Division Custom 2] 	    		nvarchar(200) NULL,
	[Company Custom 1]	   		  	nvarchar(200) NULL,
	[Company Custom 2] 		    		nvarchar(200) NULL,
	[Distributor Shipping Street] nvarchar(250) NULL,
	[Distributor Shipping City] 	nvarchar(50) NULL,
	[Distributor Shipping State] 	nvarchar(50) NULL,
	[Distributor Shipping Zip] 		nvarchar(50) NULL,
	[Distributor Shipping Country] 	nvarchar(50) NULL,
	[Distributor Rank]	   			varchar(10) NULL,
	[Territory Custom 3]	   		nvarchar(200) NULL,
	[Territory Custom 4] 		  	nvarchar(200) NULL,
	[Territory Custom 5]   			nvarchar(200) NULL,
	[Division Custom 3]	 	  		nvarchar(200) NULL,
	[Division Custom 4] 		  	nvarchar(200) NULL,
	[Division Custom 5] 			  nvarchar(200) NULL,
	[Distributor Owner Dim Id]	char(18) NULL,
	[Distributor Zip5] 	  			char(5) NULL,
	[Distributor Shipping Zip5] char(5) NULL,
	[Company Id]	 	      			char(18) NULL,
	[Division Id] 	    				char(18) NULL,
	[Region Id] 			      		char(18) NULL,
	[Create_Date_Id] 			    	char(5) NULL, 
    CONSTRAINT [PK_GD_Geography_Dim] PRIMARY KEY ([Geography Dim Id])  
)
