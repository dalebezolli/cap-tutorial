using { sap.capire.bookshop as my } from '../db/schema';

service CatalogService @(path:'/browse') {
    entity Books as SELECT FROM my.Books {*, author.name as author};
}