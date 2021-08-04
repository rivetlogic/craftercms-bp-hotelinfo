<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/crafter.ftl" as crafter />

<@layout.default>
	<div class="container">
    <@crafter.h2 $field="title_t">
      ${contentModel.title_t!""}
    </@crafter.h2>

    <@crafter.div $field="rooms_o">
      <#if contentModel.rooms_o?? && contentModel.rooms_o.item??>
        <#list contentModel.rooms_o.item as item>
          <@crafter.div $field="rooms_o" class="col-sm-6" $index=item?index>
            <@renderComponent component=item/>
          </@crafter.div>
        </#list>
      </#if>
    </@crafter.div>
  </div>
</@layout.default>