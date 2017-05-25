<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/craftercms-common.ftl" as crafterCommon/>
<@layout.default>
    <section <@studio.iceAttr iceGroup="hero-video"/>>
        <#if contentModel.heroVideo?? && contentModel.heroVideo.item??>
            <#list contentModel.heroVideo.item as heroVideo>
                <@renderComponent component=heroVideo />
            </#list>
        </#if>
    </section>
  
    <div id="information" class="spacer reserve-info ">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 col-md-8">
                    <div class="embed-responsive embed-responsive-16by9 wowload fadeInLeft" <@studio.iceAttr iceGroup="mainRte"/>>
                        ${contentModel.mainRte!""}
                    </div>
                </div>
                <div class="col-sm-5 col-md-4" <@studio.iceAttr iceGroup="secondRte"/>>
                    ${contentModel.secondRte!""}
                </div>
            </div>
        </div>
    </div>
    <!-- reservation-information -->



    <!-- services -->
    <div class="spacer services wowload fadeInUp">
        <div class="container">
        <section <@studio.iceAttr iceGroup="carousels"/>>
            <div class="row" <@studio.componentContainerAttr target="carousels" objectId=contentModel.objectId/>>
                <#if contentModel.carousels?? && contentModel.carousels.item??>
                    <#list contentModel.carousels.item as carousel>
                        <div class="col-sm-4">
                            <@renderComponent component=carousel />
                        </div>
                    </#list>
                </#if>
            </div>
        </section>
        </div>
    </div>
    <!-- services -->
</@layout.default>