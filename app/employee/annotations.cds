using CatalogService as service from '../../srv/cat-service';
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Employee ID',
                Value : empNum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Full Name',
                Value : empName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email ID',
                Value : emailAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country Code',
                Value : country_code,
            },
            {
                $Type : 'UI.DataField',
                Value : country.descr,
                Label : 'Country',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Designation',
                Value : designation,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Employee ID',
            Value : empNum,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Full Name',
            Value : empName,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'emailAddress',
            Value : emailAddress,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country Code',
            Value : country_code,
        },
        {
            $Type : 'UI.DataField',
            Value : country.descr,
            Label : 'Country',
        },
        {
            $Type : 'UI.DataField',
            Label : 'Designation',
            Value : designation,
        },
    ],
);

