<#import "/templates/system/common/crafter.ftl" as crafter />
<#import "/templates/system/common/navigation.ftl" as nav/>

<nav class="navbar  navbar-default" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${model.headerimageUrl_s}">
        <@crafter.img $model=model $field="headerImage_s" src=(model.headerImage_s!"") alt=(model.title_t!"") class="logo-image" />
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
      <@nav.navigation containerElementClass="nav navbar-nav" itemWrapperActiveClass="" itemActiveClass="" showNavElement=false />
    </div><!-- Wnavbar-collapse -->
  </div><!-- container-fluid -->
</nav>