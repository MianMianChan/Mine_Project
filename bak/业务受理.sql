select * from "NETOFFICE"."SYS_RECEIVE_MENU" where url like '1106'; --角色管理菜单

select * from "NETOFFICE"."SYS_BUSINESS_TYPE" where code='1106'; --业务受理配置表

select * from sys_dictionary where ID_CHILD_CODE like '24%' --字典表

select * from st_workflow --流程表

select * from "NETOFFICE"."UT_MODE" where code='1106'; --附件目录配置表

select * from "NETOFFICE"."XT_WORKFLOW_SETTING" where BUSINESS_ID='1106'; --也是附件的表，写新业务的时候照到配就行了

select * from "NETOFFICE"."UT_CATEGORY"; --电子附件地址

--region 附件文件
select attach_id from "NETOFFICE"."UT_MODE_BIZDETAIL";

select * from ut_file where mode_file_id='B845BE25A9994133A97A974B6C055D61'
--endregion

--region ATP菜单问题
--1.通过用户id，到数据库查询该用户所有角色
select t.*,t.rowid  from atp.st_role_menu t, atp.st_employee_role s  where t.role_id = s.role_id 
and t.mis_id = s.mis_id  and s.employee_id ='B55F8964-7DAB-CF9D-6E3A-8E92FB2CDDD2' and s.mis_id ='a'
--endregion

select * from st_instance --起流程的表

select * from xt_instance --起流程的表

select wiid,userid,* from st_work_item --流程节点

select * from st_form  -- 表单

--用户
select * from "NETOFFICE"."ST_USER_PWD";
select * from st_user 


--坐标导入
SELECT * FROM UT_SP_SURVEY_SPECIFICATION ; --件

SELECT * FROM UT_SP_SURVEY_PLOT ; -- 地块

SELECT * FROM UT_SP_SURVEY_PLOT_PNT; -- 坐标


SELECT "NETOFFICE"."GETITEMSTATUS"(sx.IID,'oa');--业务状态
select "NETOFFICE"."GETSTAGE"('202112150000066');--历史遗留阶段

select QT_CTN_CODE,NA_CTN_NAME from sv_md_canton_code_sc		--行政区划

select t.*,t.rowid from st_static_resource t where wid= --静态资源

ID  VARCHAR2(36)   SYS_GUID()
IID VARCHAR2(36)
INPUT_INDEX  NUMBER(5)
CREAT_TIME  DATEIME  SYSDATE

delete from st_instance WHERE IID IN (select IID from xt_instance where item_type = '2404');
delete  from st_work_item  WHERE IID IN (select IID from xt_instance where item_type = '2404');
delete  from st_work_item_hist  WHERE IID IN (select IID from xt_instance where item_type = '2404');
delete  from xt_instance where item_type = '2404';

