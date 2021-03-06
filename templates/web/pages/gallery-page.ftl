<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />

<@layout.default>
    <div class="container">

        <h1 class="title">${contentModel.title_t!""}</h1>
        <div class="row gallery" <@studio.iceAttr iceGroup="images"/>>
            <#if contentModel.images_o?? && contentModel.images_o.item??>
                <#list contentModel.images_o.item as image>
                    <div class="col-sm-4 wowload fadeInUp">
                        <a href="${image.image_s!""}" title="${image.imageTitle_t!""}" class="gallery-image" data-gallery>
                            <img src="${image.image_s!""}" class="img-responsive">
                        </a>
                    </div>
                </#list>
            </#if>
        </div>
    </div>
</@layout.default>