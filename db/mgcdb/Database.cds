//namespace mgc.db;

using {
    managed,
    temporal,
    cuid
} from '@sap/cds/common';

using {mgc.util.aspects as localaspects} from '../utils/Aspects';

context mgc.db {
    entity Employee : managed, localaspects.common {
        key ID                          : String(10);
        key LoginName                   : String(10);
        key FirstName                   : String(30);
        key LastName                    : String(30);
            Status                      : String(10) default '';
            ResourceType                : String(32) default '';
            Ot_Threshold                : String(6) default '';
            Ot_Frequency                : String(20) default '';
            JobTitle                    : String(40) default '';
            FirstDay                    : String(10) default '';
            LastDay                     : String(10) default '';
            Email                       : String(40) default '';
            Phone                       : String(15) default '';
            Locale                      : String(15) default '';
            CompanyCode                 : String(20) default '';
            CompanyName                 : String(50) default '';
            CostCenter                  : String(20) default '';
            PositionManagerEmail        : String(40) default '';
            PositionManagerID           : String(40) default '';
            PositionManagerName         : String(40) default '';
            PersonnelSubArea            : String(20) default '';
            PersonnelSubAreaDescription : String(51) default '';
            LocationCode                : String(20) default '';
            LocationCodeDescription     : String(51) default '';
            Province                    : String(20) default '';
            ProvinceDescription         : String(51) default '';
            JobRelationship             : String(40) default '';
            JobRelationshipEmail        : String(40) default '';
            CpiFlag                     : String(1) default '';
            Foreman                     : String(1) default '';

    }


    entity Jobs : managed, localaspects.common {
        key ID                  : String(30);
            Name                : String(51) default '';
            Status              : String(15) default '';
            Description         : String(40) default '';
            Permissions         : String(35) default '';
            ProjectManager      : String(75) default '';
            ProjectManagerEmail : String(120) default '';
            CompanyID           : String(4) default '';
            CompanyDescription  : String(25) default '';
            StartDate           : String(10) default '';
            ProfitCenter        : String(30) default '';
    }


    entity Sections : managed, localaspects.common {
        key ID                  : String(30);
            Name                : String(51) default '';
            Status              : String(15) default '';
            Description         : String(40) default '';
            Permissions         : String(35) default '';
            ProjectManager      : String(75) default '';
            ProjectManagerEmail : String(120) default '';
            CompanyID           : String(4) default '';
            CompanyDescription  : String(25) default '';
            StartDate           : String(10) default '';
            Jobs                : String(20) default '';
    }


    entity Phases : managed, localaspects.common {
        key ID                  : String(30);
            Name                : String(51) default '';
            Status              : String(15) default '';
            Description         : String(40) default '';
            Permissions         : String(35) default '';
            ProjectManager      : String(75) default '';
            ProjectManagerEmail : String(120) default '';
            CompanyID           : String(4) default '';
            CompanyDescription  : String(25) default '';
            StartDate           : String(10) default '';
            Section             : String(15) default '';
    }

    entity WorkOrder : managed, localaspects.common {
        key ID                     : String(23);
            Name                   : String(95) default '';
            Status                 : String(10) default '';
            Description            : String(130) default '';
            OrderType              : String(4) default '';
            OrderTypeDescription   : String(40) default '';
            Plant                  : String(4) default '';
            PlantDescription       : String(40) default '';
            CompanyCode            : String(4) default '';
            CompanyCodeDescription : String(40) default '';
            Date                   : String(10) default '';
    }

    entity Equipment : managed, localaspects.common {
        key ID              : String(20);
            LoginName       : String(20) default '';
            Status          : String(15) default '';
            LastName        : String(60) default '';
            PermissionLevel : String(25) default '';
            ResourceType    : String(9) default '';
            Description     : String(70) default '';
    }

    entity TimeSheetDetails : managed, localaspects.common {
        key ID                      : UUID;
        key AppName                 : String(10);
        key Date                    : String(10);
            EmployeeID              : String(10) default '';
            EmployeeName            : String(40) default '';
            EquipmentID             : String(10) default '';
            EquipmentDescription    : String(40) default '';
            Job                     : String(75) default '';
            JobDescription          : String(80) default '';
            Section                 : String(75) default '';
            SectionDescription      : String(80) default '';
            Phase                   : String(75) default '';
            PhaseDescription        : String(80) default '';
            WorkOrder               : String(75) default '';
            WorkorderDescription    : String(300) default '';
            CostCenter              : String(75) default '';
            PayCode                 : String(15) default '';
            InTime                  : String(15) default '';
            OutTime                 : String(15) default '';
            ActualInOutHrs          : String(8) default '';
            Qty                     : String(4) default '';
            UOM                     : String(10) default '';
            Position                : String(30) default '';
            PositionManagerName     : String(200) default '';
            PositionManagerEmail    : String(200) default '';
            ProjectManagerName      : String(200) default '';
            ProjectManagerEmail     : String(200) default '';
            SaveSubmitStatus        : String(30) default '';
            ManagerApprovalStatus   : String(25) default '';
            PayrollApprovalStatus   : String(10) default '';
            Activity                : String(75) default '';
            ReceivingUnitTruck      : String(10) default '';
            SendingUnitTrailer      : String(10) default '';
            TotalHours              : String(8) default '';
            PreviousHours           : String(8) default '';
            Comments                : String(300) default '';
            ApproverComments        : String(300) default '';
            PayrollComments         : String(100) default '';
            SalariedEmployee        : String(3) default '';
            PersonnelSubArea        : String(20) default '';
            LocationCode            : String(20) default '';
            ProfitCenter            : String(20) default '';
            MgrApprovalDate         : String(10) default '';
            MgrApprovalTime         : String(8) default '';
            PayrollApprDate         : String(10) default '';
            PayrollApprTime         : String(8) default '';
            PayPeriodBeginDate      : String(10) default '';
            PayPeriodEndDate        : String(10) default '';
            PayCheckIssueDate       : String(10) default '';
            ManagerApprovalName     : String(200) default '';
            ManagerApprovalEmail    : String(40) default '';
            PayrollApprovalName     : String(40) default '';
            PayrollApprovalEmail    : String(40) default '';
            RegularTime             : String(10) default '';
            OverTime                : String(10) default '';
            CompanyName             : String(75) default '';
            CompanyID               : String(20) default '';
            OtThreshold             : String(10) default '';
            UpdateIndicator         : String(1) default '';
            SequenceNo              : String(65) default '';
            PlannedStartTime        : String(10) default '';
            TotalHoursPercentage    : String(10) default '';
            ForemanID               : String(40) default '';
            ProjectcoordinatorEmail : String(40) default '';
            PayPeriodDescription    : String(40) default '';
            OtFrequency             : String(20) default '';
            isShopKioskEntry        : String(1) default '';
            isShopKioskEntryUpdated : String(1) default '';
    }

    entity PayRollHeader : managed, localaspects.common {
        key ID           : UUID;
            FromToDate   : String(10) default '';
            EmployeeID   : String(10) default '';
            EmployeeName : String(40) default '';
            Job          : String(23) default '';
            Section      : String(23) default '';
            Phase        : String(23) default '';
            WorkOrder    : String(10) default '';
            CostCenter   : String(10) default '';
            PayCode      : String(15) default '';
    }

    entity Activities : managed, localaspects.common {
        key ActivityID     : String(15);
        key PermissionID   : String(10);
            ActivityName   : String(15) default '';
            PermissionName : String(80) default '';
            Description    : String(40) default '';
            Status         : String(8) default '';
            CompanyCode    : String(10) default '';
    }

    entity RtOt : managed, localaspects.common {
        key Date         : String(10);
        key EmployeeID   : String(10);
            EmployeeName : String(40) default '';
            TotalHours   : String(8) default '';
            Rt           : String(10) default '';
            Ot           : String(10) default '';
    }

    entity CostCenter : managed, localaspects.common {
        key StartDate        : String(10);
        key CostcenterID     : String(32);
            CostcenterName   : String(90) default '';
            Description      : String(120) default '';
            Status           : String(128) default '';
            CostCenterManger : String(100) default '';
            ExternalID       : String(40) default '';
            LegalEntity      : String(38) default '';
            ApplicableforESG : String(38) default '';
    }
}


