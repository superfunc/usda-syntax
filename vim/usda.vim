" Vim syntax file
" github.com/superfunc/usda-syntax
"
" See LICENSE for usage details
"
" All hail Vim

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword usdaKeyword def over class subLayers payload rel
syn keyword usdaKeyword references inherits variants
syn keyword usdaKeyword variantSet variantSets
syn keyword usdaKeyword dictionary clips customData
syn keyword usdaKeyword uniform custom timeSamples
highlight link usdaKeyword Keyword

" Types
syn keyword usdaType bool
syn keyword usdaType double double2 double3 double4               
syn keyword usdaType float float2 float3 float4                   
syn keyword usdaType half half2 half3 half4                       
syn keyword usdaType int int2 int3 int4                           
syn keyword usdaType uchar uchar2 uchar3 uchar4                   
syn keyword usdaType uint uint2 uint3 uint4                       
syn keyword usdaType vector3d vector3f vector3h                     
syn keyword usdaType normal3d normal3f normal3h                     
syn keyword usdaType point3d point3f point3h                        
syn keyword usdaType color3d color3f color3h                        
syn keyword usdaType color4d color4f color4h                        
syn keyword usdaType matrix2d matrix3d matrix4d                     
syn keyword usdaType quatd quatf quath
syn keyword usdaType quatd[] quatf[] quath[]
syn keyword usdaType token string asset frame4d
highlight link usdaType Type

" ListOp operations, i.e.
" delete references = [@filepath.usd@]
syn keyword usdaListOp add delete reorder
highlight link usdaListOp Function

" Special names
syn keyword usdaSpecialName kind defaultPrim upAxis
syn keyword usdaSpecialName startTimeCode endTimeCode
syn keyword usdaSpecialName instanceable hidden active
highlight link usdaSpecialName Identifier

" Regex group matching stuff
syntax match usdaVersion "\v\#usda"
highlight link usdaVersion Constant

syntax match usdaNumber "\v[+-]?([0-9]*[.])?[0-9]+"
highlight link usdaNumber Number

" Structures are things like strings, arrays, paths etc
syntax match usdaString "\v\".*\""
highlight link usdaString String

syntax match usdaPathOpen "\v\<"
highlight link usdaPathOpen String

syntax match usdaPathClose "\v\>"
highlight link usdaPathClose String

syntax match usdaArrayOpen "\v\["
highlight link usdaArrayOpen Structure

syntax match usdaArrayClose "\v\]"
highlight link usdaArrayClose Structure

syntax match usdaMetadataOpen "\v\("
highlight link usdaMetadataOpen Structure

syntax match usdaMetadataClose "\v\)"
highlight link usdaMetadataClose Structure

syntax match usdaAssetPath "\v\@"
highlight link usdaAssetPath Structure

" Scopes are things like def, class, over
syntax match usdaScopeOpen "\v\{"
highlight link usdaScopeOpen Structure

syntax match usdaScopeClose "\v\}"
highlight link usdaScopeClose Structure

" Delimiters
syntax match usdaDictKey "\v\:"
highlight link usdaDictKey Delimiter

syntax match usdaAssign "\v\="
highlight link usdaAssign Delimiter

syntax match usdaArrayCont "\v\,"
highlight link usdaArrayCont Delimiter

let b:current_syntax = "usda"
