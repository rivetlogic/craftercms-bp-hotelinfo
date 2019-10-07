<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/craftercms-common.ftl" as crafterCommon/>

<@layout.default>
	<div class="container">
    	<h2>${contentModel.title_t!""}</h2>
    	<section <@studio.iceAttr iceGroup="packages"/>>
    	    <div class="row" <@studio.componentContainerAttr target="packages" objectId=contentModel.objectId/>>
    	        <#if contentModel.packages?? && contentModel.packages.item??>
                    <#list contentModel.packages.item as item>
                        <@renderComponent component=item />
                    </#list>
                </#if>
    	    </div>
    	</section>
    </div>
</@layout.default>