// @cds.persistence.calcview
// @cds.persistence.exists
// Entity MGC_DB_WBS {
// key     JobID: String(12)  @title: 'JobID: ID' ;
//         JobName: String(51)  @title: 'JobName: NAME' ;
//         SectionID: String(15)  @title: 'SectionID: ID_1' ;
//         SectionName: String(51)  @title: 'SectionName: NAME_1' ;
//         CompanyID: String(4)  @title: 'CompanyID: COMPANYID' ;
//         PhaseID: String(20)  @title: 'PhaseID: ID_2' ;
//         PhaseName: String(51)  @title: 'PhaseName: NAME_2' ;
// }


// @cds.persistence.calcview
// @cds.persistence.exists
// Entity TESTVIEW {
// key     CREATEDAT: Timestamp  @title: 'CREATEDAT: CREATEDAT' ;
//         CREATEDBY: String(255)  @title: 'CREATEDBY: CREATEDBY' ;
//         MODIFIEDAT: Timestamp  @title: 'MODIFIEDAT: MODIFIEDAT' ;
//         MODIFIEDBY: String(255)  @title: 'MODIFIEDBY: MODIFIEDBY' ;
//         DELETED: Boolean  @title: 'DELETED: DELETED' ;
//         ID: String(12)  @title: 'ID: ID' ;
//         NAME: String(51)  @title: 'NAME: NAME' ;
//         STATUS: String(6)  @title: 'STATUS: STATUS' ;
//         DESCRIPTION: String(40)  @title: 'DESCRIPTION: DESCRIPTION' ;
//         PERMISSIONS: String(15)  @title: 'PERMISSIONS: PERMISSIONS' ;
//         PROJECTMANAGER: String(40)  @title: 'PROJECTMANAGER: PROJECTMANAGER' ;
//         PROJECTMANAGEREMAIL: String(40)  @title: 'PROJECTMANAGEREMAIL: PROJECTMANAGEREMAIL' ;
//         COMPANYID: String(4)  @title: 'COMPANYID: COMPANYID' ;
//         COMPANYDESCRIPTION: String(25)  @title: 'COMPANYDESCRIPTION: COMPANYDESCRIPTION' ;
//         STARTDATE: String(10)  @title: 'STARTDATE: STARTDATE' ;
// }

