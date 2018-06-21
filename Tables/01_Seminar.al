table 123456701 Seminar
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0 : 1;
        }
        field(40; "Minimum Participants"; Integer)
        {
                Caption = 'Minimum participants';
        }
        field(50; "Maximum Participants"; Integer)
        {
                Caption = 'Maximum Participants';
        }
        field(60; "Search Name"; code[50])
        {
            Caption = 'Search Name';
        }
        field(70; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(80; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable=false;
        }
        field(90; Comment; Boolean)
        {
            Caption = 'Comment';
            Editable=False;
            FieldClass=FlowField;
            //FieldClass=FlowField; 
            //CalcFormula=exist("Seminar Comment Line" 
            //where("Table Name"= const("Seminar"), 
            // "No."=Field("No.")));
        }
        field(100; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            AutoFormatType=1;
        }
        field(110; "Gen. Prod. Posting Group"; code[10])
        {
            Caption='Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(120; "VAT Prod. Posting Group"; code[10])
        {
            Caption='VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(130; "No. Series"; code[10])
        {
            Caption='No. Series';
            Editable=false;
            TableRelation = "No. Series";
        }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
