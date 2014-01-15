# AutoComplete

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'auto_complete'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install auto_complete

## Usage

Example:

  # Controller
  class BlogController < ApplicationController
    auto_complete_for :post, :title
  end

  # View
  <%= text_field_with_auto_complete :post, title %>

By default, auto_complete_for limits the results to 10 entries,
and sorts by the given field.

auto_complete_for takes a third parameter, an options hash to
the find method used to search for the records:

  auto_complete_for :post, :title, :limit => 15, :order => 'created_at DESC'

For more examples, see script.aculo.us:
* http://script.aculo.us/demos/ajax/autocompleter
* http://script.aculo.us/demos/ajax/autocompleter_customized
