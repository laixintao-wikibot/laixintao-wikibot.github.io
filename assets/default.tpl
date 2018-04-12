<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link type="text/css" rel="stylesheet" href="%root_path%assets/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/bootstrap-responsive.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/docs.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/monokai.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/vimwiki.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/font-awesome.css">

<script type="text/javascript" src="%root_path%assets/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="%root_path%assets/js/bootstrap.js"></script>
<script type="text/javascript" src="%root_path%assets/js/highlight.pack.js"></script>
<title>%title%</title>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">

            <a class="brand" href="%root_path%index.html">史蒂芬的启示</a>

            <div class="nav-collapse collapse">
                <!-- .nav, .navbar-search, .navbar-form, etc -->
                <ul class="nav">
                    <li class="">
                    </li>
                    <li class="">
                        <a href="#">当前页面:%title%</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2"> </div>

        <div class="span7">
            %content%
        </div>
        <div class="span3 bs-docs-sidebar">
            <ul id="sidebar_list" class="nav nav-list bs-docs-sidenav affix">
            </ul>
        </div>
  </div>
</div>
<a href="#" class="backtotop"><i class="fa fa-arrow-circle-up fa-4x"></i></a>


<footer class="footer">
  <div class="container">
    <p>创作共同 (<a href="http://creativecommons.org/licenses/by/2.5/cn/">Creative Commons</a>) 版权协议</p>
  </div>
</footer>


<script>
    $('h1').each(function() {
        $(this).wrap('<section id="' + this.id + '"/>');
    });

    $(document).ready(function() {
        var items = [];
        $('h1').each(function() {
            items.push('<li><a href="#' + this.id + '"><i class="fa fa-chevron-right pull-right"></i> ' + $(this).text() + '</a></li>');
        });  // close each()

    $('#sidebar_list').append( items.join('') );

    $('table').each(function() {
        $(this).addClass('table table-striped table-condensed table-hover');
    });

    $('.done0').each(function() {
        $(this).html('<div class="alert alert-info"><i class="fa fa-check-square-o"></i>'+$(this).html()+'</div></li>');
    });

    $('.done4').each(function() {
        $(this).html('<div class="alert alert-success"><i class="fa fa-square-o"></i>'+$(this).html()+'</div></li>');
    });

    // Fade Out Back-To-Top-Link on new page
    $('.backtotop').fadeOut();

    $(document).ready(function(){
        $(window).scroll(function(){
            if ($(this).scrollTop() > 100) {
                $('.backtotop').fadeIn();
            } else {
                $('.backtotop').fadeOut();
            }
        });
        $('.backtotop').click(function(){
            $("html, body").animate({ scrollTop: 0 }, 600);
            return false;
        });
    });

    $('pre').each(function() {
        $(this).html('<code>'+$(this).html()+'</code>');
    });
    hljs.initHighlightingOnLoad();
});
</script>
</body>
</html>