<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/craftercms-common.ftl" as crafterCommon/>

<@layout.default>
	<div class="container">
    	<h2>${contentModel.title_t!""}</h2>
        <div <@studio.iceAttr iceGroup="rooms"/>>
        	<div <@studio.componentContainerAttr target="rooms" objectId=contentModel.objectId/>>
            	<#if contentModel.rooms?? && contentModel.rooms.item??>
                    <#list contentModel.rooms.item as item>
                        <div>
                            <@renderComponent component=item />
                        </div>
                    </#list>
                </#if>
        	</div>
        </div>
    </div>
</@layout.default>