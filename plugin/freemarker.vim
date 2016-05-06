if !exists("*PutList")
    function PutList()
        execute "normal! i<#list  as item>\n\n<#else>\n\n</#list>\e?<#list\r2ell"
        startinsert
    endfunction
endif

if !exists("*PutBigList")
    function PutBigList()
        execute "normal! i<#list  >\n\n\t<#items as  >\n\n</#items>\n\n\b<#else>\n\n</#list>\e?<#list\r2ell"
        startinsert
    endfunction
endif

if !exists("*PutIf")
    function PutIf()
        execute "normal! i<#if  >\n\n<#else>\n\n</#if>\e?<#if\r2ell"
        startinsert
    endfunction
endif

if !exists("*PutSwitch")
    function PutSwitch()
        execute "normal! i<#switch  >\n\t<#case  >\n\n\t<#break>\n\b<#case  >\n\n\t<#break>\n\b<#case  >\n\n\t<#break>\n\b<#default>\n\n\b</#switch>\e?<#switch\r2ell"
        startinsert
    endfunction
endif

if !exists("*PutAssign")
    function PutAssign()
        execute "normal! i<#assign   >\eFnll"
        startinsert
    endfunction
endif
