
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;


public class Main {
    public static void main(String[] args) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

        GenreDAO genreDAO = new GenreDAOImpl(sessionFactory);
        BookDAO bookDAO = new BookDAOImpl(sessionFactory);

        GenreService genreService = new GenreService(genreDAO);
        BookService bookService = new BookService(bookDAO);

        Genre genre = new Genre();
        genre.setName("Фэнтази");
        genreService.addGenre(genre);

        List<Genre> genres = genreService.getAllGenres();
        genres.forEach(System.out::println);

        Genre fetchedGenre = genreService.getGenreById(genre.getGenreId());
        fetchedGenre.setName("Фантастика");
        genreService.updateGenre(fetchedGenre);

        genreService.deleteGenre(fetchedGenre.getGenreId());

        Book book = new Book();
        book.setTitle("Хоббит");
        book.setGenre(genre);
        book.setPublishedYear(1937);
        book.setQuantity(10);

        bookService.addBook(book);

        List<Book> books = bookService.getAllBooks();
        books.forEach(System.out::println);

        Book fetchedBook = bookService.getBookById(book.getBookId());
        fetchedBook.setTitle("Хоббит: Начало");
        bookService.updateBook(fetchedBook);

        bookService.deleteBook(fetchedBook.getBookId());

        sessionFactory.close();
    }
}
