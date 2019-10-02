<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/web/includes/utils.ftl" as utils />

<article>
    <div class="col-sm-6 wowload fadeInUp" <@studio.componentAttr path=contentModel.storeUrl ice=true />>
        <div class="rooms">
            <#if contentModel.photos?? && contentModel.photos.item??>
                <#assign first = true>
                <#list contentModel.photos.item as image>
                    <#if first>
                        <img src="${image.photo}" class="detail-image img-responsive">
                        <#assign first = false>
                      </#if>
                </#list>
            </#if>
            <div class="info">
                <h3>${contentModel.name!""}</h3>
                <p>${contentModel.shortDesciption!""}</p>
                <a href="<@utils.appendIdlUrl contentModel.detailsUrl contentModel.objectId />" class="btn btn-default">${contentModel.viewDescriptionButtonLabel!""}</a>
            </div>
        </div>
    </div>
</article>