<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/ice.ftl" as studio />

<@layout.default>
	<div class="container">
      <@studio.h2 $field="title_t">
          ${contentModel.title_t!""}
      </@studio.h2>
      <div>
        <@studio.tag $field="rooms_o">
            <#if contentModel.rooms_o?? && contentModel.rooms_o.item??>
                <#list contentModel.rooms_o.item as item>
                    <#assign index = item?index>
                    <@studio.tag $field="rooms_o" $index=index>
                        <@renderComponent component=item />
                    </@studio.tag>
                </#list>
            </#if>
        </@studio.tag>
      </div>
    </div>
</@layout.default>