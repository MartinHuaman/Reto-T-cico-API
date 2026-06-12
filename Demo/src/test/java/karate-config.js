function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
    hostherokuapp = 'https://restful-booker.herokuapp.com';
  } else if (env == 'stg') {
    hostherokuapp = 'https://stg-booker.herokuapp.com';
  }
  return config;
}