<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/crafter.ftl" as crafter />
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
                <@crafter.div $field="mainRte_html" class="col-md-8">
                    ${contentModel.mainRte_html!""}
                </@crafter.div>
                <@crafter.div $field="secondRte_html" class="col-md-4">
                    ${contentModel.secondRte_html!""}
                </@crafter.div>
            </div>
        </div>
    </div>
    <!-- reservation-information -->

    <!-- services -->
    <div class="spacer services wowload fadeInUp">
        <div class="container">
        <section>
           <#if contentModel.carousels_o?? && contentModel.carousels_o.item??>
               <@crafter.div $field="carousels_o" class="row">
                    <#list contentModel.carousels_o.item as carousel>
                        <#assign index = carousel?index>
                        <@crafter.div $field="carousels_o" $index=index class="col-sm-4">
                            <@renderComponent component=carousel />
                        </@crafter.div>
                    </#list>
               </@crafter.div>
            </#if>
        </section>
        </div>
    </div>
    <!-- services -->
</@layout.default>