// @cds.persistence.exists
// @cds.persistence.calcview
// Entity MGC_DB_WBS {
// key     JobID: String(12)  @title: 'JobID: ID' ;
//         JobName: String(51)  @title: 'JobName: NAME' ;
//         SectionID: String(15)  @title: 'SectionID: ID_1' ;
//         SectionName: String(51)  @title: 'SectionName: NAME_1' ;
//         CompanyID: String(4)  @title: 'CompanyID: COMPANYID' ;
//         PhaseID: String(20)  @title: 'PhaseID: ID_2' ;
//         PhaseName: String(51)  @title: 'PhaseName: NAME_2' ;
// }

// @cds.persistence.exists
// @cds.persistence.calcview
// Entity MGC_WBS {
// key     JobID: String(12)  @title: 'JobID: ID' ;
//         JobName: String(51)  @title: 'JobName: NAME' ;
//         CompanyID: String(4)  @title: 'CompanyID: COMPANYID' ;
//         SectionID: String(15)  @title: 'SectionID: ID_1' ;
//         SectionName: String(51)  @title: 'SectionName: NAME_1' ;
//         PhaseID: String(20)  @title: 'PhaseID: ID_2' ;
//         PhaseName: String(51)  @title: 'PhaseName: NAME_2' ;
// }

// @cds.persistence.exists
// @cds.persistence.calcview
// entity WBS {
//     key ID        : String(12) @title: 'ID: ID';
//         NAME      : String(51) @title: 'NAME: NAME';
//         COMPANYID : String(4)  @title: 'COMPANYID: COMPANYID';
//         ID_1      : String(15) @title: 'ID_1: ID_1';
//         NAME_1    : String(51) @title: 'NAME_1: NAME_1';
//         ID_2      : String(20) @title: 'ID_2: ID_2';
//         NAME_2    : String(51) @title: 'NAME_2: NAME_2';
// }

@cds.persistence.exists
@cds.persistence.calcview
entity WBS {
    key ID_2                  : String(30)  @title: 'ID_2: ID_2';
        NAME_2                : String(51)  @title: 'NAME_2: NAME_2';
        ID_1                  : String(30)  @title: 'ID_1: ID_1';
        NAME_1                : String(51)  @title: 'NAME_1: NAME_1';
        JOBS                  : String(20)  @title: 'JOBS: JOBS';
        PROJECTMANAGER_1      : String(75)  @title: 'PROJECTMANAGER_1: PROJECTMANAGER_1';
        PROJECTMANAGEREMAIL_1 : String(120) @title: 'PROJECTMANAGEREMAIL_1: PROJECTMANAGEREMAIL_1';
        PROJECTMANAGER_2      : String(75)  @title: 'PROJECTMANAGER_2: PROJECTMANAGER_2';
        PROJECTMANAGEREMAIL_2 : String(120) @title: 'PROJECTMANAGEREMAIL_2: PROJECTMANAGEREMAIL_2';
        ID                    : String(30)  @title: 'ID: ID';
        NAME                  : String(51)  @title: 'NAME: NAME';
        COMPANYID             : String(4)   @title: 'COMPANYID: COMPANYID';
        PROJECTMANAGER        : String(75)  @title: 'PROJECTMANAGER: PROJECTMANAGER';
        PROJECTMANAGEREMAIL   : String(120) @title: 'PROJECTMANAGEREMAIL: PROJECTMANAGEREMAIL';
        PROFITCENTER          : String(30)  @title: 'PROFITCENTER: PROFITCENTER';
        STATUS                : String(15)  @title: 'STATUS: STATUS';
        STATUS_1              : String(15)  @title: 'STATUS_1: STATUS_1';
        STATUS_2              : String(15)  @title: 'STATUS_2: STATUS_2';
}
