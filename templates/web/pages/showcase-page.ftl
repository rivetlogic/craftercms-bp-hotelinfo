<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/ice.ftl" as studio />

<@layout.default>
	<div class="container">
      <@studio.h2 $field="title_t">
          ${contentModel.title_t!""}
      </@studio.h2>
      <div>
        <div>
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