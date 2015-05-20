var generateProject = require('diy').generateProject

var path = require('path')

generateProject(function (_) {


  _.collect("all", function (_) {
    _.cmd("ghc --make AES.hs")
  })


  _.collect("clean", function (_) {
    _.cmd("rm -rf vhdl")
    _.cmd("rm -f *.hi *.o *.s *.dyn_hi *.dyn_o")
  })
})