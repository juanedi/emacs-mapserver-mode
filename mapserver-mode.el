(require 'generic-x) ;; we need this

(define-generic-mode 'mapserver-mode
  '("#")                                   ;; comments start with '!!'
  '(
    "CLASS"
    "CONFIG"
    "COLOR"
    "DATA"
    "DRIVER"
    "END"
    "EXPRESSION"
    "EXTENSION"
    "FORMATOPTION"
    "IMAGEMODE"
    "IMAGETYPE"
    "LAYER"
    "MAP"
    "METADATA"
    "MIMETYPE"
    "NAME"
    "OPACITY"
    "OUTPUTFORMAT"
    "PROJECTION"
    "STATUS"
    "STYLE"
    "TRANSPARENT"
    "TYPE"
    "VALIDATION"
    "WEB"
    "WMS_ENABLE_REQUEST"
    "WMS_FORMAT"
    "WMS_ONLINERESOURCE"
    "WMS_SRS"
    "WMS_TITLE"
    )                     ;; some keywords
  '(("<" . 'font-lock-operator)     ;; '=' is an operator
    (";" . 'font-lock-builtin))     ;; ';' is a built-in
  '("\\.map$")                      ;; files for which to activate this mode
  nil                               ;; other functions to call
  "A mode for mapserver map files"
  )
