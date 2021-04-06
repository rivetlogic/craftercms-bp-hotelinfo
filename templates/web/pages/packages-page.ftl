<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/ice.ftl" as studio />

<@layout.default>
	<div class="container">
		<@studio.h2 $field="title_t">
			${contentModel.title_t!""}
		</@studio.h2>
		<section>
			<@studio.tag $field="packages_o" class="row">
				<#if contentModel.packages_o?? && contentModel.packages_o.item??>
					<#list contentModel.packages_o.item as item>
						<#assign index = item?index>
						<@studio.tag $field="packages_o" class="col-sm-6" $index=index>
							<@renderComponent component=item />
						</@studio.tag>
					</#list>
				</#if>
			</@studio.tag>
		</section>
	</div>
</@layout.default>