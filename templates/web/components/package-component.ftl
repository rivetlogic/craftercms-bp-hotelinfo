<#import "/templates/system/common/crafter.ftl" as crafter />
<#import "/templates/web/includes/utils.ftl" as utils />

<article>
    <div class="wowload fadeInUp">
        <div class="rooms">
            <#if contentModel.photos_o?? && contentModel.photos_o.item??>
                <#assign first = true>
                <#list contentModel.photos_o.item as image>
                    <#assign index = image?index>
                    <#if first>
                        <@crafter.img
                            $field="photos_o.photo_s"
                            $index=index
                            src=(image.photo_s)
                            class="detail-image img-responsive"
                        />
                        <#assign first = false>
                    </#if>
                </#list>
            </#if>
            <div class="info">
                <@crafter.h3 $field="name_t">
                    ${contentModel.name_t!""}
                </@crafter.h3>
                <@crafter.p $field="shortDescription_t">
                    ${contentModel.shortDescription_t!""}
                </@crafter.p>
                <a href="<@utils.appendIdlUrl contentModel.detailsUrl_s contentModel.objectId />" class="btn btn-default">
                    <@crafter.span $field="viewDescriptionButtonLabel_t">
                        ${contentModel.viewDescriptionButtonLabel_t!""}
                    </@crafter.span>
                </a>
            </div>
        </div>
    </div>
</article>
