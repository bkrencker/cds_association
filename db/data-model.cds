namespace my.bookshop;

entity Authors {
	key id: Integer;
		name: String;
		Publishers: Association to many AuthorsPublishers on Publishers.Author = $self;
}

entity Publishers {
	key id: Integer;
		name: String;
		Authors: Association to many AuthorsPublishers on Authors.Publisher = $self;
}

entity AuthorsPublishers {
	key Author: Association to Authors;
	key Publisher: Association to Publishers;
		Books: Association to many Books on Books.AuthorPublisher = $self;
}

entity Books {
	key id : Integer;
		title  : String;
		AuthorPublisher: Association to AuthorsPublishers;
}
