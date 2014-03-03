# Super Heroes!

## Instructions

1. `bundle install`
2. `bundle exec shotgun`

### Make a form

1. Create a route that responds to a get request at `/`.
2. Create a view and render it in the GET `/` route.
3. The form should have fields for the name of a super-hero team and their motto.
4. There should be form inputs for each super-hero member's name, power and bio.

It should look something like this:

![Imgur](http://i.imgur.com/zrbFWNE.png?1)

### Handle form submission

1. Create a route that respond to a GET request at `/team`
2. Have the form send a GET request to this route.
2. Render a template that displays the team data and each member's data.

## Final Output

Your params should be nested, for example:
  you would access the first super-hero's name as:

```ruby
params["team"]["members"][0][name]
```

When you post to this form you should render a page that displays the name of the team and each member of the team, along with their name, super power and bio.

Your view should display something like this:

![Imgur](http://i.imgur.com/SzO0phP.png?1)