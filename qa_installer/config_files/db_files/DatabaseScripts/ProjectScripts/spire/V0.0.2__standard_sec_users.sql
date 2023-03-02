

Insert into public.sec_roles values ('group_management','GROUP_MANAGEMENT:ACTIVATE,GROUP_MANAGEMENT:ADD,GROUP_MANAGEMENT:DEACTIVATE,GROUP_MANAGEMENT:DELETE,GROUP_MANAGEMENT:EDIT,GROUP_MANAGEMENT:MANAGE,GROUP_MANAGEMENT:VIEW');
Insert into public.sec_roles values ('registration_management','REGISTRATION_MANAGEMENT:ACTIVATE,REGISTRATION_MANAGEMENT:ADD,REGISTRATION_MANAGEMENT:DEACTIVATE,REGISTRATION_MANAGEMENT:DELETE,REGISTRATION_MANAGEMENT:EDIT,REGISTRATION_MANAGEMENT:MANAGE,REGISTRATION_MANAGEMENT:VIEW');
Insert into public.sec_roles values ('member_management','MEMBER_MANAGEMENT:ACTIVATE,MEMBER_MANAGEMENT:ADD,MEMBER_MANAGEMENT:DEACTIVATE,MEMBER_MANAGEMENT:DELETE,MEMBER_MANAGEMENT:EDIT,MEMBER_MANAGEMENT:MANAGE,MEMBER_MANAGEMENT:VIEW');
Insert into public.sec_roles values ('report_management','REPORT_MANAGEMENT:ACTIVATE,REPORT_MANAGEMENT:ADD,REPORT_MANAGEMENT:DEACTIVATE,REPORT_MANAGEMENT:DELETE,REPORT_MANAGEMENT:EDIT,REPORT_MANAGEMENT:MANAGE,REPORT_MANAGEMENT:VIEW');
Insert into public.sec_roles values ('system_administration','SYSTEM_ADMINISTRATION:ACTIVATE,SYSTEM_ADMINISTRATION:ADD,SYSTEM_ADMINISTRATION:DEACTIVATE,SYSTEM_ADMINISTRATION:DELETE,SYSTEM_ADMINISTRATION:EDIT,SYSTEM_ADMINISTRATION:MANAGE,SYSTEM_ADMINISTRATION:VIEW');
Insert into public.sec_roles values ('analysis_management','ANALYSIS_MANAGEMENT:ACTIVATE,ANALYSIS_MANAGEMENT:ADD,ANALYSIS_MANAGEMENT:DEACTIVATE,ANALYSIS_MANAGEMENT:DELETE,ANALYSIS_MANAGEMENT:EDIT,ANALYSIS_MANAGEMENT:MANAGE,ANALYSIS_MANAGEMENT:VIEW');

Insert into public.sec_user values ('d988e4f4-5603-4567-aa41-55822ebae218','2021-02-16 09:11:36.53','SYSTEM','system','STATUS_NEW',null,'FE','2021-02-16 09:11:38.561',null,0,null,'SYSTEM',null,null,'c1aa774d69f462d953c3eded60c92fb6','ADMINISTRATION',null,'Ajqr53wg3c8Crzhq0RevgqWDC49zyOYNEKYEQYdRMO0=',false,'STATUS_ACTIVE',null);
Insert into public.sec_user values ('0b237d60-e539-4d40-85f9-9242b588e7eb','2021-02-16 09:11:36.553','SYSTEM','member','STATUS_NEW',null,'FE','2021-02-16 09:11:38.861',null,0,null,'MEMBER',null,null,'423a7fab7cc5d8bce87a314a1a5bc5ec','MANAGEMENT',null,'nCxUFMIydn1jtY0YMprR3p8lxQfP7cbaMct9nLE5bKs=',false,'STATUS_ACTIVE',null);
Insert into public.sec_user values ('404d1b11-c07b-4fbe-baa8-c69fbd43e572','2021-02-16 09:11:36.559','SYSTEM','report','STATUS_NEW',null,'FE','2021-02-16 09:11:39.17',null,0,null,'REPORT',null,null,'68d61b3e73efed105e396e02ff8779d0','MANAGEMENT',null,'1VijP7ZE9F7f1UKfMBtcPwcI/uhGXWSGQQM2KimlOfw=',false,'STATUS_ACTIVE',null);
Insert into public.sec_user values ('608093bb-18bb-4026-b2bc-1588aa611b08','2021-02-16 09:11:36.552','SYSTEM','registration','STATUS_NEW',null,'FE','2021-02-16 09:11:39.455',null,0,null,'REGISTRATION',null,null,'91bc7abeddf7f5cf8cdbd3a811cecec7','MANAGEMENT',null,'t89+a02dgXgyaw2j5/omXolvry0pjl38k2GCO/v5QLg=',false,'STATUS_ACTIVE',null);
Insert into public.sec_user values ('fb8bfd12-4c16-41fc-b616-21c2c6b54c94','2021-02-16 09:11:36.56','SYSTEM','analysis','STATUS_NEW',null,'FE','2021-02-16 09:11:39.728',null,0,null,'ANALYSIS',null,null,'2fe6a2736c219b19db8e6dc2c7676e73','MANAGEMENT',null,'ZJ74VIrs8Ezq7zp13ygENbQpuLD8xW2nA9ihNKWeI/8=',false,'STATUS_ACTIVE',null);
Insert into public.sec_user values ('73ba9666-9e1f-435b-ac8b-4aad3be9f867','2021-02-16 09:11:36.558','SYSTEM','group','STATUS_NEW',null,'FE','2021-02-16 09:11:40',null,0,null,'GROUP',null,null,'ce07712b42e1f793afeffee5b4cde0bb','MANAGEMENT',null,'2NCHodeKLJQCyLO4MMBHCpKLmmj2H4UMGSeG8GtcKyU=',false,'STATUS_ACTIVE',null);

Insert into public.sec_User_roles values ('d988e4f4-5603-4567-aa41-55822ebae218','system_administration');
Insert into public.sec_User_roles values ('0b237d60-e539-4d40-85f9-9242b588e7eb','member_management');
Insert into public.sec_User_roles values ('404d1b11-c07b-4fbe-baa8-c69fbd43e572','report_management');
Insert into public.sec_User_roles values ('608093bb-18bb-4026-b2bc-1588aa611b08','registration_management');
Insert into public.sec_User_roles values ('fb8bfd12-4c16-41fc-b616-21c2c6b54c94','analysis_management');
Insert into public.sec_User_roles values ('73ba9666-9e1f-435b-ac8b-4aad3be9f867','group_management');