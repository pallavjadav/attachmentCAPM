namespace attachment.db;

using {cuid,managed} from '@sap/cds/common';

// entity master : cuid {
//     firstName : String;
//     lastName  : String;
//     documents : Composition of many userDocument
//                     on documents.parentMaster = $self;
// }

entity userDocument : cuid , managed{
   // key parentMaster : Association to one master;
        @Core.MediaType   : mediaType
        content      : LargeBinary;
        @Core.IsMediaType : true
        mediaType    : String;
        fileName     : String;
        size         : Integer;
        url          : String;
}
