var generateProject = require('diy').generateProject


generateProject(function (_) {

  _.collect("all", function (_) {
    _.cmd("clash -iCrypto --vhdl Crypto/AES.hs")
    _.cmd("cat vhdl/AES/zuzdzf_4.vhdl")
  })

  _.collect("clean", function (_) {
    _.cmd("rm -rf vhdl")
    _.cmd("rm -f *.hi *.o *.s")
  })
})