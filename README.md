# cmark.vim

The included vim syntax file adds appropriate highlighting for cmark.  
Files ending with `.cm` are automatically set to the filetype `cmark`.

## Additions

### Keywords

Note lines are underlined and highlighted green.  
Todo lines are underlined and highlighted magenta.  
Warning lines are underlined and highlighted red.  

## URLs

URLs are automatically detected and underlined as long as `://` is contained in
the link.

## Character Concealing

A number of characters will be automatically concealed.  
This has no functional purpose, I just like the look of them.
```
<-   ←
->   →
<->  ↔
<=   ⇐
=>   ⇒
<=>  ⇔
()   ○
<>   ◊
[]   □
ae   æ
oe   œ
```
