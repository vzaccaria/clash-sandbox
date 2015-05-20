var generateProject = require('diy').generateProject

var path = require('path')

generateProject(function (_) {

  _.pandoc = (dir, ...deps) => {
    var command = (_) => `pandoc -s ${_.source} > ${_.product}`
    var product = (_) => `./docs/${path.basename(_.source)}.html`
    _.compileFiles(...([command, product, dir].concat(deps)))
  }

  _.collect("all", function (_) {
    _.cmd("clash -iCrypto --vhdl Crypto/AES.hs")
    _.cmd("cat vhdl/AES/zuzdzf_4.vhdl")
  })

  _.collect("doc", function (_) {
    _.pandoc("Crypto/*.lhs")
  })

  _.collect("edit", function (_) {
      _.cmd("watchman Crypto 'make doc && chromereload'")
  })
  

  _.collect("clean", function (_) {
    _.cmd("rm -rf vhdl")
    _.cmd("rm -f *.hi *.o *.s")
  })
})
