<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/ice.ftl" as studio />
<@layout.default>
    <section>
        <#if contentModel.heroVideo_o?? && contentModel.heroVideo_o.item??>
            <#list contentModel.heroVideo_o.item as heroVideo>
                <@renderComponent component=heroVideo />
            </#list>
        </#if>
    </section>
  
    <div id="information" class="spacer reserve-info ">
        <div class="container">
            <div class="row">
                <@studio.tag $field="mainRte_html" class="col-md-8">
                    ${contentModel.mainRte_html!""}
                </@studio.tag>
                <@studio.tag $field="secondRte_html" class="col-md-4">
                    ${contentModel.secondRte_html!""}
                </@studio.tag>
            </div>
        </div>
    </div>
    <!-- reservation-information -->



    <!-- services -->
    <div class="spacer services wowload fadeInUp">
        <div class="container">
        <section>
            <div class="row">
                <#if contentModel.carousels_o?? && contentModel.carousels_o.item??>
                    <#list contentModel.carousels_o.item as carousel>
                        <#assign index = carousel?index>
                        <@studio.tag $field="carousels_o" $index=index class="col-sm-4">
                            <@renderComponent component=carousel />
                        </@studio.tag>
                    </#list>
                </#if>
            </div>
        </section>
        </div>
    </div>
    <!-- services -->
</@layout.default>