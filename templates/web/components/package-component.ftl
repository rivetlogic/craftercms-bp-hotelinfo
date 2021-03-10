<#import "/templates/system/common/ice.ftl" as studio />
<#import "/templates/web/includes/utils.ftl" as utils />

<article>
    <@studio.componentRootTag $tag="div" class="col-sm-6 wowload fadeInUp">
        <div class="rooms">
            <#if contentModel.photos_o?? && contentModel.photos_o.item??>
                <#assign first = true>
                <#list contentModel.photos_o.item as image>
                    <#assign index = image?index>
                    <#if first>
                        <@studio.img
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
                <@studio.h3 $field="name_t">
                    ${contentModel.name_t!""}
                </@studio.h3>
                <@studio.p $field="shortDescription_t">
                    ${contentModel.shortDescription_t!""}
                </@studio.p>
                <a href="<@utils.appendIdlUrl contentModel.detailsUrl_s contentModel.objectId />" class="btn btn-default">
                    <@studio.span $field="viewDescriptionButtonLabel_t">
                        ${contentModel.viewDescriptionButtonLabel_t!""}
                    </@studio.span>
                </a>
            </div>
        </div>
    </@studio.componentRootTag>
</article>
