if exists("b:current_syntax")
    finish
endif

"Basic html syntax{{{
syntax keyword freemarkerKeyword div p html body head title a href br b i form
syntax keyword freemarkerKeyword pre hr h1 h2 h3 tr td table thead th tbody type
syntax keyword freemarkerKeyword class caption style button input label script
syntax keyword freemarkerBoolean true false
"}}}

"Functions, assignments{{{
syntax match freemarkerFunction "\v\#function|\#return"
syntax match freemarkerFunction "\v\#return"
syntax match freemarkerFunction "\v\#assign"
syntax match freemarkerFunction "\v\#include"
syntax match freemarkerFunction "\v\#local"
"}}}

"open and close tags {{{
syntax match freemarkerFunction "<"
syntax match freemarkerFunction ">"
syntax match freemarkerFunction "("
syntax match freemarkerFunction ")"
syntax match freemarkerFunction "\["
syntax match freemarkerFunction "\]"
syntax match freemarkerFunction "\v/"
"}}}

"variables {{{
"variable type @s.example
syntax match freemarkerFunction "\v\@\S*"

"External variables ${example.test}
syntax region freemarkerSpecialChar start=+${+ end=+}+
"}}}

"Conditionals and blocs {{{
syntax match freemarkerConditional "\v\v\#if|\#else"
syntax match freemarkerConditional "\v\#elseif"
syntax match freemarkerConditional "\v\#attemp"
syntax match freemarkerConditional "\v\#recover"
syntax match freemarkerConditional "\v\#list"
syntax match freemarkerConditional "\v\#break"
syntax match freemarkerConditional "\v\#macro"
syntax match freemarkerConditional "\v\#nested"
syntax match freemarkerConditional "\v\#switch"
syntax match freemarkerConditional "\v\#case"
syntax match freemarkerConditional "\v\#default"
syntax match freemarkerConditional "\v\#items"
"}}}

"Basic operators {{{
syntax match freemarkerOperator "\v\*"
syntax match freemarkerOperator "\v/"
syntax match freemarkerOperator "\v\+"
syntax match freemarkerOperator "\v-"
syntax match freemarkerOperator "\v\?"
syntax match freemarkerOperator "\v\*\="
syntax match freemarkerOperator "\v/\="
syntax match freemarkerOperator "\v\+\="
syntax match freemarkerOperator "\v-\="
syntax match freemarkerOperator "\v\="
"}}}

"Strings and comments {{{
syntax match freemarkerString '\v".*"'
syntax match freemarkerComment "\v\<#--.*--\>"
"}}}

"highlighting groups {{{
highlight link freemarkerConditional Conditional
highlight link freemarkerOperator Operator
highlight link freemarkerFunction Function
highlight link freemarkerSpecialChar SpecialChar
highlight link freemarkerString String
highlight link freemarkerComment Comment
highlight link freemarkerKeyword Keyword
highlight link freemarkerBoolean Boolean
"}}}

let b:current_syntax = "freemarker"
