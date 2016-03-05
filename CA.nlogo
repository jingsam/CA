extensions [gis]

patches-own [cx1 cx2 cx3 cx4 cx5 cx6 cx7 cx8 cx9 cx10 cx11 cx12 ctown cforbid ccity temp]



to setup
  import-x1
  import-x2
  import-x3
  import-x4
  import-x5
  import-x6
  import-x7
  import-x8
  import-x9
  import-x10
  import-x11
  import-x12
  import-town
  import-forbid
  import-city


end


to go

end


to import-x1
  let data gis:load-dataset x1
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx1
end

to display-x1
  import-x1

  ask patches[
    set pcolor white

    if cx1 >= 0 [set pcolor scale-color black cx1 0 40]
  ]
end

to import-x2
  let data gis:load-dataset x2
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx2
end

to display-x2
  import-x2

  ask patches[
    set pcolor white

    if cx2 >= 0 [set pcolor scale-color black cx2 3 1]
  ]
end

to import-x3
  let data gis:load-dataset x3
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx3
end

to display-x3
  import-x3

  ask patches[
    set pcolor white

    if cx3 >= 0 [set pcolor scale-color black cx3 0 20000]
  ]
end

to import-x4
  let data gis:load-dataset x4
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx4
end

to display-x4
  import-x4

  ask patches[
    set pcolor white

    if cx4 >= 0 [set pcolor scale-color black cx4 0 48000]
  ]
end

to import-x5
  let data gis:load-dataset x5
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx5
end

to display-x5
  import-x5

  ask patches[
    set pcolor white

    if cx5 >= 0 [set pcolor scale-color black cx5 0 57000]
  ]
end

to import-x6
  let data gis:load-dataset x6
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx6
end

to display-x6
  import-x6

  ask patches[
    set pcolor white

    if cx6 >= 0 [set pcolor scale-color black cx6 0 88000]
  ]
end

to import-x7
  let data gis:load-dataset x7
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx7
end

to display-x7
  import-x7

  ask patches[
    set pcolor white

    if cx7 >= 0 [set pcolor scale-color black cx7 0 36000]
  ]
end

to import-x8
  let data gis:load-dataset x8
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx8
end

to display-x8
  import-x8

  ask patches[
    set pcolor white

    if cx8 >= 0 [set pcolor scale-color black cx8 0 32000]
  ]
end

to import-x9
  let data gis:load-dataset x9
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx9
end

to display-x9
  import-x9

  ask patches[
    set pcolor white

    if cx9 >= 0 [set pcolor scale-color black cx9 0 54000]
  ]
end

to import-x10
  let data gis:load-dataset x10
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx10
end

to display-x10
  import-x10

  ask patches[
    set pcolor white

    if cx10 >= 0 [set pcolor scale-color black cx10 0 19000]
  ]
end

to import-x11
  let data gis:load-dataset x11
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx11
end

to display-x11
  import-x11

  ask patches[
    set pcolor white

    if cx11 >= 0 [set pcolor scale-color black cx11 0 75000]
  ]
end

to import-x12
  let data gis:load-dataset x12
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cx12
end

to display-x12
  import-x12

  ask patches[
    set pcolor white

    if cx12 >= 0 [set pcolor scale-color black cx12 0 1200]
  ]
end

to import-town
  let data gis:load-dataset town
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data ctown
end

to display-town
  import-town

  ask patches[
    set pcolor white

    if ctown >= 0 [set pcolor ctown]
  ]
end

to import-forbid
  let data gis:load-dataset forbid
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data cforbid
end

to display-forbid
  import-forbid

  ask patches[
    set pcolor white

    if cforbid >= 0 [set pcolor scale-color black cforbid 0 1]
  ]
end

to import-city
  let data gis:load-dataset city
  gis:set-world-envelope (gis:envelope-of data)
  gis:apply-raster data ccity
end

to display-city
  import-city

  ask patches[
    set pcolor white

    if ccity >= 0 [set pcolor scale-color black ccity 0 100]
  ]
end

@#$#@#$#@
GRAPHICS-WINDOW
560
10
1451
1067
-1
-1
1.0
1
10
1
1
1
0
0
0
1
0
880
0
1025
0
0
1
迭代次数
30.0

BUTTON
17
35
98
68
初始化
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
105
35
192
68
模拟一代
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
200
35
280
68
模拟
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
18
10
168
28
控制面板
16
0.0
1

TEXTBOX
20
165
170
183
回归系数
18
0.0
1

INPUTBOX
220
260
420
320
x1
data\\x1.asc
1
0
String

BUTTON
425
260
480
320
打开
set x1 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
260
540
320
查看
display-x1
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
130
260
215
320
b1
0.046205
1
0
Number

