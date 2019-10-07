<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/craftercms-common.ftl" as crafterCommon/>

<@layout.default>
    <div class="container">

        <h1 class="title">${contentModel.title!""}</h1>
        <div class="row gallery" <@studio.iceAttr iceGroup="images"/>>
            <#if contentModel.images_o?? && contentModel.images_o.item??>
                <#list contentModel.images_o.item as image>
                    <div class="col-sm-4 wowload fadeInUp">
                        <a href="${image.image!""}" title="${image.imageTitle!""}" class="gallery-image" data-gallery>
                            <img src="${image.image!""}" class="img-responsive">
                        </a>
                    </div>
                </#list>
            </#if>
        </div>
    </div>
</@layout.default>