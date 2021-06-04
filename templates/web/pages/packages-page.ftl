<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/crafter.ftl" as crafter />

<@layout.default>
	<div class="container">
		<@crafter.h2 $field="title_t">
			${contentModel.title_t!""}
		</@crafter.h2>
		<section>
			<@crafter.tag $field="packages_o" class="row">
				<#if contentModel.packages_o?? && contentModel.packages_o.item??>
					<#list contentModel.packages_o.item as item>
						<#assign index = item?index>
						<@crafter.tag $field="packages_o" class="col-sm-6" $index=index>
							<@renderComponent component=item />
						</@crafter.tag>
					</#list>
				</#if>
			</@crafter.tag>
		</section>
	</div>
</@layout.default>