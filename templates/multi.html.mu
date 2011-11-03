<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <title>AreWePlayingYet?</title>
  <meta name="description" content="A pragmatic HTML5 Audio benchmark">
  <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="/css/bootstrap.css">
  <link rel="stylesheet" href="/css/awpy.css">
  <link rel="stylesheet" href="/css/prettify.css">
  <link rel="shortcut icon" href="/favicon.ico">
</head>
<body>
  <div class="container">
    <div class="content">
      <div class="page-header">
        <h1><a href="/">Are We Playing Yet?</a></h1>
      </div>
      <div class="row">
        <div class="span10">
          <h2>A pragmatic HTML5 Audio browser benchmark</h2>
          <p>This project was started as an initiative to bring more harmony into HTML5 Audio implementation across different browsers. We want to build the best HTML5 audio player on the web and we need help from the browser developers for that. As the specifications left room to interpretation, some of the features got implemented not as well they could be.  We don't want to write code for different browsers, and to make this real we need to know that we can rely on them instead. Please join the discussion on <a href="http://twitter.com/areweplayingyet">@areweplayingyet</a>!</p>
          <p>
            <button class="run big btn full-width">Run all tests!</button>
          </p>
        </div>
      </div>
      <div class="row">
        <div class="span10">
          <table id="tests" class="zebra-striped">
            <tbody>
              {{#tests}}
                <tr class="test">
                  <td>
                    <button class="btn run small" data-test-name="{{name}}">Run</button>
                  </td>
                  <td>
                    <a href="/tests/{{name}}">{{description}}</a>
                  </td>
                </tr>
              {{/tests}}
            </tbody>
          </table>
        </div>
      </div>
      <div id="browserscope" class="row">
        <div class="span10">
          <h3>BrowserScope results</h3>
          <table class="zebra-striped">
            <thead>
              <tr>
                <td>Browser</td><td>Count</td><td>Score</td>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
        </div>
      </div>
    </div>
    <footer>
      <p>&copy; SoundCloud 2011</p>
    </footer>
  </div>

  <script src="/js/augment-0.3.1.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
  <script src="/js/prettify.js"></script>
  <script src="/js/awpy.js"></script>
  <script src="/js/runner.js"></script>
  <script>
    AWPY.tests.init([{{{js}}}]);
    AWPY.runner.init();
  </script>
</body>
</html>