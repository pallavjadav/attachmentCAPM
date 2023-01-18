using {attachment.db as attachment } from '../db/schema';

service catalog {
    entity userDocument as projection on attachment.userDocument;
}