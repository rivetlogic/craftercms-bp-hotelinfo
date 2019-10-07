<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/craftercms-common.ftl" as crafterCommon/>
<@layout.default>
    <section <@studio.iceAttr iceGroup="hero-video"/>>
        <#if contentModel.heroVideo_o?? && contentModel.heroVideo_o.item??>
            <#list contentModel.heroVideo_o.item as heroVideo>
                <@renderComponent component=heroVideo />
            </#list>
        </#if>
    </section>
  
    <div id="information" class="spacer reserve-info ">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    ${contentModel.mainRte_html!""}
                </div>
                <div class="col-md-4" <@studio.iceAttr iceGroup="secondRte"/>>
                    ${contentModel.secondRte_html!""}
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