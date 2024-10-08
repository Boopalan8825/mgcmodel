namespace mgc.srv;

using {mgc.db as MGCdb} from '../db/mgcdb/Database';

using {WBS} from '../db/mgcdb/Database';

@cds.query.limit: { default: 1000, max: 3000 } @(requires:'authenticated-user')
service MgcDbService @(path : '/mgcdb-srv') @(impl : '/srv/handlers/mgcdb.js') {

@cds.query.limit: 3000
 entity Employees as projection on MGCdb.Employee {  
     *
} where DELETED = false;

 entity Job as projection on MGCdb.Jobs {
      *
} where DELETED = false and Status = 'Active';


 entity Section as projection on MGCdb.Sections {
      *
} where DELETED = false and Status = 'Active';

@cds.query.limit: 3000
 entity Phase as projection on MGCdb.Phases {
      *
} where DELETED = false and Status = 'Active';

@cds.query.limit: 3000
 entity WorkOrder as projection on MGCdb.WorkOrder {
      *
} where DELETED = false;

 entity Equipment as projection on MGCdb.Equipment {
      *
} where DELETED = false;

 entity TimeSheetDetails as projection on MGCdb.TimeSheetDetails {
      *
} where DELETED = false;

 entity TimeSheetDetailsCpi as projection on MGCdb.TimeSheetDetails {
      *
};

 entity PayRollHeader as projection on MGCdb.PayRollHeader {
      *
} where DELETED = false;

 entity Activities as projection on MGCdb.Activities {
      *
} where DELETED = false;

 entity RtOt as projection on MGCdb.RtOt {
      *
} where DELETED = false;

 entity CostCenter as projection on MGCdb.CostCenter {
      *
} where DELETED = false;

@cds.query.limit: 3000
@readonly
 entity WbsElement  as projection on WBS{
      *
} where STATUS = 'Active' and STATUS_1 = 'Active' and STATUS_2 = 'Active';

@open
type object {};
function RTOTCalulation(EmployeeID : String, AppName: String,PayPeriodBeginDate: String,PayPeriodEndDate: String,OtFrequency: String,Date:String) returns array of object;

}

