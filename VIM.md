#Simple Vim cheatsheet (without plugins)

##Basic
`f` letter then `;` looks forward `,` looks backward
:%s/text-to-find/replacement-text/g - replace `text-to-find` with `replacement-text` (without confirmation)
:%s/text-to-find/replacement-text/gc - the same but with confirmation
:e filename - open filename to edit in a new buffer
`V` then `jj` to visually select lines, then `>` (`<`) to move block to the right (left); then you can type `.` to repeat the operation; or you can just use `3>>` or `4<<` to move 3 or 4 lines
`cw` - replace word
`cc` - replace string
`c$` - replace to the end of string
`ea` - append at the end of word
`aw` - select the whole word (in visual mode)

##Navigation
:Vex     - open a buffer to choose file
Ctrl+W+W - cycle between opened windows
Ctrl+W+C - close current window
Ctrl+W+Q - quit current window

##Buffers
:ls - list opened buffers
:bd - delete current buffer
:bn - next buffer
:bp - previous buffer

##Jumps
:jumps - display the jump list
Ctrl+O - jump to the previous visited location
Ctrl+I - jump to the next visited location
