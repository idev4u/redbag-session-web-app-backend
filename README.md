# Redbag Session

## Goal
This is demo app to show how you could use beanstalk as backend app.

### deploy the backend


```sh
$ git clone git@github.com:idev4u/redbag-session-web-app-backend.git backend-web-app
```
Init the backend app within your demo-app environemnt where the frontend app was already deployed
```sh
$ eb init demo-app -region eu-west-1 -I
```
create the environment for or with the backend-wep-app
```sh
$ eb create backend-web-app
```
$curl the health check endpoint
```sh
$ curl http://backend-web-app.jvdy9gm26c.eu-west-1.elasticbeanstalk.com
This is the api for walters quote of the day
```

## Development or Local Environment

### run local
```sh
$ bundle install
```

```sh
$ bundle exec rackup
```

### Run tests
```
$ bundle exec rspec
```


