<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />

<@layout.default>
    <div class="container">

        <#if found??>
            <h1 class="title">${name_t!""}</h1>
            
            <div id="RoomDetails" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <#if photos_o??>
                        <#assign first = true>
                        <#list photos_o as photo>
                            <#if first>
                                <div class="item active carrousel-big-image">
                                    <img src="${photo.photo_s!""}" class="carrousel-big-image img-responsive" alt="slide">
                                </div>
                                <#assign first = false>
                            <#else>
                                <div class="item height-full carrousel-big-image">
                                    <img src="${photo.photo_s!""}"  class="carrousel-big-image img-responsive" alt="slide">
                                </div>
                            </#if>
                        </#list>
                    </#if>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#RoomDetails" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                <a class="right carousel-control" href="#RoomDetails" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
            </div>
    
            <div class="room-features spacer">
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <p>${shortDescription_t!""}</p>
                        <p>${longDescription_t!""}</p>
                    </div>
                    <div class="col-sm-6 col-md-3 amenitites_o">
                        <#if amenitites_o??>
                            <h3>${amenititesLabel_t!""}</h3>
                            <ul>
                                <#list amenitites_o as amenitite>
                                    <li>${amenitite.text_t!""}</li>
                                </#list>
                            </ul>
                        </#if>
                        <#if include_o??>
                            <h3>${includedLabel_t!""}</h3>
                            <ul>
                                <#list include_o as include>
                                    <li>${include.item_t!""}</li>
                                </#list>
                            </ul>
                        </#if>
                    </div>
                    <div class="col-sm-3 col-md-2">
                        <#if size_t??>
                            <div class="size-price">${sizeLabel_t!""}<span>${size_t!""}</span></div>
                        </#if>
                    </div>
                    <div class="col-sm-3 col-md-2">
                        <div class="size-price">${priceLabel_t!""}<span>${price_t!""}</span></div>
                    </div>
                </div>
            </div>
        <#else>
            <h1 class="title">${contentModel.contentNotFoundLabel_t!""}</h1>
        </#if>
    </div>
</@layout.default>