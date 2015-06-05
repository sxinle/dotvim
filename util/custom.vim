let g:airline#themes#custom#palette = {}

" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
" values for the "opt" value.
"
let s:guibg = '#080808'
let s:guibg2 = '#1c1c1c'
let s:termbg = 232
let s:termbg2= 234

let s:N1 = [ '#000000', '#00FF00' , 232 , 82 ]
let s:N2 = [ '#ffffff' , 'OrangeRed' , 232 , 202 ]
let s:N3   = [ '#9cffd3' , '#202020' , 85  , 234 ]
let g:airline#themes#custom#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#custom#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ 'darkblue' , '#00dfff' , 17  , 45  ]
let s:I2 = [ '#eeeeee' , '#005fff' , 255 , 27  ]
let s:I3 = [ '#87d7ff' , 'darkblue' , 117 , 24  ]
let g:airline#themes#custom#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let g:airline#themes#custom#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#custom#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#custom#palette.replace = copy(g:airline#themes#custom#palette.insert)
let g:airline#themes#custom#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#custom#palette.replace_modified = g:airline#themes#custom#palette.insert_modified

let s:V1 = [ '#ffffff' , 'OrangeRed' , 232 , 202 ]
let s:V2 = [ s:guibg, '#00FF00' , s:termbg , 82 ]
let s:V3 = [ '#ffffff' , '#5f0000' , 15  , 52  ]

let g:airline#themes#custom#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#custom#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:IA3 = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]

let g:airline#themes#custom#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#custom#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }

let g:airline#themes#custom#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }
"#ff0f38
let s:WI = [ '#EEEEEE', '#ff0f38', 255, 201 ]
let g:airline#themes#custom#palette.normal.airline_warning = [
     \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
     \ ]

let g:airline#themes#custom#palette.insert.airline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning

let g:airline#themes#custom#palette.insert_modified.airline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning

let g:airline#themes#custom#palette.visual.airline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning

let g:airline#themes#custom#palette.visual_modified.airline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning

let g:airline#themes#custom#palette.replace.airline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning

let g:airline#themes#custom#palette.replace_modified.airline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning

" add mods"{{{

let g:airline#themes#custom#palette.normal_modified.airline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning
let g:airline#themes#custom#palette.replace.aireline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning
let g:airline#themes#custom#palette.replace_modified.aireline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning
let g:airline#themes#custom#palette.inactive.aireline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning
let g:airline#themes#custom#palette.inactive_modified.aireline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning
let g:airline#themes#custom#palette.insert_paste.aireline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning
let g:airline#themes#custom#palette.accents.aireline_warning =
    \ g:airline#themes#custom#palette.normal.airline_warning


"}}}

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#custom#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
      \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
      \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])

