;;; mapserver-mode.el --- Support for the Foo programming language

;; Copyright (C) 2016 Juan Edi
;; Author: Juan Edi
;; URL: https://github.com/juanedi/emacs-mapserver-mode
;; Created: 20 Aug 2016
;; Keywords: languages

;; This file is not part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.
;;
;; Commentary:
;;
;; Most keyword definitions below are taken from TextPad syntax definitions (*.syn) by Chris Thorne (thorne@dmsolutions.ca) as of May 2004, for version 4.0 MapServer
;; The idea to take the definitions from there was taken from Andreas Hirner's vim plugin :)

;;; Code:

(require 'generic-x) ;; we need this

;;;###autoload
(define-generic-mode 'mapserver-mode
  '("#")                                   ;; comments start with '!!'
  '(
    ;; class 1 keywords
    "CLASS" "END" "JOIN" "LABEL" "LAYER" "LEGEND" "MAP" "METADATA" "OUTPUTFORMAT" "PROJECTION" "QUERYMAP" "REFERENCE" "SCALEBAR" "STYLE" "SYMBOL" "WEB" "class" "end" "join" "label" "layer" "legend" "map" "metadata" "outputformat" "projection" "querymap" "reference" "scalebar" "style" "symbol" "web"

    ;; class 2 keywords
    "ALPHACOLOR" "ANGLE" "ANTIALIAS" "BACKGROUNDCOLOR" "BACKGROUNDSHADOWCOLOR" "BACKGROUNDSHADOWSIZE" "BUFFER" "CHARACTER" "CLASSITEM" "COLOR" "CONNECTION" "CONNECTIONTYPE" "DATA" "DATAPATTERN" "DEBUG" "DRIVER" "DUMP" "EMPTY" "ERROR" "EXPRESSION" "EXTENSION" "EXTENT" "FEATURE" "FILLED" "FILTER" "FILTERITEM" "FONT" "FONTSET" "FOOTER" "FORCE" "FORMATOPTION" "FROM" "GAP" "GRATICULE" "GRID" "GROUP" "HEADER" "IMAGE" "IMAGECOLOR" "IMAGEMODE" "IMAGEPATH" "IMAGEQUALITY" "IMAGETYPE" "IMAGEURL" "INDEX" "INTERLACE" "INTERVALS" "KEYIMAGE" "KEYSIZE" "KEYSPACING" "LABELANGLEITEM" "LABELCACHE" "LABELFORMAT" "LABELITEM" "LABELMAXSCALE" "LABELMINSCALE" "LABELREQUIRES" "LABELSIZEITEM" "LATLON" "LINECAP" "LINEJOIN" "LINEJOINMAXSIZE" "LOG" "MARKER" "MARKERSIZE" "MAXARCS" "MAXBOXSIZE" "MAXFEATURES" "MAXINTERVAL" "MAXSCALE" "MAXSIZE" "MAXSUBDIVIDE" "MAXTEMPLATE" "MIMETYPE" "MINARCS" "MINBOXSIZE" "MINDISTANCE" "MINFEATURESIZE" "MININTERVAL" "MINSCALE" "MINSIZE" "MINSUBDIVIDE" "MINTEMPLATE" "NAME" "OFFSET" "OFFSITE" "OUTLINECOLOR" "OVERLAYBACKGROUNDCOLOR" "OVERLAYCOLOR" "OVERLAYMAXSIZE" "OVERLAYMINSIZE" "OVERLAYOUTLINECOLOR" "OVERLAYSIZE" "OVERLAYSYMBOL" "PARTIALS" "POINTS" "POSITION" "POSTLABELCACHE" "PROCESSING" "REQUIRES" "RESOLUTION" "SCALE" "SHADOWCOLOR" "SHADOWSIZE" "SHAPEPATH" "SIZE" "SIZEUNITS" "STATUS" "STYLEITEM" "SYMBOLSCALE" "SYMBOLSET" "TABLE" "TEMPLATE" "TEMPLATEPATTERN" "TEXT" "TILEINDEX" "TILEITEM" "TITLE" "TO" "TOLERANCE" "TOLERANCEUNITS" "TRANSFORM" "TRANSPARENCY" "TRANSPARENT" "TYPE" "UNITS" "WRAP"
    "alphacolor" "angle" "antialias" "backgroundcolor" "backgroundshadowcolor" "backgroundshadowsize" "buffer" "character" "classitem" "color" "connection" "connectiontype" "data" "datapattern" "debug" "driver" "dump" "empty" "error" "expression" "extension" "extent" "feature" "filled" "filter" "filteritem" "font" "fontset" "footer" "force" "formatoption" "from" "gap" "graticule" "grid" "group" "header" "image" "imagecolor" "imagemode" "imagepath" "imagequality" "imagetype" "imageurl" "index" "interlace" "intervals" "keyimage" "keysize" "keyspacing" "labelangleitem" "labelcache" "labelformat" "labelitem" "labelmaxscale" "labelminscale" "labelrequires" "labelsizeitem" "latlon" "linecap" "linejoin" "linejoinmaxsize" "log" "marker" "markersize" "maxarcs" "maxboxsize" "maxfeatures" "maxinterval" "maxscale" "maxsize" "maxsubdivide" "maxtemplate" "mimetype" "minarcs" "minboxsize" "mindistance" "minfeaturesize" "mininterval" "minscale" "minsize" "minsubdivide" "mintemplate" "name" "offset" "offsite" "outlinecolor" "overlaybackgroundcolor" "overlaycolor" "overlaymaxsize" "overlayminsize" "overlayoutlinecolor" "overlaysize" "overlaysymbol" "partials" "points" "position" "postlabelcache" "processing" "requires" "resolution" "scale" "shadowcolor" "shadowsize" "shapepath" "size" "sizeunits" "status" "styleitem" "symbolscale" "symbolset" "table" "template" "templatepattern" "text" "tileindex" "tileitem" "title" "to" "tolerance" "toleranceunits" "transform" "transparency" "transparent" "type" "units" "wrap"

    ;; class 3 keywords
    "ANNOTATION" "AUTO" "BEVEL" "BITMAP" "BUTT" "CARTOLINE" "CC" "CIRCLE" "CL" "CR" "CSV" "DD" "DEFAULT" "ELLIPSE" "EMBED" "FALSE" "FEET" "GIANT" "HILITE" "INCHES" "KILOMETERS" "LARGE" "LC" "LINE" "LL" "LR" "MEDIUM" "METERS" "MILES" "MITER" "MULTIPLE" "MYGIS" "NORMAL" "OFF" "OGR" "ON" "ONE-TO-MANY" "ONE-TO-ONE" "ORACLESPATIAL" "PIXELS" "PIXMAP" "POINT" "POLYGON" "POSTGIS" "QUERY" "RASTER" "ROUND" "SDE" "SELECTED" "SIMPLE" "SINGLE" "SMALL" "SQUARE" "TINY" "TRIANGLE" "TRUE" "TRUETYPE" "UC" "UL" "UR" "VECTOR" "WFS" "WMS"
    "annotation" "auto" "bevel" "bitmap" "butt" "cartoline" "cc" "circle" "cl" "cr" "csv" "dd" "default" "ellipse" "embed" "false" "feet" "giant" "hilite" "inches" "kilometers" "large" "lc" "line" "ll" "lr" "medium" "meters" "miles" "miter" "multiple" "mygis" "normal" "off" "ogr" "on" "one-to-many" "one-to-one" "oraclespatial" "pixels" "pixmap" "point" "polygon" "postgis" "query" "raster" "round" "sde" "selected" "simple" "single" "small" "square" "tiny" "triangle" "true" "truetype" "uc" "ul" "ur" "vector" "wfs" "wms"

    ;; other
    "CONFIG" "VALIDATION" "OPACITY"
    )
  nil
  '("\\.map$")                      ;; files for which to activate this mode
  nil                               ;; other functions to call
  "A mode for mapserver map files"
  )


;;;###autoload
(add-to-list 'auto-mode-alist '("\\.map\\'" . mapserver-mode))

(provide 'mapserver-mode)


;;; mapserver-mode.el ends here
