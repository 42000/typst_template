#import "preamble.typ": *
#import "preamble.typ": cea_table as table

#set text(font: ("DejaVu Sans"), size: 10pt)

// Variable globales du document
#let _title = "Sample Title"
#let _subtitle = "sample subtitle"
#let _author = "Tim SICARD"
#show "TBD" : it => { tbd[#it] }

#page_garde(
  _title: _title,
  _subtitle: _subtitle,
  author: _author,

  logo_l: image("assets/KUL.png", width: 13em),
  logo_r: image("assets/cesi.jpg", width: 10em),
  text_l : [
    Another collaborator\
    CEA/DRF/Irfu/DIS/LEI
  ],
  text_r: [
    JELASSI Sana\
    CESI/FISA S3E\
  ],
  distribution_header: true,
  distribution_limited: false,
)
#show: cea-theme.with(
  title: _title,
  author: _author,
  outline_title: "Sommaire",
  list_tables: true,
  list_figs: true,
  list_tables_name: "List of tables",
  list_figs_name: "List of figures",

  logo_l: image("assets/KUL.png", height: 60%),
  color_rule: rgb("#00a0ff"),
)

#show raw.where(lang:"zsh"): it=>{block(fill:rgb("#eeeeee"),inset:1.5em,width:99%,text(0.83em, it))}
//================ EVERYTHING FROM HERE CAN BE REMOVED
#heading(numbering: none)[Summary]

This is an example header

= Section Example <ex_ref>

Here is an example section

== Subsection

Subsection stuff with ref @ex_ref

bullet list :
- lol
- ok

ordered list :
+ lol
+ ok

inline code : ```bash sudo rm -rf --no-preserve-root /```

code block (can be configured for automatic) :
#block(
fill:rgb("#eeeeee"),inset:1.5em,width:99%,text(0.83em,
[
  ```python
  import os

  def main()
    os.remove()
  ```
]))
#figure(
  image("assets/KUL.png"),
  caption: [figure example]
)
This will get reference at the end
#note()[an author's note example]
#table(
  columns : (auto, 1fr, auto),
  caption: [table example],
  [column],[ok],[again?],
  [ok],[lol],[ok],
  [ok],[test test test],[ok],
  [ok],[lol],[ok],
  [ok],[lol],[ok],
)
