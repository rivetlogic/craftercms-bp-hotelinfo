<#import "/templates/system/common/cstudio-support.ftl" as studio />

<#macro appendIdlUrl url='' id=''>${url}<#if url?contains('?')>${'&'?xml}<#else>?</#if>id=${id}</#macro>