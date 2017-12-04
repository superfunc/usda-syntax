;; usage: load this at emacs start
;; m-x usda-mode
;; see LICENSE for details
;; github.com/superfunc/usda-syntax

(setq usda-font-lock-keywords                                                   
      (let* ((usda-keywords '("def" "class" "over" "payload" "subLayers"        
                              "references" "inherits" "variants" 
                              "variantSet" "variantSets"
                              "dictionary" "clips" "customData"
                              "uniform" "custom" "timeSamples"))
             (usda-types '("double" "double2" "double3" "double4"               
                           "float" "float2" "float3" "float4"                   
                           "half" "half2" "half3" "half4"                       
                           "int" "int2" "int3" "int4"                           
                           "uchar" "uchar2" "uchar3" "uchar4"                   
                           "uint" "uint2" "uint3" "uint4"                       
                           "vector3d" "vector3f" "vector3h"                     
                           "normal3d" "normal3f" "normal3h"                     
                           "point3d" "point3f" "point3h"                        
                           "color3d" "color3f" "color3h"                        
                           "color4d" "color4f" "color4h"                        
                           "matrix2d" "matrix3d" "matrix4d"                     
                           "quatd" "quatf" "quath"
                           "quatd[]" "quatf[]" "quath[]"
                           "token" "string" "asset" "frame4d"
			   "add" "remove" "reorder"))
	     (usda-special-names '("kind" "defaultPrim" "upAxis"
			           "startTimeCode" "endTimeCode"
			           "instanceable" "hidden" "active"))
                                                                                
             (usda-keywords-regexp (regexp-opt usda-keywords 'words))           
             (usda-types-regexp (regexp-opt usda-types 'words))
	     (usda-assetp-regexp "\@")
	     (usda-path-open-regexp "\<\/")
	     (usda-path-close-regexp "\>")
	     (usda-special-regexp (regexp-opt usda-special-names 'words))
	     (usda-num-regexp (regexp-opt '("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "."))))
                                                                                
        `((,usda-types-regexp . font-lock-type-face)                            
          (,usda-keywords-regexp . font-lock-keyword-face)
	  (,usda-special-regexp . font-lock-builtin-face)
	  (,usda-num-regexp . font-lock-constant-face)
	  (,usda-path-open-regexp . font-lock-constant-face)
	  (,usda-path-close-regexp . font-lock-constant-face)
	  (,usda-assetp-regexp . font-lock-constant-face))))          
                               
(define-derived-mode usda-mode c-mode "usda mode"                     
  "Major mode for editing USD's ascii representation"
  (setq font-lock-defaults '((usda-font-lock-keywords))))                       
                                                                                
(provide 'usda-mode)
