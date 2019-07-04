<#escape x as jsonUtils.encodeJSONString(x)>{
    "avatar_url": "${sysAdminParams.alfrescoProtocol}://${sysAdminParams.alfrescoHost}<#if (sysAdminParams.alfrescoProtocol == 'http' && sysAdminParams.alfrescoPort != 80) || (sysAdminParams.alfrescoProtocol == 'https' && sysAdminParams.alfrescoPort != 443)>:${sysAdminParams.alfrescoPort?c}</#if>/${sysAdminParams.alfrescoContext}/s/slingshot/profile/avatar/${person.properties.userName}",
    "username": "${person.properties.userName}",
    "content": "A new file ${document.name} has been created in <#if document.siteShortName??>site ${document.siteShortName}<#else>${document.displayPath}</#if> (${sysAdminParams.shareProtocol}://${sysAdminParams.shareHost}<#if (sysAdminParams.shareProtocol == 'http' && sysAdminParams.sharePort != 80) || (sysAdminParams.shareProtocol == 'https' && sysAdminParams.sharePort != 443)>:${sysAdminParams.sharePort?c}</#if>/${sysAdminParams.shareContext}/page/<#if document.siteShortName??>site/${document.siteShortName}/</#if>document-details?nodeRef=${document.nodeRef})"
}</#escape>