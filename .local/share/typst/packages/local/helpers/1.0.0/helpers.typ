#let genmat(n,m,f) = $mat(..#range(0,n).map(i => range(0,m).map(j => f(i,j))))$

#let catppucin_color(name) = {
  import "@preview/catppuccin:1.0.0": flavors
  flavors.mocha.colors.at(name).rgb
}

#let code_blk(blk, fill: luma(98%), stroke: luma(50%)) = {
  show raw.where(block: true): it => context {
    block(width: measure(it).width - 0.5em, radius: 0.3em, stroke: stroke, inset: 1em, fill: fill)[
      #show raw.line: l => context {
        box(width: measure([#it.lines.last().count]).width, align(right, text(fill: luma(50%))[#l.number]))
        h(0.5em)
        l.body
      }
      #it
    ]
  }
  blk
}

#let code_blk_dfn(body, fill: luma(98%), stroke: luma(50%)) = {
  show raw.where(block: true): it => context {
    block(width: measure(it).width - 0.5em, radius: 0.3em, stroke: stroke, inset: 1em, fill: fill)[
      #show raw.line: l => context {
        box(width: measure([#it.lines.last().count]).width, align(right, text(fill: luma(50%))[#l.number]))
        h(0.5em)
        l.body
      }
      #it
    ]
  }
  body
}
