<#import "/templates/system/common/crafter.ftl" as crafter />

<article>
  <!-- RoomCarousel -->
  <div id="${contentModel.objectId}" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <#if contentModel.images_o?? && contentModel.images_o.item??>
          <#assign first = true>
          <#list contentModel.images_o.item as image>
            <#assign index = image?index>
            <#if first>
              <div class="item active">
                <@crafter.img $field="images_o.image_s" $index=index src=(image.image_s!"") alt="slide" class="img-responsive"/>
              </div>
              <#assign first = false>
            <#else>
              <div class="item height-full">
                <@crafter.img $field="images_o.image_s" $index=index src=(image.image_s!"") alt="slide" class="img-responsive"/>
              </div>
            </#if>
          </#list>
        </#if>
      </div>
      <!-- Controls -->
      <a class="left carousel-control" href="#${contentModel.objectId}" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#${contentModel.objectId}" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
  </div>
  <!-- RoomCarousel-->
  <div class="caption">
    <@crafter.span $field="urlTitle_t">
        ${contentModel.urlTitle_t!""}
    </@crafter.span>
    <a href="${contentModel.url_s!""}" class="pull-right"><i class="fa fa-edit"></i></a>
  </div>
</article>