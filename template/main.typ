#import "../src/lib.typ": zine8

#set document(author: "Tom", title: "A4 Zen Zine Example")
#set text(font: "Calibri", size: 7pt, lang: "en")

// this page size is what the printer page size is
// if building a digital zine, the page will be re-set
// so that the PDF pages align with the zine page size
// and not the printer page size
#set page("a4")

// update heading rule to show that style is preserved
#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: zine8.with(
  // whether to make output PDF pages align with zine pages (true)
  // or have the zine pages located onto a printer page (false)
  // with this code, you can provide which kind you want on the command line
  //   typst compile input.typ output.pdf --input digital=(true|false)
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  // zine-page-margin: 0.25in // margin of zine pages
  draw-border: true // draw border boxes in printing mode
)

// provide your content pages in order and they
// are placed into the zine template positions.
// the content is wrapped before movement so that
// padding and alignment are respected.

= 1

#pagebreak()

== 2
#lorem(50)

#pagebreak()

== 3
#lorem(50)

#pagebreak()

= 4

#pagebreak()

= 5

#pagebreak()

= 6
#pagebreak()

= 7

#pagebreak()

= 8