BUTTON
20
260
125
316
坡度
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
325
125
385
城市功能空间分区
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
130
325
215
385
b2
-0.987859
1
0
Number

INPUTBOX
220
325
420
385
x2
data\\x2.asc
1
0
String

BUTTON
425
325
480
385
打开
set x2 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
325
540
385
查看
display-x2
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
390
480
450
打开
set x3 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
390
540
450
查看
display-x3
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
455
480
515
打开
set x4 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
130
390
215
450
b3
-1.3E-5
1
0
Number

INPUTBOX
130
455
215
515
b4
2.8E-5
1
0
Number

INPUTBOX
130
520
215
580
b5
-1.0E-6
1
0
Number

INPUTBOX
130
585
215
645
b6
-2.0E-5
1
0
Number

INPUTBOX
130
650
215
710
b7
6.0E-6
1
0
Number

INPUTBOX
220
390
420
450
x3
data\\x3.asc
1
0
String

INPUTBOX
220
455
420
515
x4
data\\x4.asc
1
0
String

INPUTBOX
220
520
420
580
x5
data\\x5.asc
1
0
String

INPUTBOX
220
585
420
645
x6
data\\x6.asc
1
0
String

INPUTBOX
220
650
420
710
x7
data\\x7.asc
1
0
String

INPUTBOX
220
715
420
775
x8
data\\x8.asc
1
0
String

INPUTBOX
220
780
420
840
x9
data\\x9.asc
1
0
String

INPUTBOX
220
845
420
905
x10
data\\x10.asc
1
0
String

INPUTBOX
220
910
420
970
x11
data\\x11.asc
1
0
String

INPUTBOX
220
975
420
1035
x12
data\\x12.asc
1
0
String

INPUTBOX
130
715
215
775
b8
-7.0E-6
1
0
Number

INPUTBOX
130
780
215
840
b9
-1.03E-4
1
0
Number

INPUTBOX
130
845
215
905
b10
-2.45E-4
1
0
Number

INPUTBOX
130
910
215
970
b11
4.0E-6
1
0
Number

INPUTBOX
130
975
215
1035
b12
0.085226
1
0
Number

BUTTON
20
390
125
450
次干道
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
455
125
515
高速公路
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
520
125
580
湖泊
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
585
480
645
打开
set x6 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
520
540
580
查看
display-x5
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
455
540
515
查看
display-x4
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
585
540
645
查看
display-x6
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
650
540
710
查看
display-x7
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
650
480
710
打开
set x7 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
520
480
580
打开
set x5 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
715
540
775
查看
display-x8
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
715
480
775
打开
set x8 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
975
125
1035
场强
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
845
125
901
主干道
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
650
125
706
一般河流
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
585
125
641
市中心
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
780
480
840
打开
set x9 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
910
125
966
主要河流
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
715
125
771
中心镇
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
780
125
836
重点镇
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
975
540
1035
查看
display-x12
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
910
480
970
打开
set x11 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
845
540
905
查看
display-x10
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
845
480
905
打开
set x10 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
910
540
970
查看
display-x11
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
975
480
1035
打开
set x12 user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
780
540
840
查看
display-x9
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
130
195
215
255
a
3.826052
1
0
Number

TEXTBOX
20
85
170
105
随机因子
18
0.0
1

BUTTON
20
195
125
255
常量
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
20
110
220
143
rnd
rnd
1
10
1
1
1
NIL
HORIZONTAL

BUTTON
285
35
365
68
结果输出
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
130
1105
420
1165
town
data\\town.asc
1
0
String

INPUTBOX
130
1170
420
1230
forbid
data\\forbid.asc
1
0
String

INPUTBOX
130
1235
420
1295
city
data\\city.asc
1
0
String

BUTTON
485
1105
540
1165
查看
display-town
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
1170
480
1230
打开
set forbid user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
1105
480
1165
打开
set town user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
1170
540
1230
查看
display-forbid
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
425
1235
480
1295
打开
set city user-file
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
485
1235
540
1295
查看
display-city
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
1105
125
1161
镇域边界
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
1235
125
1291
城镇用地
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
1170
125
1226
禁止开发区
NIL
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
20
1070
170
1095
其他数据
18
0.0
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 5.3
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="experiment" repetitions="1" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>count turtles</metric>
    <enumeratedValueSet variable="max-distance">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="compact-weight">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="village-data">
      <value value="&quot;data\\HP\\village.asc&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="suit-weight">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="output">
      <value value="&quot;&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="projection">
      <value value="&quot;WGS_84_Geographic&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="forbid-data">
      <value value="&quot;data\\HP\\forbid.asc&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="save-ratio">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="id-data">
      <value value="&quot;data\\HP\\id.asc&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="suit-data">
      <value value="&quot;data\\HP\\suit.asc&quot;"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180

@#$#@#$#@
1
@#$#@#$#@
