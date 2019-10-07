<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#include "/templates/web/includes/global.ftl" />

<#macro default cstudioSupport = true>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Holiday Crown | Best hotel in Dubai</title>

        <!-- Google fonts -->
        <link href='http://fonts.googleapis.com/css?family=Raleway:300,500,800|Old+Standard+TT' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:300,500,800' rel='stylesheet' type='text/css'>

        <!-- font awesome -->
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

        <!-- bootstrap -->
        <link rel="stylesheet" href="/static-assets/js/bootstrap/css/bootstrap.min.css" />

        <!-- uniform -->
        <link type="text/css" rel="/stylesheet" href="static-assets/js/uniform/css/uniform.default.min.css" />

        <!-- animate.css -->
        <link rel="stylesheet" href="/static-assets/js/wow/animate.css" />

        <!-- gallery -->
        <link rel="stylesheet" href="/static-assets/js/gallery/blueimp-gallery.min.css">

        <!-- favicon -->
        <link rel="shortcut icon" href="/static-assets/images/favicon.png" type="image/x-icon">
        <link rel="icon" href="/static-assets/images/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="/static-assets/css/style.css">

    </head>

    <body id="home">


        <!-- top
          <form class="navbar-form navbar-left newsletter" role="search">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Enter Your Email Id Here">
                </div>
                <button type="submit" class="btn btn-inverse">Subscribe</button>
            </form>
         top -->

        <header id="header">
            <@renderHeader/>
        </header>


        <main class="mainContainer">
            <#nested/>
        </main>


        <footer id="footer">
                <@renderFooter/>
        </footer>


        <a href="#home" class="toTop scroll"><i class="fa fa-angle-up"></i></a>

        <!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body_html -->
        <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
            <!-- The container for the modal slides -->
            <div class="slides"></div>
            <!-- Controls for the borderless lightbox -->
            <h3 class="title">title</h3>
            <a class="prev">‹</a>
            <a class="next">›</a>
            <a class="close">×</a>
            <!-- The modal dialog, which will be used to wrap the lightbox content -->
        </div>

        <script src="/static-assets/js/jquery.js"></script>

        <!-- wow script -->
        <script src="/static-assets/js/wow/wow.min.js"></script>

        <!-- uniform -->
        <script src="/static-assets/js/uniform/js/jquery.uniform.js"></script>


        <!-- boostrap -->
        <script src="/static-assets/js/bootstrap/js/bootstrap.js" type="text/javascript" ></script>

        <!-- jquery mobile -->
        <script src="/static-assets/js/mobile/touchSwipe.min.js"></script>

        <!-- jquery mobile -->
        <script src="/static-assets/js/respond/respond.js"></script>

        <!-- gallery -->
        <script src="/static-assets/js/gallery/jquery.blueimp-gallery.min.js"></script>

        <!-- custom script -->
        <script src="/static-assets/js/script.js"></script>

		<@studio.toolSupport/>	
    </body>
    </html>
</#macro>