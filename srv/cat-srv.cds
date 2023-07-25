using { sap.capire.bookshop as my } from '../db/schema';

service CatalogService @(path:'/browse') {
    @readonly entity Books as SELECT FROM my.Books {*, author.name as author} excluding { createdBy, modifiedBy };

    @requires: 'authenitcated-user'
    action submitOrder (book:Books:ID, quantity: Integer);
}