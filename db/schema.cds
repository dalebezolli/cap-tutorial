using { Currency, managed, sap } from '@sap/cds/common';

namespace sap.capire.bookshop;

entity Books : managed {
    key ID : Integer;
    title : localized String;
    descr : localized String;
    author : Association to Authors;
    genre : Association to Genres;
    stock : Integer;
}

entity Authors : managed {
    key ID : Integer;
    name : String(100);
    books : Association to many Books on books.author = $self;
}

entity Genres : sap.common.CodeList {
    key ID : Integer;
    parent : Association to Genres;
    children : Association to many Genres on children.parent = $self;
}