<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/web/includes/utils.ftl" as utils />

<article>
    <div class="col-sm-6 wowload fadeInUp" <@studio.componentAttr path=contentModel.storeUrl ice=true />>
        <div class="rooms">
            <#if contentModel.photos_o?? && contentModel.photos_o.item??>
                <#assign first = true>
                <#list contentModel.photos_o.item as image>
                    <#if first>
                        <img src="${image.photo}" class="detail-image img-responsive">
                        <#assign first = false>
                      </#if>
                </#list>
            </#if>
            <div class="info">
                <h3>${contentModel.name_t!""}</h3>
                <p>${contentModel.shortDescription_t!""}</p>
                <a href="<@utils.appendIdlUrl contentModel.detailsUrl_s contentModel.objectId />" class="btn btn-default">${contentModel.viewDescriptionButtonLabel_t!""}</a>
            </div>
        </div>
    </div>
</article>