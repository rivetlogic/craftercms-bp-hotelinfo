<#import "/templates/system/common/cstudio-support.ftl" as studio />
<article <@studio.componentAttr path=contentModel.storeUrl ice=true />>
    <!-- banner -->
    <div class="banner">  
        <video playsinline autoplay muted loop poster="${contentModel.fallbackImage!""}" class="img-responsive video bannerVideo" id="bgvid">
            <source src="${contentModel.video}" type="video/mp4">
        </video>
        <div class="welcome-message">
            <div class="wrap-info">
                <div class="information">
                    <h1  class="animated fadeInDown">${contentModel.title_t!""}</h1>
                    <p class="animated fadeInUp">${contentModel.subTitle!""}</p>
                </div>
                <a href="#information" class="arrow-nav scroll wowload fadeInDownBig"><i class="fa fa-angle-down"></i></a>
            </div>
        </div>
    </div>
    <!-- banner-->
</article>