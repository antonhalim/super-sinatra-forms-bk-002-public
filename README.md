---
tags: sinatra, forms
langauges: ruby
  resources: 4
---

# Superheroes!

## Description

In this lab, you'll practice building nested forms in Sinatra for creating teams of superheros. No database is required, but feel free to add persistence *after* you have successfully completed the instructions below.

**Bonus**: Spec this out! Write tests as you complete the lab.

## Instructions

1. `bundle install`
2. `bundle exec shotgun`

### Make a form

1. Create a route that responds to a GET request at `/teams/new`.
2. Create a view and render it in the GET `/teams/new` route.
3. The form should have fields for the `name` of a superhero team and their `motto`.
4. There should be form inputs for each superhero member's `name`, `power`, and `bio`.

It should look something like this:

![Imgur](http://i.imgur.com/zrbFWNE.png?1)

### Handle form submission

1. Create a route that responds to a POST request at `/teams`
2. Have the form send a POST request to this route.
2. Render a template that displays the submitted team data and each member's data.

## Final Output

Your params should be nested. For example, you would access the first super-hero's name as:

```ruby
params["team"]["members"][0][name]
```

When you post to this form you should render a page that displays the name of the team and each member of the team, along with their name, super power and bio.

Your view should display something like this:

![Imgur](http://i.imgur.com/SzO0phP.png?1)
## Resources
* [HTML5 In Action](http://books.flatironschool.com/books/79) - [Forms and validation](http://books.flatironschool.com/books/79), page 35
* [Sinatra Up and Running](http://books.flatironschool.com/books/101) - [Routes with Parameters](http://books.flatironschool.com/books/101), page 34
* [Ashley William's GitHub](https://github.com/ashleygwilliams/) - [Sinatra Form Party](https://github.com/ashleygwilliams/sinatra-form-party)
* [Ashley William's GitHub](https://github.com/ashleygwilliams/) - [Citibike Sinatra](https://github.com/ashleygwilliams/citibike-sinatra)
