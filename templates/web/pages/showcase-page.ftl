<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />

<@layout.default>
	<div class="container">
    	<h2>${contentModel.title_t!""}</h2>
        <div <@studio.iceAttr iceGroup="rooms"/>>
        	<div <@studio.componentContainerAttr target="rooms" objectId=contentModel.objectId/>>
            	<#if contentModel.rooms_o?? && contentModel.rooms_o.item??>
                    <#list contentModel.rooms_o.item as item>
                        <div>
                            <@renderComponent component=item />
                        </div>
                    </#list>
                </#if>
        	</div>
        </div>
    </div>
</@layout.default>