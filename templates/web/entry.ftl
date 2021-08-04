<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en">
	<head>
      <meta charset="utf-8">
      <title>${model.title_t}</title>
	  <@crafter.head/>
	</head>
	<body>
		<@crafter.body_top/>
    	<div <@crafter.iceAttr iceGroup="title"/>>
				<@crafter.h1 $model=model $field="title_t">
						${model.title_t}
				</@crafter.h1>
			</div>

			<@crafter.div $model=model $field="body_html">
					${model.body_html}
			</@crafter.div>

			<@crafter.body_bottom/>
	</body>
</html>