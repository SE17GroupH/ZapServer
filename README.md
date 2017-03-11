# ZapServer

This is the server side(implemented in Rails) of Zap, a project of Group H for 2017 CSC 510 Software Engineering course. It communicates via REST APIs with the android application [Zap](https://github.com/SE17GroupH/Zap) that showcases different authentication methods.

## [API usage] (/APIdoc.md)

### How to use this project
- Clone repo
- From commandline:
  + `bundle install --without production` - install all the dependencies
  + `rails db:create db:migrate` - create local databases
  + `rails server` - start the server