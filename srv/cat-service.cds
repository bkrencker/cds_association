using my.bookshop as my from '../db/data-model';


service CatalogService {
    @readonly entity Books as projection on my.Books;
    @readonly entity Authors as projection on my.Authors;
    @readonly entity Publishers as projection on my.Publishers;
    @readonly entity AuthorsPublishers as projection on my.AuthorsPublishers;
}
