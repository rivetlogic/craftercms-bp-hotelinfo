<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/ice.ftl" as studio />

<@layout.default>
	<div class="container">
		<@studio.h2 $field="title_t">
			${contentModel.title_t!""}
		</@studio.h2>
		<section>
			<div class="row">
				<#if contentModel.packages_o?? && contentModel.packages_o.item??>
					<#list contentModel.packages_o.item as item>
						<@renderComponent component=item />
					</#list>
				</#if>
			</div>
		</section>
	</div>
</@layout.default>