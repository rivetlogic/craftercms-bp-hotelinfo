<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/craftercms-common.ftl" as crafterCommon/>

<@layout.default>
    <div class="container">

        <#if found??>
            <h1 class="title">${name!""}</h1>
            
            <div id="RoomDetails" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <#if photos??>
                        <#assign first = true>
                        <#list photos as photo>
                            <#if first>
                                <div class="item active">
                                    <img src="${photo!""}" class="img-responsive" alt="slide">
                                </div>
                                <#assign first = false>
                            <#else>
                                <div class="item height-full">
                                    <img src="${photo!""}"  class="img-responsive" alt="slide">
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
                        <p>${shortDesciption!""}</p>
                        <p>${longDescription!""}</p>
                    </div>
                    <div class="col-sm-6 col-md-3 amenitites">
                        <#if amenitites??>
                            <h3>${amenititesLabel!""}</h3>
                            <ul>
                                <#list amenitites as amenitite>
                                    <li>${amenitite!""}</li>
                                </#list>
                            </ul>
                        </#if>
                        <#if include??>
                            <h3>${includedLabel!""}</h3>
                            <ul>
                                <#list include as include>
                                    <li>${include!""}</li>
                                </#list>
                            </ul>
                        </#if>
                    </div>
                    <div class="col-sm-3 col-md-2">
                        <#if size??>
                            <div class="size-price">${sizeLabel!""}<span>${size!""}</span></div>
                        </#if>
                    </div>
                    <div class="col-sm-3 col-md-2">
                        <div class="size-price">${priceLabel!""}<span>${price!""}</span></div>
                    </div>
                </div>
            </div>
        <#else>
            <h1 class="title">${contentModel.contentNotFoundLabel!""}</h1>
        </#if>
    </div>
</@layout.default>