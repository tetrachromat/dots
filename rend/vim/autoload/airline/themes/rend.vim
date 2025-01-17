" Function definitions
function! s:MakeCol(fg, bg)
  return [ a:fg[1], a:bg[1], a:fg[0], a:bg[0] ]
endfun

" Color definitions

let s:white         = [255, "#fbf5f3"]
let s:light_gray    = [250, "#bcbcbc"]
let s:dark_gray     = [232, "#090909"]
let s:black         = [16,  "#030303"]
let s:pink          = [204, "#fe3198"]
let s:mint          = [50,  "#00fbc3"]
let s:yellow        = [220, "#eed202"]
let s:violet        = [92,  "#731dd8"]
let s:teal          = [45,  "#0fd7ff"]

let g:airline#themes#rend#palette = {}
let s:changed = s:MakeCol(s:pink, s:black)

let s:modified = s:MakeCol(s:pink, s:black)

" Normal mode
let s:N1 = s:MakeCol(s:black, s:mint)
let s:N2 = s:MakeCol(s:white, s:black)
let s:N3 = s:MakeCol(s:white, s:black)
let g:airline#themes#rend#palette.normal          = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#rend#palette.normal_modified = airline#themes#generate_color_map(s:N1, s:changed, s:changed)

" Insert mode
let s:I1 = s:MakeCol(s:black, s:pink)
let s:I2 = s:N2
let s:I3 = s:N3
let g:airline#themes#rend#palette.insert          = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#rend#palette.insert_modified = airline#themes#generate_color_map(s:I1, s:changed, s:changed)

" Visual mode
let s:V1 = s:MakeCol(s:black, s:teal)
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#rend#palette.visual          = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#rend#palette.visual_modified = airline#themes#generate_color_map(s:V1, s:changed, s:changed)

" Replace mode
let s:R1 = s:MakeCol(s:pink, s:black)
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#rend#palette.replace          = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#rend#palette.replace_modified = airline#themes#generate_color_map(s:R1, s:changed, s:changed)

" Inactive mode
let s:IN1 = s:MakeCol(s:light_gray, s:black)
let s:IN2 = s:MakeCol(s:light_gray, s:black)
let s:IN3 = s:MakeCol(s:light_gray, s:black)
let g:airline#themes#rend#palette.inactive         = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#rend#palette.replace_modified = airline#themes#generate_color_map(s:IN1, s:changed, s:changed)

" Warnings
let g:airline#themes#rend#palette.normal.airline_warning = [
 \ s:mint[1], s:black[1], s:mint[0], s:black[0]
 \ ]
let g:airline#themes#rend#palette.normal_modified.airline_warning =
\ g:airline#themes#rend#palette.normal.airline_warning
let g:airline#themes#rend#palette.insert.airline_warning =
\ g:airline#themes#rend#palette.normal.airline_warning
let g:airline#themes#rend#palette.insert_modified.airline_warning =
\ g:airline#themes#rend#palette.normal.airline_warning
let g:airline#themes#rend#palette.visual.airline_warning =
\ g:airline#themes#rend#palette.normal.airline_warning
let g:airline#themes#rend#palette.visual_modified.airline_warning =
\ g:airline#themes#rend#palette.normal.airline_warning
let g:airline#themes#rend#palette.replace.airline_warning =
\ g:airline#themes#rend#palette.normal.airline_warning
let g:airline#themes#rend#palette.replace_modified.airline_warning =
\ g:airline#themes#rend#palette.normal.airline_warning

" Errors
let g:airline#themes#rend#palette.normal.airline_error = [
 \ s:pink[1], s:black[1], s:pink[0], s:black[0]
 \ ]
let g:airline#themes#rend#palette.normal_modified.airline_error =
\ g:airline#themes#rend#palette.normal.airline_error
let g:airline#themes#rend#palette.insert.airline_error =
\ g:airline#themes#rend#palette.normal.airline_error
let g:airline#themes#rend#palette.insert_modified.airline_error =
\ g:airline#themes#rend#palette.normal.airline_error
let g:airline#themes#rend#palette.visual.airline_error =
\ g:airline#themes#rend#palette.normal.airline_error
let g:airline#themes#rend#palette.visual_modified.airline_error =
\ g:airline#themes#rend#palette.normal.airline_error
let g:airline#themes#rend#palette.replace.airline_error =
\ g:airline#themes#rend#palette.normal.airline_error
let g:airline#themes#rend#palette.replace_modified.airline_error =
\ g:airline#themes#rend#palette.normal.airline_error

