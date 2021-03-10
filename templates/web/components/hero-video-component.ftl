<#import "/templates/system/common/ice.ftl" as studio />

<@studio.componentRootTag $tag="article">
    <!-- banner -->
    <div class="banner">
        <video playsinline autoplay muted loop poster="${contentModel.fallbackImage_s!""}" class="img-responsive video bannerVideo" id="bgvid">
            <source src="${contentModel.video_s}" type="video/mp4">
        </video>
        <div class="welcome-message">
            <div class="wrap-info">
                <div class="information">
                    <@studio.h1 $field="title_t" class="animated fadeInDown">
                        ${contentModel.title_t!""}
                    </@studio.h1>
                    <@studio.p $field="subTitle_t" class="animated fadeInUp">
                        ${contentModel.subTitle_t!""}
                    </@studio.p>
                </div>
                <a href="#information" class="arrow-nav scroll wowload fadeInDownBig"><i class="fa fa-angle-down"></i></a>
            </div>
        </div>
    </div>
    <!-- banner-->
</@studio.componentRootTag>