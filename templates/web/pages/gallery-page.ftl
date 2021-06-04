<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/crafter.ftl" as crafter />

<@layout.default>
    <div class="container">
        <@crafter.h1 $field="title_t" class="title">
            ${contentModel.title_t!""}
        </@crafter.h1>
        <@crafter.tag $field="images_o" class="row gallery">
            <#if contentModel.images_o?? && contentModel.images_o.item??>
                <#list contentModel.images_o.item as image>
                    <#assign index = image?index>
                    <@crafter.tag $field="images_o" $index=index class="col-sm-4 wowload fadeInUp">
                        <a href="${image.image_s!""}" title="${image.imageTitle_t!""}" class="gallery-image" data-gallery>
                            <@crafter.img $field="images_o.image_s" $index=index src=(image.image_s!"") class="img-responsive" />
                        </a>
                    </@crafter.tag>
                </#list>
            </#if>
        </@crafter.tag>
    </div>
</@layout.default>