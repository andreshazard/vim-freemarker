if !exists("*FTLList")
    function FTLList()
        execute "normal! i<#list  as item>\n\n<#else>\n\n</#list>\e?<#list\r2ell"
        startinsert
    endfunction
endif

if !exists("*FTLBigList")
    function FTLBigList()
        execute "normal! i<#list  >\n\n\t<#items as  >\n\n</#items>\n\n\b<#else>\n\n</#list>\e?<#list\r2ell"
        startinsert
    endfunction
endif

if !exists("*FTLIf")
    function FTLIf()
        execute "normal! i<#if  >\n\n<#else>\n\n</#if>\e?<#if\r2ell"
        startinsert
    endfunction
endif

if !exists("*FTLSwitch")
    function FTLSwitch()
        execute "normal! i<#switch  >\n\t<#case  >\n\n\t<#break>\n\b<#case  >\n\n\t<#break>\n\b<#case  >\n\n\t<#break>\n\b<#default>\n\n\b</#switch>\e?<#switch\r2ell"
        startinsert
    endfunction
endif

if !exists("*FTLAssign")
    function FTLAssign()
        execute "normal! i<#assign   >\eFnll"
        startinsert
    endfunction
endif
