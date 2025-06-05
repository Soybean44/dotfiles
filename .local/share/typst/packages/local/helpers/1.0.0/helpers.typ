#let genmat(n,m,f) = $mat(..#range(0,n).map(i => range(0,m).map(j => f(i,j))))$

#let code_blk(blk) = {
  show raw.where(block: true): it => {
    block(width: 100% - 0.5em, radius: 0.3em, stroke: luma(50%), inset: 1em, fill: luma(98%))[
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
