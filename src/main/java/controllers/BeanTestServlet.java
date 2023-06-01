package controllers;

import models.Album;
import models.Author;
import models.Quote;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BeanTestServlet", urlPatterns = "/beans")
public class BeanTestServlet extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                Album album1 = new Album(1, "Chris Brown", "Under the Influence", 2020, "R&B", 1);
                Album album2 = new Album(1, "SZA", "Child's Play", 2014, "R&B", 3);

                Author a1 = new Author(1, "Douglas", "Adams");
                Author a2 = new Author(2, "Mark", "Twain");
                Author a3 = new Author(3, "Kurt", "Vonnegut");

                Quote q1 = new Quote(1, a1, "I love deadlines. I love the whooshing noise they make as they go by.");
                Quote q2 = new Quote(2, a1, "Don't Panic.");
                Quote q3 = new Quote(3, a1, "Time is an illusion. Lunchtime doubly so.");
                Quote q4 = new Quote(4, a2, "Clothes make the man. Naked people have little or no influence on society.");
                Quote q5 = new Quote(5, a3, "The universe is a big place, perhaps the biggest.");

                List<Album> allAlbums = new ArrayList<>();
                allAlbums.add(album1);
                allAlbums.add(album2);

                List<Quote> allQuotes = new ArrayList<>();
                allQuotes.add(q1);
                allQuotes.add(q2);
                allQuotes.add(q3);
                allQuotes.add(q4);
                allQuotes.add(q5);

                req.setAttribute("albums", allAlbums);
                req.setAttribute("quotes", allQuotes);

                req.getRequestDispatcher("/bean.jsp").forward(req, resp);
        }
}