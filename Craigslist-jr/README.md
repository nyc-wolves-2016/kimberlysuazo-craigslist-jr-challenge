# Craigslist Jr

## Learning Competencies

* Build a web app using Rails
* Use Active Record Associations
* Implement all four parts of [CRUD][]: create, read, update, and delete.
* Use the MVC pattern in web applications with proper allocation of code and responsibilities to each layer

## Summary

We're going to build a simple version of Craigslist (using Rails).

The application will have two core models: `Article` and `Category`.  An `Article`
belongs to a `Category` and a `Category` has many `Articles`.

A `Category` is something like "Apartment Rentals" or "Auto Parts."

If you're never used Craigslist, it doesn't have any kind of user
authentication.  Instead, when someone creates an article they're given a special
"secret" URL that grants them powers to edit that article that looks like

```text
http://craigslist.com/articles/123/edit?key=kjansd812
```

The key is randomly generated.  The person is given their "edit URL" after they
successfully create a article.  Anyone with this URL can edit the article.

* Create a Users model to **practice** User Authentication. Only allow users that are signed in to seee articles.
