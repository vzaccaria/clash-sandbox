var generateProject = require('diy').generateProject


generateProject(function (_) {

  _.collect("all", function (_) {
    _.cmd("clash --vhdl aes.hs")
  })

  _.collect("clean", function (_) {
    _.cmd("rm -rf vhdl")
    _.cmd("rm *.hi *.o *.hs *.s")
  })
})