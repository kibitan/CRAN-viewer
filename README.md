# README

[CRAN](https://cran.r-project.org/) package viewer.

# requirement

* ruby 2.4.2
* PostgreSQL

# setup

run `bin/setup`


# import from CRAN

run `rake packages:import_from_CRAN`

# about app/services

Similar with `OPERATION` of [trailblazer](http://trailblazer.to/).
Differences is, Model can validate invariant, e.g. database constraints.
Service validate focus on precondition.

NOTE: I'm still seeking better architecture, this is not conclusion.

see also: [hanami](http://hanamirb.org/)

# run test

`bundle exec rspec`

# TODO:

* implement test

* make database view table `package_list` by [thoughtbot/scenic](https://github.com/thoughtbot/scenic)

...etc
