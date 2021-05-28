<#import "/templates/system/common/crafter.ftl" as crafter />

<footer class="spacer">
    <div class="container">
        <div class="row">
        	
            <div class="col-sm-5">
              <@crafter.h4 $model=model $field="descriptionTitle_t">
                  ${model.descriptionTitle_t!""}
              </@crafter.h4>

              <@crafter.tag $model=model $field="description_html">
                  ${model.description_html!""}
              </@crafter.tag>
            </div>

            <div class="col-sm-3">
                <@crafter.h4 $model=model $field="quickLinksTitle_t">
                    ${model.quickLinksTitle_t!""}
                </@crafter.h4>

                <@crafter.renderRepeatCollection
                  $field="quickLinks_o"
                  $containerAttributes={'class': 'list-unstyled'};
                  <#-- Nested content values passed down by the macro: -->
                  item, index
                >
                  <a href="${item.url_s}">
                    <@crafter.span $field="quickLinks_o.label_t" $index=index>
                        ${item.label_t!""}
                    </@crafter.span>
                  </a>
                </@crafter.renderRepeatCollection>
            </div>

            <div class="col-sm-4 subscribe">
                <div class="social">
                    <#if contentModel.socialSitesLinks?? && contentModel.socialSitesLinks.item??>
                        <#list model.socialSitesLinks.item as item>
                            <a href="${item.url_s}">
                                <i class="clickable fa fa-${item.socialSite_s}" ></i>
                            </a>
                        </#list>
                    </#if>
                </div>
            </div>
            
        </div>
        <!--/.row-->
    </div>
    <!--/.container-->

<!--/.footer-bottom-->
</footer>