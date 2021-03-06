<#import "/templates/system/common/cstudio-support.ftl" as studio />

<article <@studio.componentAttr path=contentModel.storeUrl ice=true />>
  <!-- RoomCarousel -->
  <div id="${contentModel.objectId}" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <#if contentModel.images_o?? && contentModel.images_o.item??>
          <#assign first = true>
          <#list contentModel.images_o.item as image>
            <#if first>
              <div class="item active"><img src="${image.image_s!""}" class="img-responsive" alt="slide"></div>
              <#assign first = false>
            <#else>
              <div class="item height-full"><img src="${image.image_s!""}"  class="img-responsive" alt="slide"></div>
            </#if>
          </#list>
        </#if>
      </div>
      <!-- Controls -->
      <a class="left carousel-control" href="#${contentModel.objectId}" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#${contentModel.objectId}" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
  </div>
  <!-- RoomCarousel-->
  <div class="caption">${contentModel.urlTitle_t!""}<a href="${contentModel.url_s!""}" class="pull-right"><i class="fa fa-edit"></i></a></div>
</article>