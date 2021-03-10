<#import "/templates/system/common/ice.ftl" as studio />

<!DOCTYPE html>
<html lang="en">
	<head>
      <meta charset="utf-8">
      <title>${model.title_t}</title>
	</head>
	<body>
    	<div <@studio.iceAttr iceGroup="title"/>>
				<@studio.h1 $model=model $field="title_t">
						${model.title_t}
				</@studio.h1>
			</div>

			<@studio.tag $model=model $field="body_html">
					${model.body_html}
			</@studio.tag>

			<@studio.initPageBuilder/>
	</body>
</html>