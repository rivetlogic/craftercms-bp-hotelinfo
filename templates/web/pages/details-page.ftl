<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/ice.ftl" as studio />

<@layout.default>
    <div class="container">

        <#if found??>
            <#assign model = siteItemService.getSiteItem(localId) />

            <@studio.h1 $model=model $field="name_t" class="title">
                ${name_t!""}
            </@studio.h1>
            
            <div id="RoomDetails" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <#if photos_o??>
                        <#assign first = true>
                        <#list photos_o as photo>
                            <#assign index = photo?index>
                            <#if first>
                                <div class="item active carrousel-big-image">
                                  <@studio.img
                                    $model=model
                                    $field="photos_o.photo_s"
                                    $index=index
                                    src=(photo.photo_s!"")
                                    class="carrousel-big-image img-responsive"
                                    alt="slide"
                                  />
                                </div>
                                <#assign first = false>
                            <#else>
                                <div class="item height-full carrousel-big-image">
                                  <@studio.img
                                    $model=model
                                    $field="photos_o.photo_s"
                                    $index=index
                                    src=(photo.photo_s!"")
                                    class="carrousel-big-image img-responsive"
                                    alt="slide"
                                  />
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
                      <@studio.p $model=model $field="shortDescription_t">
                        ${shortDescription_t!""}
                      </@studio.p>
                      <@studio.p $model=model $field="longDescription_t">
                        ${longDescription_t!""}
                      </@studio.p>
                    </div>
                    <div class="col-sm-6 col-md-3 amenitites_o">
                        <#if amenitites_o??>
                            <@studio.h3 $model=model $field="amenititesLabel_t">
                              ${amenititesLabel_t!""}
                            </@studio.h3>
                            <ul>
                                <#list amenitites_o as amenitite>
                                    <#assign index = amenitite?index>
                                    <li>
                                      <@studio.span $model=model $field="amenitites_o.text_t" $index=index>
                                          ${amenitite.text_t!""}
                                      </@studio.span>
                                    </li>
                                </#list>
                            </ul>
                        </#if>
                        <#if include_o??>
                            <@studio.h3 $model=model $field="includedLabel_t">
                              ${includedLabel_t!""}
                            </@studio.h3>
                            <ul>
                                <#list include_o as include>
                                    <#assign index = include?index>
                                    <li>
                                        <@studio.span $model=model $field="include_o.item_t" $index=index>
                                            ${include.item_t!""}
                                        </@studio.span>
                                    </li>
                                </#list>
                            </ul>
                        </#if>
                    </div>
                    <div class="col-sm-3 col-md-2">
                        <#if size_t??>
                            <div class="size-price">
                              <@studio.span $model=model $field="sizeLabel_t">
                                ${sizeLabel_t!""}
                              </@studio.span>
                              <@studio.span $model=model $field="size_t">
                                ${size_t!""}
                              </@studio.span>
                            </div>
                        </#if>
                    </div>
                    <div class="col-sm-3 col-md-2">
                        <div class="size-price">
                          <@studio.span $model=model $field="priceLabel_t">
                            ${priceLabel_t!""}
                          </@studio.span>
                          <@studio.span $model=model $field="price_t">
                            ${price_t!""}
                          </@studio.span>
                        </div>
                    </div>
                </div>
            </div>
        <#else>
            <h1 class="title">${contentModel.contentNotFoundLabel_t!""}</h1>
        </#if>
    </div>
</@layout.default>