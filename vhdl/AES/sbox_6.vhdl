-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity sbox_6 is
  port(ds_i1    : in unsigned(7 downto 0);
       topLet_o : out unsigned(7 downto 0));
end;

architecture structural of sbox_6 is
  signal subjLet_0   : boolean;
  signal subjLet_1   : boolean;
  signal altLet_2    : unsigned(7 downto 0);
  signal subjLet_3   : boolean;
  signal altLet_4    : unsigned(7 downto 0);
  signal subjLet_5   : boolean;
  signal altLet_6    : unsigned(7 downto 0);
  signal subjLet_7   : boolean;
  signal altLet_8    : unsigned(7 downto 0);
  signal subjLet_9   : boolean;
  signal altLet_10   : unsigned(7 downto 0);
  signal subjLet_11  : boolean;
  signal altLet_12   : unsigned(7 downto 0);
  signal subjLet_13  : boolean;
  signal altLet_14   : unsigned(7 downto 0);
  signal subjLet_15  : boolean;
  signal altLet_16   : unsigned(7 downto 0);
  signal subjLet_17  : boolean;
  signal altLet_18   : unsigned(7 downto 0);
  signal subjLet_19  : boolean;
  signal altLet_20   : unsigned(7 downto 0);
  signal subjLet_21  : boolean;
  signal altLet_22   : unsigned(7 downto 0);
  signal subjLet_23  : boolean;
  signal altLet_24   : unsigned(7 downto 0);
  signal subjLet_25  : boolean;
  signal altLet_26   : unsigned(7 downto 0);
  signal subjLet_27  : boolean;
  signal altLet_28   : unsigned(7 downto 0);
  signal subjLet_29  : boolean;
  signal altLet_30   : unsigned(7 downto 0);
  signal subjLet_31  : boolean;
  signal altLet_32   : unsigned(7 downto 0);
  signal subjLet_33  : boolean;
  signal altLet_34   : unsigned(7 downto 0);
  signal subjLet_35  : boolean;
  signal altLet_36   : unsigned(7 downto 0);
  signal subjLet_37  : boolean;
  signal altLet_38   : unsigned(7 downto 0);
  signal subjLet_39  : boolean;
  signal altLet_40   : unsigned(7 downto 0);
  signal subjLet_41  : boolean;
  signal altLet_42   : unsigned(7 downto 0);
  signal subjLet_43  : boolean;
  signal altLet_44   : unsigned(7 downto 0);
  signal subjLet_45  : boolean;
  signal altLet_46   : unsigned(7 downto 0);
  signal subjLet_47  : boolean;
  signal altLet_48   : unsigned(7 downto 0);
  signal subjLet_49  : boolean;
  signal altLet_50   : unsigned(7 downto 0);
  signal subjLet_51  : boolean;
  signal altLet_52   : unsigned(7 downto 0);
  signal subjLet_53  : boolean;
  signal altLet_54   : unsigned(7 downto 0);
  signal subjLet_55  : boolean;
  signal altLet_56   : unsigned(7 downto 0);
  signal subjLet_57  : boolean;
  signal altLet_58   : unsigned(7 downto 0);
  signal subjLet_59  : boolean;
  signal altLet_60   : unsigned(7 downto 0);
  signal subjLet_61  : boolean;
  signal altLet_62   : unsigned(7 downto 0);
  signal subjLet_63  : boolean;
  signal altLet_64   : unsigned(7 downto 0);
  signal subjLet_65  : boolean;
  signal altLet_66   : unsigned(7 downto 0);
  signal subjLet_67  : boolean;
  signal altLet_68   : unsigned(7 downto 0);
  signal subjLet_69  : boolean;
  signal altLet_70   : unsigned(7 downto 0);
  signal subjLet_71  : boolean;
  signal altLet_72   : unsigned(7 downto 0);
  signal subjLet_73  : boolean;
  signal altLet_74   : unsigned(7 downto 0);
  signal subjLet_75  : boolean;
  signal altLet_76   : unsigned(7 downto 0);
  signal subjLet_77  : boolean;
  signal altLet_78   : unsigned(7 downto 0);
  signal subjLet_79  : boolean;
  signal altLet_80   : unsigned(7 downto 0);
  signal subjLet_81  : boolean;
  signal altLet_82   : unsigned(7 downto 0);
  signal subjLet_83  : boolean;
  signal altLet_84   : unsigned(7 downto 0);
  signal subjLet_85  : boolean;
  signal altLet_86   : unsigned(7 downto 0);
  signal subjLet_87  : boolean;
  signal altLet_88   : unsigned(7 downto 0);
  signal subjLet_89  : boolean;
  signal altLet_90   : unsigned(7 downto 0);
  signal subjLet_91  : boolean;
  signal altLet_92   : unsigned(7 downto 0);
  signal subjLet_93  : boolean;
  signal altLet_94   : unsigned(7 downto 0);
  signal subjLet_95  : boolean;
  signal altLet_96   : unsigned(7 downto 0);
  signal subjLet_97  : boolean;
  signal altLet_98   : unsigned(7 downto 0);
  signal subjLet_99  : boolean;
  signal altLet_100  : unsigned(7 downto 0);
  signal subjLet_101 : boolean;
  signal altLet_102  : unsigned(7 downto 0);
  signal subjLet_103 : boolean;
  signal altLet_104  : unsigned(7 downto 0);
  signal subjLet_105 : boolean;
  signal altLet_106  : unsigned(7 downto 0);
  signal subjLet_107 : boolean;
  signal altLet_108  : unsigned(7 downto 0);
  signal subjLet_109 : boolean;
  signal altLet_110  : unsigned(7 downto 0);
  signal subjLet_111 : boolean;
  signal altLet_112  : unsigned(7 downto 0);
  signal subjLet_113 : boolean;
  signal altLet_114  : unsigned(7 downto 0);
  signal subjLet_115 : boolean;
  signal altLet_116  : unsigned(7 downto 0);
  signal subjLet_117 : boolean;
  signal altLet_118  : unsigned(7 downto 0);
  signal subjLet_119 : boolean;
  signal altLet_120  : unsigned(7 downto 0);
  signal subjLet_121 : boolean;
  signal altLet_122  : unsigned(7 downto 0);
  signal subjLet_123 : boolean;
  signal altLet_124  : unsigned(7 downto 0);
  signal subjLet_125 : boolean;
  signal altLet_126  : unsigned(7 downto 0);
  signal subjLet_127 : boolean;
  signal altLet_128  : unsigned(7 downto 0);
  signal subjLet_129 : boolean;
  signal altLet_130  : unsigned(7 downto 0);
  signal subjLet_131 : boolean;
  signal altLet_132  : unsigned(7 downto 0);
  signal subjLet_133 : boolean;
  signal altLet_134  : unsigned(7 downto 0);
  signal subjLet_135 : boolean;
  signal altLet_136  : unsigned(7 downto 0);
  signal subjLet_137 : boolean;
  signal altLet_138  : unsigned(7 downto 0);
  signal subjLet_139 : boolean;
  signal altLet_140  : unsigned(7 downto 0);
  signal subjLet_141 : boolean;
  signal altLet_142  : unsigned(7 downto 0);
  signal subjLet_143 : boolean;
  signal altLet_144  : unsigned(7 downto 0);
  signal subjLet_145 : boolean;
  signal altLet_146  : unsigned(7 downto 0);
  signal subjLet_147 : boolean;
  signal altLet_148  : unsigned(7 downto 0);
  signal subjLet_149 : boolean;
  signal altLet_150  : unsigned(7 downto 0);
  signal subjLet_151 : boolean;
  signal altLet_152  : unsigned(7 downto 0);
  signal subjLet_153 : boolean;
  signal altLet_154  : unsigned(7 downto 0);
  signal subjLet_155 : boolean;
  signal altLet_156  : unsigned(7 downto 0);
  signal subjLet_157 : boolean;
  signal altLet_158  : unsigned(7 downto 0);
  signal subjLet_159 : boolean;
  signal altLet_160  : unsigned(7 downto 0);
  signal subjLet_161 : boolean;
  signal altLet_162  : unsigned(7 downto 0);
  signal subjLet_163 : boolean;
  signal altLet_164  : unsigned(7 downto 0);
  signal subjLet_165 : boolean;
  signal altLet_166  : unsigned(7 downto 0);
  signal subjLet_167 : boolean;
  signal altLet_168  : unsigned(7 downto 0);
  signal subjLet_169 : boolean;
  signal altLet_170  : unsigned(7 downto 0);
  signal subjLet_171 : boolean;
  signal altLet_172  : unsigned(7 downto 0);
  signal subjLet_173 : boolean;
  signal altLet_174  : unsigned(7 downto 0);
  signal subjLet_175 : boolean;
  signal altLet_176  : unsigned(7 downto 0);
  signal subjLet_177 : boolean;
  signal altLet_178  : unsigned(7 downto 0);
  signal subjLet_179 : boolean;
  signal altLet_180  : unsigned(7 downto 0);
  signal subjLet_181 : boolean;
  signal altLet_182  : unsigned(7 downto 0);
  signal subjLet_183 : boolean;
  signal altLet_184  : unsigned(7 downto 0);
  signal subjLet_185 : boolean;
  signal altLet_186  : unsigned(7 downto 0);
  signal subjLet_187 : boolean;
  signal altLet_188  : unsigned(7 downto 0);
  signal subjLet_189 : boolean;
  signal altLet_190  : unsigned(7 downto 0);
  signal subjLet_191 : boolean;
  signal altLet_192  : unsigned(7 downto 0);
  signal subjLet_193 : boolean;
  signal altLet_194  : unsigned(7 downto 0);
  signal subjLet_195 : boolean;
  signal altLet_196  : unsigned(7 downto 0);
  signal subjLet_197 : boolean;
  signal altLet_198  : unsigned(7 downto 0);
  signal subjLet_199 : boolean;
  signal altLet_200  : unsigned(7 downto 0);
  signal subjLet_201 : boolean;
  signal altLet_202  : unsigned(7 downto 0);
  signal subjLet_203 : boolean;
  signal altLet_204  : unsigned(7 downto 0);
  signal subjLet_205 : boolean;
  signal altLet_206  : unsigned(7 downto 0);
  signal subjLet_207 : boolean;
  signal altLet_208  : unsigned(7 downto 0);
  signal subjLet_209 : boolean;
  signal altLet_210  : unsigned(7 downto 0);
  signal subjLet_211 : boolean;
  signal altLet_212  : unsigned(7 downto 0);
  signal subjLet_213 : boolean;
  signal altLet_214  : unsigned(7 downto 0);
  signal subjLet_215 : boolean;
  signal altLet_216  : unsigned(7 downto 0);
  signal subjLet_217 : boolean;
  signal altLet_218  : unsigned(7 downto 0);
  signal subjLet_219 : boolean;
  signal altLet_220  : unsigned(7 downto 0);
  signal subjLet_221 : boolean;
  signal altLet_222  : unsigned(7 downto 0);
  signal subjLet_223 : boolean;
  signal altLet_224  : unsigned(7 downto 0);
  signal subjLet_225 : boolean;
  signal altLet_226  : unsigned(7 downto 0);
  signal subjLet_227 : boolean;
  signal altLet_228  : unsigned(7 downto 0);
  signal subjLet_229 : boolean;
  signal altLet_230  : unsigned(7 downto 0);
  signal subjLet_231 : boolean;
  signal altLet_232  : unsigned(7 downto 0);
  signal subjLet_233 : boolean;
  signal altLet_234  : unsigned(7 downto 0);
  signal subjLet_235 : boolean;
  signal altLet_236  : unsigned(7 downto 0);
  signal subjLet_237 : boolean;
  signal altLet_238  : unsigned(7 downto 0);
  signal subjLet_239 : boolean;
  signal altLet_240  : unsigned(7 downto 0);
  signal subjLet_241 : boolean;
  signal altLet_242  : unsigned(7 downto 0);
  signal subjLet_243 : boolean;
  signal altLet_244  : unsigned(7 downto 0);
  signal subjLet_245 : boolean;
  signal altLet_246  : unsigned(7 downto 0);
  signal subjLet_247 : boolean;
  signal altLet_248  : unsigned(7 downto 0);
  signal subjLet_249 : boolean;
  signal altLet_250  : unsigned(7 downto 0);
  signal subjLet_251 : boolean;
  signal altLet_252  : unsigned(7 downto 0);
  signal subjLet_253 : boolean;
  signal altLet_254  : unsigned(7 downto 0);
  signal subjLet_255 : boolean;
  signal altLet_256  : unsigned(7 downto 0);
  signal subjLet_257 : boolean;
  signal altLet_258  : unsigned(7 downto 0);
  signal subjLet_259 : boolean;
  signal altLet_260  : unsigned(7 downto 0);
  signal subjLet_261 : boolean;
  signal altLet_262  : unsigned(7 downto 0);
  signal subjLet_263 : boolean;
  signal altLet_264  : unsigned(7 downto 0);
  signal subjLet_265 : boolean;
  signal altLet_266  : unsigned(7 downto 0);
  signal subjLet_267 : boolean;
  signal altLet_268  : unsigned(7 downto 0);
  signal subjLet_269 : boolean;
  signal altLet_270  : unsigned(7 downto 0);
  signal subjLet_271 : boolean;
  signal altLet_272  : unsigned(7 downto 0);
  signal subjLet_273 : boolean;
  signal altLet_274  : unsigned(7 downto 0);
  signal subjLet_275 : boolean;
  signal altLet_276  : unsigned(7 downto 0);
  signal subjLet_277 : boolean;
  signal altLet_278  : unsigned(7 downto 0);
  signal subjLet_279 : boolean;
  signal altLet_280  : unsigned(7 downto 0);
  signal subjLet_281 : boolean;
  signal altLet_282  : unsigned(7 downto 0);
  signal subjLet_283 : boolean;
  signal altLet_284  : unsigned(7 downto 0);
  signal subjLet_285 : boolean;
  signal altLet_286  : unsigned(7 downto 0);
  signal subjLet_287 : boolean;
  signal altLet_288  : unsigned(7 downto 0);
  signal subjLet_289 : boolean;
  signal altLet_290  : unsigned(7 downto 0);
  signal subjLet_291 : boolean;
  signal altLet_292  : unsigned(7 downto 0);
  signal subjLet_293 : boolean;
  signal altLet_294  : unsigned(7 downto 0);
  signal subjLet_295 : boolean;
  signal altLet_296  : unsigned(7 downto 0);
  signal subjLet_297 : boolean;
  signal altLet_298  : unsigned(7 downto 0);
  signal subjLet_299 : boolean;
  signal altLet_300  : unsigned(7 downto 0);
  signal subjLet_301 : boolean;
  signal altLet_302  : unsigned(7 downto 0);
  signal subjLet_303 : boolean;
  signal altLet_304  : unsigned(7 downto 0);
  signal subjLet_305 : boolean;
  signal altLet_306  : unsigned(7 downto 0);
  signal subjLet_307 : boolean;
  signal altLet_308  : unsigned(7 downto 0);
  signal subjLet_309 : boolean;
  signal altLet_310  : unsigned(7 downto 0);
  signal subjLet_311 : boolean;
  signal altLet_312  : unsigned(7 downto 0);
  signal subjLet_313 : boolean;
  signal altLet_314  : unsigned(7 downto 0);
  signal subjLet_315 : boolean;
  signal altLet_316  : unsigned(7 downto 0);
  signal subjLet_317 : boolean;
  signal altLet_318  : unsigned(7 downto 0);
  signal subjLet_319 : boolean;
  signal altLet_320  : unsigned(7 downto 0);
  signal subjLet_321 : boolean;
  signal altLet_322  : unsigned(7 downto 0);
  signal subjLet_323 : boolean;
  signal altLet_324  : unsigned(7 downto 0);
  signal subjLet_325 : boolean;
  signal altLet_326  : unsigned(7 downto 0);
  signal subjLet_327 : boolean;
  signal altLet_328  : unsigned(7 downto 0);
  signal subjLet_329 : boolean;
  signal altLet_330  : unsigned(7 downto 0);
  signal subjLet_331 : boolean;
  signal altLet_332  : unsigned(7 downto 0);
  signal subjLet_333 : boolean;
  signal altLet_334  : unsigned(7 downto 0);
  signal subjLet_335 : boolean;
  signal altLet_336  : unsigned(7 downto 0);
  signal subjLet_337 : boolean;
  signal altLet_338  : unsigned(7 downto 0);
  signal subjLet_339 : boolean;
  signal altLet_340  : unsigned(7 downto 0);
  signal subjLet_341 : boolean;
  signal altLet_342  : unsigned(7 downto 0);
  signal subjLet_343 : boolean;
  signal altLet_344  : unsigned(7 downto 0);
  signal subjLet_345 : boolean;
  signal altLet_346  : unsigned(7 downto 0);
  signal subjLet_347 : boolean;
  signal altLet_348  : unsigned(7 downto 0);
  signal subjLet_349 : boolean;
  signal altLet_350  : unsigned(7 downto 0);
  signal subjLet_351 : boolean;
  signal altLet_352  : unsigned(7 downto 0);
  signal subjLet_353 : boolean;
  signal altLet_354  : unsigned(7 downto 0);
  signal subjLet_355 : boolean;
  signal altLet_356  : unsigned(7 downto 0);
  signal subjLet_357 : boolean;
  signal altLet_358  : unsigned(7 downto 0);
  signal subjLet_359 : boolean;
  signal altLet_360  : unsigned(7 downto 0);
  signal subjLet_361 : boolean;
  signal altLet_362  : unsigned(7 downto 0);
  signal subjLet_363 : boolean;
  signal altLet_364  : unsigned(7 downto 0);
  signal subjLet_365 : boolean;
  signal altLet_366  : unsigned(7 downto 0);
  signal subjLet_367 : boolean;
  signal altLet_368  : unsigned(7 downto 0);
  signal subjLet_369 : boolean;
  signal altLet_370  : unsigned(7 downto 0);
  signal subjLet_371 : boolean;
  signal altLet_372  : unsigned(7 downto 0);
  signal subjLet_373 : boolean;
  signal altLet_374  : unsigned(7 downto 0);
  signal subjLet_375 : boolean;
  signal altLet_376  : unsigned(7 downto 0);
  signal subjLet_377 : boolean;
  signal altLet_378  : unsigned(7 downto 0);
  signal subjLet_379 : boolean;
  signal altLet_380  : unsigned(7 downto 0);
  signal subjLet_381 : boolean;
  signal altLet_382  : unsigned(7 downto 0);
  signal subjLet_383 : boolean;
  signal altLet_384  : unsigned(7 downto 0);
  signal subjLet_385 : boolean;
  signal altLet_386  : unsigned(7 downto 0);
  signal subjLet_387 : boolean;
  signal altLet_388  : unsigned(7 downto 0);
  signal subjLet_389 : boolean;
  signal altLet_390  : unsigned(7 downto 0);
  signal subjLet_391 : boolean;
  signal altLet_392  : unsigned(7 downto 0);
  signal subjLet_393 : boolean;
  signal altLet_394  : unsigned(7 downto 0);
  signal subjLet_395 : boolean;
  signal altLet_396  : unsigned(7 downto 0);
  signal subjLet_397 : boolean;
  signal altLet_398  : unsigned(7 downto 0);
  signal subjLet_399 : boolean;
  signal altLet_400  : unsigned(7 downto 0);
  signal subjLet_401 : boolean;
  signal altLet_402  : unsigned(7 downto 0);
  signal subjLet_403 : boolean;
  signal altLet_404  : unsigned(7 downto 0);
  signal subjLet_405 : boolean;
  signal altLet_406  : unsigned(7 downto 0);
  signal subjLet_407 : boolean;
  signal altLet_408  : unsigned(7 downto 0);
  signal subjLet_409 : boolean;
  signal altLet_410  : unsigned(7 downto 0);
  signal subjLet_411 : boolean;
  signal altLet_412  : unsigned(7 downto 0);
  signal subjLet_413 : boolean;
  signal altLet_414  : unsigned(7 downto 0);
  signal subjLet_415 : boolean;
  signal altLet_416  : unsigned(7 downto 0);
  signal subjLet_417 : boolean;
  signal altLet_418  : unsigned(7 downto 0);
  signal subjLet_419 : boolean;
  signal altLet_420  : unsigned(7 downto 0);
  signal subjLet_421 : boolean;
  signal altLet_422  : unsigned(7 downto 0);
  signal subjLet_423 : boolean;
  signal altLet_424  : unsigned(7 downto 0);
  signal subjLet_425 : boolean;
  signal altLet_426  : unsigned(7 downto 0);
  signal subjLet_427 : boolean;
  signal altLet_428  : unsigned(7 downto 0);
  signal subjLet_429 : boolean;
  signal altLet_430  : unsigned(7 downto 0);
  signal subjLet_431 : boolean;
  signal altLet_432  : unsigned(7 downto 0);
  signal subjLet_433 : boolean;
  signal altLet_434  : unsigned(7 downto 0);
  signal subjLet_435 : boolean;
  signal altLet_436  : unsigned(7 downto 0);
  signal subjLet_437 : boolean;
  signal altLet_438  : unsigned(7 downto 0);
  signal subjLet_439 : boolean;
  signal altLet_440  : unsigned(7 downto 0);
  signal subjLet_441 : boolean;
  signal altLet_442  : unsigned(7 downto 0);
  signal subjLet_443 : boolean;
  signal altLet_444  : unsigned(7 downto 0);
  signal subjLet_445 : boolean;
  signal altLet_446  : unsigned(7 downto 0);
  signal subjLet_447 : boolean;
  signal altLet_448  : unsigned(7 downto 0);
  signal subjLet_449 : boolean;
  signal altLet_450  : unsigned(7 downto 0);
  signal subjLet_451 : boolean;
  signal altLet_452  : unsigned(7 downto 0);
  signal subjLet_453 : boolean;
  signal altLet_454  : unsigned(7 downto 0);
  signal subjLet_455 : boolean;
  signal altLet_456  : unsigned(7 downto 0);
  signal subjLet_457 : boolean;
  signal altLet_458  : unsigned(7 downto 0);
  signal subjLet_459 : boolean;
  signal altLet_460  : unsigned(7 downto 0);
  signal subjLet_461 : boolean;
  signal altLet_462  : unsigned(7 downto 0);
  signal subjLet_463 : boolean;
  signal altLet_464  : unsigned(7 downto 0);
  signal subjLet_465 : boolean;
  signal altLet_466  : unsigned(7 downto 0);
  signal subjLet_467 : boolean;
  signal altLet_468  : unsigned(7 downto 0);
  signal subjLet_469 : boolean;
  signal altLet_470  : unsigned(7 downto 0);
  signal subjLet_471 : boolean;
  signal altLet_472  : unsigned(7 downto 0);
  signal subjLet_473 : boolean;
  signal altLet_474  : unsigned(7 downto 0);
  signal subjLet_475 : boolean;
  signal altLet_476  : unsigned(7 downto 0);
  signal subjLet_477 : boolean;
  signal altLet_478  : unsigned(7 downto 0);
  signal subjLet_479 : boolean;
  signal altLet_480  : unsigned(7 downto 0);
  signal subjLet_481 : boolean;
  signal altLet_482  : unsigned(7 downto 0);
  signal subjLet_483 : boolean;
  signal altLet_484  : unsigned(7 downto 0);
  signal subjLet_485 : boolean;
  signal altLet_486  : unsigned(7 downto 0);
  signal subjLet_487 : boolean;
  signal altLet_488  : unsigned(7 downto 0);
  signal subjLet_489 : boolean;
  signal altLet_490  : unsigned(7 downto 0);
  signal subjLet_491 : boolean;
  signal altLet_492  : unsigned(7 downto 0);
  signal subjLet_493 : boolean;
  signal altLet_494  : unsigned(7 downto 0);
  signal subjLet_495 : boolean;
  signal altLet_496  : unsigned(7 downto 0);
  signal subjLet_497 : boolean;
  signal altLet_498  : unsigned(7 downto 0);
  signal subjLet_499 : boolean;
  signal altLet_500  : unsigned(7 downto 0);
  signal subjLet_501 : boolean;
  signal altLet_502  : unsigned(7 downto 0);
  signal subjLet_503 : boolean;
  signal altLet_504  : unsigned(7 downto 0);
  signal subjLet_505 : boolean;
  signal altLet_506  : unsigned(7 downto 0);
  signal subjLet_507 : boolean;
  signal altLet_508  : unsigned(7 downto 0);
  signal subjLet_509 : boolean;
  signal altLet_510  : unsigned(7 downto 0);
begin
  subjLet_0 <= ds_i1 = unsigned'("00010110");
  
  subjLet_1 <= ds_i1 = unsigned'("10111011");
  
  with (subjLet_0) select
    altLet_2 <= unsigned'("01000111") when (true),
                (others => 'X') when others;
  
  subjLet_3 <= ds_i1 = unsigned'("01010100");
  
  with (subjLet_1) select
    altLet_4 <= unsigned'("11101010") when (true),
                altLet_2 when others;
  
  subjLet_5 <= ds_i1 = unsigned'("10110000");
  
  with (subjLet_3) select
    altLet_6 <= unsigned'("00100000") when (true),
                altLet_4 when others;
  
  subjLet_7 <= ds_i1 = unsigned'("00001111");
  
  with (subjLet_5) select
    altLet_8 <= unsigned'("11100111") when (true),
                altLet_6 when others;
  
  subjLet_9 <= ds_i1 = unsigned'("00101101");
  
  with (subjLet_7) select
    altLet_10 <= unsigned'("01110110") when (true),
                 altLet_8 when others;
  
  subjLet_11 <= ds_i1 = unsigned'("10011001");
  
  with (subjLet_9) select
    altLet_12 <= unsigned'("11011000") when (true),
                 altLet_10 when others;
  
  subjLet_13 <= ds_i1 = unsigned'("01000001");
  
  with (subjLet_11) select
    altLet_14 <= unsigned'("11101110") when (true),
                 altLet_12 when others;
  
  subjLet_15 <= ds_i1 = unsigned'("01101000");
  
  with (subjLet_13) select
    altLet_16 <= unsigned'("10000011") when (true),
                 altLet_14 when others;
  
  subjLet_17 <= ds_i1 = unsigned'("01000010");
  
  with (subjLet_15) select
    altLet_18 <= unsigned'("01000101") when (true),
                 altLet_16 when others;
  
  subjLet_19 <= ds_i1 = unsigned'("11100110");
  
  with (subjLet_17) select
    altLet_20 <= unsigned'("00101100") when (true),
                 altLet_18 when others;
  
  subjLet_21 <= ds_i1 = unsigned'("10111111");
  
  with (subjLet_19) select
    altLet_22 <= unsigned'("10001110") when (true),
                 altLet_20 when others;
  
  subjLet_23 <= ds_i1 = unsigned'("00001101");
  
  with (subjLet_21) select
    altLet_24 <= unsigned'("00001000") when (true),
                 altLet_22 when others;
  
  subjLet_25 <= ds_i1 = unsigned'("10001001");
  
  with (subjLet_23) select
    altLet_26 <= unsigned'("11010111") when (true),
                 altLet_24 when others;
  
  subjLet_27 <= ds_i1 = unsigned'("10100001");
  
  with (subjLet_25) select
    altLet_28 <= unsigned'("10100111") when (true),
                 altLet_26 when others;
  
  subjLet_29 <= ds_i1 = unsigned'("10001100");
  
  with (subjLet_27) select
    altLet_30 <= unsigned'("00110010") when (true),
                 altLet_28 when others;
  
  subjLet_31 <= ds_i1 = unsigned'("11011111");
  
  with (subjLet_29) select
    altLet_32 <= unsigned'("01100100") when (true),
                 altLet_30 when others;
  
  subjLet_33 <= ds_i1 = unsigned'("00101000");
  
  with (subjLet_31) select
    altLet_34 <= unsigned'("10011110") when (true),
                 altLet_32 when others;
  
  subjLet_35 <= ds_i1 = unsigned'("01010101");
  
  with (subjLet_33) select
    altLet_36 <= unsigned'("00110100") when (true),
                 altLet_34 when others;
  
  subjLet_37 <= ds_i1 = unsigned'("11001110");
  
  with (subjLet_35) select
    altLet_38 <= unsigned'("11111100") when (true),
                 altLet_36 when others;
  
  subjLet_39 <= ds_i1 = unsigned'("11101001");
  
  with (subjLet_37) select
    altLet_40 <= unsigned'("10001011") when (true),
                 altLet_38 when others;
  
  subjLet_41 <= ds_i1 = unsigned'("10000111");
  
  with (subjLet_39) select
    altLet_42 <= unsigned'("00011110") when (true),
                 altLet_40 when others;
  
  subjLet_43 <= ds_i1 = unsigned'("00011110");
  
  with (subjLet_41) select
    altLet_44 <= unsigned'("00010111") when (true),
                 altLet_42 when others;
  
  subjLet_45 <= ds_i1 = unsigned'("10011011");
  
  with (subjLet_43) select
    altLet_46 <= unsigned'("01110010") when (true),
                 altLet_44 when others;
  
  subjLet_47 <= ds_i1 = unsigned'("10010100");
  
  with (subjLet_45) select
    altLet_48 <= unsigned'("00010100") when (true),
                 altLet_46 when others;
  
  subjLet_49 <= ds_i1 = unsigned'("10001110");
  
  with (subjLet_47) select
    altLet_50 <= unsigned'("00100010") when (true),
                 altLet_48 when others;
  
  subjLet_51 <= ds_i1 = unsigned'("11011001");
  
  with (subjLet_49) select
    altLet_52 <= unsigned'("00011001") when (true),
                 altLet_50 when others;
  
  subjLet_53 <= ds_i1 = unsigned'("01101001");
  
  with (subjLet_51) select
    altLet_54 <= unsigned'("00110101") when (true),
                 altLet_52 when others;
  
  subjLet_55 <= ds_i1 = unsigned'("00010001");
  
  with (subjLet_53) select
    altLet_56 <= unsigned'("11111001") when (true),
                 altLet_54 when others;
  
  subjLet_57 <= ds_i1 = unsigned'("10011000");
  
  with (subjLet_55) select
    altLet_58 <= unsigned'("10000010") when (true),
                 altLet_56 when others;
  
  subjLet_59 <= ds_i1 = unsigned'("11111000");
  
  with (subjLet_57) select
    altLet_60 <= unsigned'("01000110") when (true),
                 altLet_58 when others;
  
  subjLet_61 <= ds_i1 = unsigned'("11100001");
  
  with (subjLet_59) select
    altLet_62 <= unsigned'("01000001") when (true),
                 altLet_60 when others;
  
  subjLet_63 <= ds_i1 = unsigned'("10011110");
  
  with (subjLet_61) select
    altLet_64 <= unsigned'("11111000") when (true),
                 altLet_62 when others;
  
  subjLet_65 <= ds_i1 = unsigned'("00011101");
  
  with (subjLet_63) select
    altLet_66 <= unsigned'("00001011") when (true),
                 altLet_64 when others;
  
  subjLet_67 <= ds_i1 = unsigned'("11000001");
  
  with (subjLet_65) select
    altLet_68 <= unsigned'("10100100") when (true),
                 altLet_66 when others;
  
  subjLet_69 <= ds_i1 = unsigned'("10000110");
  
  with (subjLet_67) select
    altLet_70 <= unsigned'("01111000") when (true),
                 altLet_68 when others;
  
  subjLet_71 <= ds_i1 = unsigned'("10111001");
  
  with (subjLet_69) select
    altLet_72 <= unsigned'("01000100") when (true),
                 altLet_70 when others;
  
  subjLet_73 <= ds_i1 = unsigned'("01010111");
  
  with (subjLet_71) select
    altLet_74 <= unsigned'("01010110") when (true),
                 altLet_72 when others;
  
  subjLet_75 <= ds_i1 = unsigned'("00110101");
  
  with (subjLet_73) select
    altLet_76 <= unsigned'("01011011") when (true),
                 altLet_74 when others;
  
  subjLet_77 <= ds_i1 = unsigned'("01100001");
  
  with (subjLet_75) select
    altLet_78 <= unsigned'("10010110") when (true),
                 altLet_76 when others;
  
  subjLet_79 <= ds_i1 = unsigned'("00001110");
  
  with (subjLet_77) select
    altLet_80 <= unsigned'("11101111") when (true),
                 altLet_78 when others;
  
  subjLet_81 <= ds_i1 = unsigned'("11110110");
  
  with (subjLet_79) select
    altLet_82 <= unsigned'("10101011") when (true),
                 altLet_80 when others;
  
  subjLet_83 <= ds_i1 = unsigned'("00000011");
  
  with (subjLet_81) select
    altLet_84 <= unsigned'("01000010") when (true),
                 altLet_82 when others;
  
  subjLet_85 <= ds_i1 = unsigned'("01001000");
  
  with (subjLet_83) select
    altLet_86 <= unsigned'("01111011") when (true),
                 altLet_84 when others;
  
  subjLet_87 <= ds_i1 = unsigned'("01100110");
  
  with (subjLet_85) select
    altLet_88 <= unsigned'("01010010") when (true),
                 altLet_86 when others;
  
  subjLet_89 <= ds_i1 = unsigned'("10110101");
  
  with (subjLet_87) select
    altLet_90 <= unsigned'("00110011") when (true),
                 altLet_88 when others;
  
  subjLet_91 <= ds_i1 = unsigned'("00111110");
  
  with (subjLet_89) select
    altLet_92 <= unsigned'("11010101") when (true),
                 altLet_90 when others;
  
  subjLet_93 <= ds_i1 = unsigned'("01110000");
  
  with (subjLet_91) select
    altLet_94 <= unsigned'("10110010") when (true),
                 altLet_92 when others;
  
  subjLet_95 <= ds_i1 = unsigned'("10001010");
  
  with (subjLet_93) select
    altLet_96 <= unsigned'("01010001") when (true),
                 altLet_94 when others;
  
  subjLet_97 <= ds_i1 = unsigned'("10001011");
  
  with (subjLet_95) select
    altLet_98 <= unsigned'("01111110") when (true),
                 altLet_96 when others;
  
  subjLet_99 <= ds_i1 = unsigned'("10111101");
  
  with (subjLet_97) select
    altLet_100 <= unsigned'("00111101") when (true),
                  altLet_98 when others;
  
  subjLet_101 <= ds_i1 = unsigned'("01001011");
  
  with (subjLet_99) select
    altLet_102 <= unsigned'("01111010") when (true),
                  altLet_100 when others;
  
  subjLet_103 <= ds_i1 = unsigned'("00011111");
  
  with (subjLet_101) select
    altLet_104 <= unsigned'("10110011") when (true),
                  altLet_102 when others;
  
  subjLet_105 <= ds_i1 = unsigned'("01110100");
  
  with (subjLet_103) select
    altLet_106 <= unsigned'("11000000") when (true),
                  altLet_104 when others;
  
  subjLet_107 <= ds_i1 = unsigned'("11011101");
  
  with (subjLet_105) select
    altLet_108 <= unsigned'("10010010") when (true),
                  altLet_106 when others;
  
  subjLet_109 <= ds_i1 = unsigned'("11101000");
  
  with (subjLet_107) select
    altLet_110 <= unsigned'("11000001") when (true),
                  altLet_108 when others;
  
  subjLet_111 <= ds_i1 = unsigned'("11000110");
  
  with (subjLet_109) select
    altLet_112 <= unsigned'("10011011") when (true),
                  altLet_110 when others;
  
  subjLet_113 <= ds_i1 = unsigned'("10110100");
  
  with (subjLet_111) select
    altLet_114 <= unsigned'("10110100") when (true),
                  altLet_112 when others;
  
  subjLet_115 <= ds_i1 = unsigned'("10100110");
  
  with (subjLet_113) select
    altLet_116 <= unsigned'("10001101") when (true),
                  altLet_114 when others;
  
  subjLet_117 <= ds_i1 = unsigned'("00011100");
  
  with (subjLet_115) select
    altLet_118 <= unsigned'("00100100") when (true),
                  altLet_116 when others;
  
  subjLet_119 <= ds_i1 = unsigned'("00101110");
  
  with (subjLet_117) select
    altLet_120 <= unsigned'("10011100") when (true),
                  altLet_118 when others;
  
  subjLet_121 <= ds_i1 = unsigned'("00100101");
  
  with (subjLet_119) select
    altLet_122 <= unsigned'("00110001") when (true),
                  altLet_120 when others;
  
  subjLet_123 <= ds_i1 = unsigned'("01111000");
  
  with (subjLet_121) select
    altLet_124 <= unsigned'("00111111") when (true),
                  altLet_122 when others;
  
  subjLet_125 <= ds_i1 = unsigned'("10111010");
  
  with (subjLet_123) select
    altLet_126 <= unsigned'("10111100") when (true),
                  altLet_124 when others;
  
  subjLet_127 <= ds_i1 = unsigned'("00001000");
  
  with (subjLet_125) select
    altLet_128 <= unsigned'("11110100") when (true),
                  altLet_126 when others;
  
  subjLet_129 <= ds_i1 = unsigned'("10101110");
  
  with (subjLet_127) select
    altLet_130 <= unsigned'("00110000") when (true),
                  altLet_128 when others;
  
  subjLet_131 <= ds_i1 = unsigned'("01111010");
  
  with (subjLet_129) select
    altLet_132 <= unsigned'("11100100") when (true),
                  altLet_130 when others;
  
  subjLet_133 <= ds_i1 = unsigned'("01100101");
  
  with (subjLet_131) select
    altLet_134 <= unsigned'("11011010") when (true),
                  altLet_132 when others;
  
  subjLet_135 <= ds_i1 = unsigned'("11101010");
  
  with (subjLet_133) select
    altLet_136 <= unsigned'("01001101") when (true),
                  altLet_134 when others;
  
  subjLet_137 <= ds_i1 = unsigned'("11110100");
  
  with (subjLet_135) select
    altLet_138 <= unsigned'("10000111") when (true),
                  altLet_136 when others;
  
  subjLet_139 <= ds_i1 = unsigned'("01010110");
  
  with (subjLet_137) select
    altLet_140 <= unsigned'("10111111") when (true),
                  altLet_138 when others;
  
  subjLet_141 <= ds_i1 = unsigned'("01101100");
  
  with (subjLet_139) select
    altLet_142 <= unsigned'("10110001") when (true),
                  altLet_140 when others;
  
  subjLet_143 <= ds_i1 = unsigned'("10101001");
  
  with (subjLet_141) select
    altLet_144 <= unsigned'("01010000") when (true),
                  altLet_142 when others;
  
  subjLet_145 <= ds_i1 = unsigned'("01001110");
  
  with (subjLet_143) select
    altLet_146 <= unsigned'("11010011") when (true),
                  altLet_144 when others;
  
  subjLet_147 <= ds_i1 = unsigned'("11010101");
  
  with (subjLet_145) select
    altLet_148 <= unsigned'("00101111") when (true),
                  altLet_146 when others;
  
  subjLet_149 <= ds_i1 = unsigned'("10001101");
  
  with (subjLet_147) select
    altLet_150 <= unsigned'("00000011") when (true),
                  altLet_148 when others;
  
  subjLet_151 <= ds_i1 = unsigned'("01101101");
  
  with (subjLet_149) select
    altLet_152 <= unsigned'("01011101") when (true),
                  altLet_150 when others;
  
  subjLet_153 <= ds_i1 = unsigned'("00110111");
  
  with (subjLet_151) select
    altLet_154 <= unsigned'("00111100") when (true),
                  altLet_152 when others;
  
  subjLet_155 <= ds_i1 = unsigned'("11001000");
  
  with (subjLet_153) select
    altLet_156 <= unsigned'("10011010") when (true),
                  altLet_154 when others;
  
  subjLet_157 <= ds_i1 = unsigned'("11100111");
  
  with (subjLet_155) select
    altLet_158 <= unsigned'("11101000") when (true),
                  altLet_156 when others;
  
  subjLet_159 <= ds_i1 = unsigned'("01111001");
  
  with (subjLet_157) select
    altLet_160 <= unsigned'("10010100") when (true),
                  altLet_158 when others;
  
  subjLet_161 <= ds_i1 = unsigned'("11100100");
  
  with (subjLet_159) select
    altLet_162 <= unsigned'("10110110") when (true),
                  altLet_160 when others;
  
  subjLet_163 <= ds_i1 = unsigned'("10010101");
  
  with (subjLet_161) select
    altLet_164 <= unsigned'("01101001") when (true),
                  altLet_162 when others;
  
  subjLet_165 <= ds_i1 = unsigned'("10010001");
  
  with (subjLet_163) select
    altLet_166 <= unsigned'("00101010") when (true),
                  altLet_164 when others;
  
  subjLet_167 <= ds_i1 = unsigned'("01100010");
  
  with (subjLet_165) select
    altLet_168 <= unsigned'("10000001") when (true),
                  altLet_166 when others;
  
  subjLet_169 <= ds_i1 = unsigned'("10101100");
  
  with (subjLet_167) select
    altLet_170 <= unsigned'("10101010") when (true),
                  altLet_168 when others;
  
  subjLet_171 <= ds_i1 = unsigned'("11010011");
  
  with (subjLet_169) select
    altLet_172 <= unsigned'("10010001") when (true),
                  altLet_170 when others;
  
  subjLet_173 <= ds_i1 = unsigned'("11000010");
  
  with (subjLet_171) select
    altLet_174 <= unsigned'("01100110") when (true),
                  altLet_172 when others;
  
  subjLet_175 <= ds_i1 = unsigned'("01011100");
  
  with (subjLet_173) select
    altLet_176 <= unsigned'("00100101") when (true),
                  altLet_174 when others;
  
  subjLet_177 <= ds_i1 = unsigned'("00100100");
  
  with (subjLet_175) select
    altLet_178 <= unsigned'("01001010") when (true),
                  altLet_176 when others;
  
  subjLet_179 <= ds_i1 = unsigned'("00000110");
  
  with (subjLet_177) select
    altLet_180 <= unsigned'("00110110") when (true),
                  altLet_178 when others;
  
  subjLet_181 <= ds_i1 = unsigned'("01001001");
  
  with (subjLet_179) select
    altLet_182 <= unsigned'("01101111") when (true),
                  altLet_180 when others;
  
  subjLet_183 <= ds_i1 = unsigned'("00001010");
  
  with (subjLet_181) select
    altLet_184 <= unsigned'("00111011") when (true),
                  altLet_182 when others;
  
  subjLet_185 <= ds_i1 = unsigned'("00111010");
  
  with (subjLet_183) select
    altLet_186 <= unsigned'("01100111") when (true),
                  altLet_184 when others;
  
  subjLet_187 <= ds_i1 = unsigned'("00110010");
  
  with (subjLet_185) select
    altLet_188 <= unsigned'("10000000") when (true),
                  altLet_186 when others;
  
  subjLet_189 <= ds_i1 = unsigned'("11100000");
  
  with (subjLet_187) select
    altLet_190 <= unsigned'("00100011") when (true),
                  altLet_188 when others;
  
  subjLet_191 <= ds_i1 = unsigned'("11011011");
  
  with (subjLet_189) select
    altLet_192 <= unsigned'("11100001") when (true),
                  altLet_190 when others;
  
  subjLet_193 <= ds_i1 = unsigned'("00001011");
  
  with (subjLet_191) select
    altLet_194 <= unsigned'("10111001") when (true),
                  altLet_192 when others;
  
  subjLet_195 <= ds_i1 = unsigned'("01011110");
  
  with (subjLet_193) select
    altLet_196 <= unsigned'("00101011") when (true),
                  altLet_194 when others;
  
  subjLet_197 <= ds_i1 = unsigned'("11011110");
  
  with (subjLet_195) select
    altLet_198 <= unsigned'("01011000") when (true),
                  altLet_196 when others;
  
  subjLet_199 <= ds_i1 = unsigned'("00010100");
  
  with (subjLet_197) select
    altLet_200 <= unsigned'("00011101") when (true),
                  altLet_198 when others;
  
  subjLet_201 <= ds_i1 = unsigned'("10111000");
  
  with (subjLet_199) select
    altLet_202 <= unsigned'("11111010") when (true),
                  altLet_200 when others;
  
  subjLet_203 <= ds_i1 = unsigned'("11101110");
  
  with (subjLet_201) select
    altLet_204 <= unsigned'("01101100") when (true),
                  altLet_202 when others;
  
  subjLet_205 <= ds_i1 = unsigned'("01000110");
  
  with (subjLet_203) select
    altLet_206 <= unsigned'("00101000") when (true),
                  altLet_204 when others;
  
  subjLet_207 <= ds_i1 = unsigned'("10001000");
  
  with (subjLet_205) select
    altLet_208 <= unsigned'("01011010") when (true),
                  altLet_206 when others;
  
  subjLet_209 <= ds_i1 = unsigned'("10010000");
  
  with (subjLet_207) select
    altLet_210 <= unsigned'("11000100") when (true),
                  altLet_208 when others;
  
  subjLet_211 <= ds_i1 = unsigned'("00101010");
  
  with (subjLet_209) select
    altLet_212 <= unsigned'("01100000") when (true),
                  altLet_210 when others;
  
  subjLet_213 <= ds_i1 = unsigned'("00100010");
  
  with (subjLet_211) select
    altLet_214 <= unsigned'("11100101") when (true),
                  altLet_212 when others;
  
  subjLet_215 <= ds_i1 = unsigned'("11011100");
  
  with (subjLet_213) select
    altLet_216 <= unsigned'("10010011") when (true),
                  altLet_214 when others;
  
  subjLet_217 <= ds_i1 = unsigned'("01001111");
  
  with (subjLet_215) select
    altLet_218 <= unsigned'("10000110") when (true),
                  altLet_216 when others;
  
  subjLet_219 <= ds_i1 = unsigned'("10000001");
  
  with (subjLet_217) select
    altLet_220 <= unsigned'("10000100") when (true),
                  altLet_218 when others;
  
  subjLet_221 <= ds_i1 = unsigned'("01100000");
  
  with (subjLet_219) select
    altLet_222 <= unsigned'("00001100") when (true),
                  altLet_220 when others;
  
  subjLet_223 <= ds_i1 = unsigned'("01110011");
  
  with (subjLet_221) select
    altLet_224 <= unsigned'("11010000") when (true),
                  altLet_222 when others;
  
  subjLet_225 <= ds_i1 = unsigned'("00011001");
  
  with (subjLet_223) select
    altLet_226 <= unsigned'("10001111") when (true),
                  altLet_224 when others;
  
  subjLet_227 <= ds_i1 = unsigned'("01011101");
  
  with (subjLet_225) select
    altLet_228 <= unsigned'("11010100") when (true),
                  altLet_226 when others;
  
  subjLet_229 <= ds_i1 = unsigned'("01100100");
  
  with (subjLet_227) select
    altLet_230 <= unsigned'("01001100") when (true),
                  altLet_228 when others;
  
  subjLet_231 <= ds_i1 = unsigned'("00111101");
  
  with (subjLet_229) select
    altLet_232 <= unsigned'("01000011") when (true),
                  altLet_230 when others;
  
  subjLet_233 <= ds_i1 = unsigned'("01111110");
  
  with (subjLet_231) select
    altLet_234 <= unsigned'("00100111") when (true),
                  altLet_232 when others;
  
  subjLet_235 <= ds_i1 = unsigned'("10100111");
  
  with (subjLet_233) select
    altLet_236 <= unsigned'("11110011") when (true),
                  altLet_234 when others;
  
  subjLet_237 <= ds_i1 = unsigned'("11000100");
  
  with (subjLet_235) select
    altLet_238 <= unsigned'("01011100") when (true),
                  altLet_236 when others;
  
  subjLet_239 <= ds_i1 = unsigned'("00010111");
  
  with (subjLet_237) select
    altLet_240 <= unsigned'("00011100") when (true),
                  altLet_238 when others;
  
  subjLet_241 <= ds_i1 = unsigned'("01000100");
  
  with (subjLet_239) select
    altLet_242 <= unsigned'("11110000") when (true),
                  altLet_240 when others;
  
  subjLet_243 <= ds_i1 = unsigned'("10010111");
  
  with (subjLet_241) select
    altLet_244 <= unsigned'("00011011") when (true),
                  altLet_242 when others;
  
  subjLet_245 <= ds_i1 = unsigned'("01011111");
  
  with (subjLet_243) select
    altLet_246 <= unsigned'("10001000") when (true),
                  altLet_244 when others;
  
  subjLet_247 <= ds_i1 = unsigned'("11101100");
  
  with (subjLet_245) select
    altLet_248 <= unsigned'("11001111") when (true),
                  altLet_246 when others;
  
  subjLet_249 <= ds_i1 = unsigned'("00010011");
  
  with (subjLet_247) select
    altLet_250 <= unsigned'("11001110") when (true),
                  altLet_248 when others;
  
  subjLet_251 <= ds_i1 = unsigned'("00001100");
  
  with (subjLet_249) select
    altLet_252 <= unsigned'("01111101") when (true),
                  altLet_250 when others;
  
  subjLet_253 <= ds_i1 = unsigned'("11001101");
  
  with (subjLet_251) select
    altLet_254 <= unsigned'("11111110") when (true),
                  altLet_252 when others;
  
  subjLet_255 <= ds_i1 = unsigned'("11010010");
  
  with (subjLet_253) select
    altLet_256 <= unsigned'("10111101") when (true),
                  altLet_254 when others;
  
  subjLet_257 <= ds_i1 = unsigned'("11110011");
  
  with (subjLet_255) select
    altLet_258 <= unsigned'("10110101") when (true),
                  altLet_256 when others;
  
  subjLet_259 <= ds_i1 = unsigned'("11111111");
  
  with (subjLet_257) select
    altLet_260 <= unsigned'("00001101") when (true),
                  altLet_258 when others;
  
  subjLet_261 <= ds_i1 = unsigned'("00010000");
  
  with (subjLet_259) select
    altLet_262 <= unsigned'("00010110") when (true),
                  altLet_260 when others;
  
  subjLet_263 <= ds_i1 = unsigned'("00100001");
  
  with (subjLet_261) select
    altLet_264 <= unsigned'("11001010") when (true),
                  altLet_262 when others;
  
  subjLet_265 <= ds_i1 = unsigned'("11011010");
  
  with (subjLet_263) select
    altLet_266 <= unsigned'("11111101") when (true),
                  altLet_264 when others;
  
  subjLet_267 <= ds_i1 = unsigned'("10110110");
  
  with (subjLet_265) select
    altLet_268 <= unsigned'("01010111") when (true),
                  altLet_266 when others;
  
  subjLet_269 <= ds_i1 = unsigned'("10111100");
  
  with (subjLet_267) select
    altLet_270 <= unsigned'("01001110") when (true),
                  altLet_268 when others;
  
  subjLet_271 <= ds_i1 = unsigned'("11110101");
  
  with (subjLet_269) select
    altLet_272 <= unsigned'("01100101") when (true),
                  altLet_270 when others;
  
  subjLet_273 <= ds_i1 = unsigned'("00111000");
  
  with (subjLet_271) select
    altLet_274 <= unsigned'("11100110") when (true),
                  altLet_272 when others;
  
  subjLet_275 <= ds_i1 = unsigned'("10011101");
  
  with (subjLet_273) select
    altLet_276 <= unsigned'("00000111") when (true),
                  altLet_274 when others;
  
  subjLet_277 <= ds_i1 = unsigned'("10010010");
  
  with (subjLet_275) select
    altLet_278 <= unsigned'("01011110") when (true),
                  altLet_276 when others;
  
  subjLet_279 <= ds_i1 = unsigned'("10001111");
  
  with (subjLet_277) select
    altLet_280 <= unsigned'("01001111") when (true),
                  altLet_278 when others;
  
  subjLet_281 <= ds_i1 = unsigned'("01000000");
  
  with (subjLet_279) select
    altLet_282 <= unsigned'("01110011") when (true),
                  altLet_280 when others;
  
  subjLet_283 <= ds_i1 = unsigned'("10100011");
  
  with (subjLet_281) select
    altLet_284 <= unsigned'("00001001") when (true),
                  altLet_282 when others;
  
  subjLet_285 <= ds_i1 = unsigned'("01010001");
  
  with (subjLet_283) select
    altLet_286 <= unsigned'("00001010") when (true),
                  altLet_284 when others;
  
  subjLet_287 <= ds_i1 = unsigned'("10101000");
  
  with (subjLet_285) select
    altLet_288 <= unsigned'("11010001") when (true),
                  altLet_286 when others;
  
  subjLet_289 <= ds_i1 = unsigned'("10011111");
  
  with (subjLet_287) select
    altLet_290 <= unsigned'("11000010") when (true),
                  altLet_288 when others;
  
  subjLet_291 <= ds_i1 = unsigned'("00111100");
  
  with (subjLet_289) select
    altLet_292 <= unsigned'("11011011") when (true),
                  altLet_290 when others;
  
  subjLet_293 <= ds_i1 = unsigned'("01010000");
  
  with (subjLet_291) select
    altLet_294 <= unsigned'("11101011") when (true),
                  altLet_292 when others;
  
  subjLet_295 <= ds_i1 = unsigned'("01111111");
  
  with (subjLet_293) select
    altLet_296 <= unsigned'("01010011") when (true),
                  altLet_294 when others;
  
  subjLet_297 <= ds_i1 = unsigned'("00000010");
  
  with (subjLet_295) select
    altLet_298 <= unsigned'("11010010") when (true),
                  altLet_296 when others;
  
  subjLet_299 <= ds_i1 = unsigned'("11111001");
  
  with (subjLet_297) select
    altLet_300 <= unsigned'("01110111") when (true),
                  altLet_298 when others;
  
  subjLet_301 <= ds_i1 = unsigned'("01000101");
  
  with (subjLet_299) select
    altLet_302 <= unsigned'("10011001") when (true),
                  altLet_300 when others;
  
  subjLet_303 <= ds_i1 = unsigned'("10000101");
  
  with (subjLet_301) select
    altLet_304 <= unsigned'("01101110") when (true),
                  altLet_302 when others;
  
  subjLet_305 <= ds_i1 = unsigned'("00110011");
  
  with (subjLet_303) select
    altLet_306 <= unsigned'("10010111") when (true),
                  altLet_304 when others;
  
  subjLet_307 <= ds_i1 = unsigned'("01001101");
  
  with (subjLet_305) select
    altLet_308 <= unsigned'("11000011") when (true),
                  altLet_306 when others;
  
  subjLet_309 <= ds_i1 = unsigned'("01000011");
  
  with (subjLet_307) select
    altLet_310 <= unsigned'("11100011") when (true),
                  altLet_308 when others;
  
  subjLet_311 <= ds_i1 = unsigned'("11111011");
  
  with (subjLet_309) select
    altLet_312 <= unsigned'("00011010") when (true),
                  altLet_310 when others;
  
  subjLet_313 <= ds_i1 = unsigned'("10101010");
  
  with (subjLet_311) select
    altLet_314 <= unsigned'("00001111") when (true),
                  altLet_312 when others;
  
  subjLet_315 <= ds_i1 = unsigned'("11101111");
  
  with (subjLet_313) select
    altLet_316 <= unsigned'("10101100") when (true),
                  altLet_314 when others;
  
  subjLet_317 <= ds_i1 = unsigned'("11010000");
  
  with (subjLet_315) select
    altLet_318 <= unsigned'("11011111") when (true),
                  altLet_316 when others;
  
  subjLet_319 <= ds_i1 = unsigned'("11001111");
  
  with (subjLet_317) select
    altLet_320 <= unsigned'("01110000") when (true),
                  altLet_318 when others;
  
  subjLet_321 <= ds_i1 = unsigned'("01011000");
  
  with (subjLet_319) select
    altLet_322 <= unsigned'("10001010") when (true),
                  altLet_320 when others;
  
  subjLet_323 <= ds_i1 = unsigned'("01001100");
  
  with (subjLet_321) select
    altLet_324 <= unsigned'("01101010") when (true),
                  altLet_322 when others;
  
  subjLet_325 <= ds_i1 = unsigned'("01001010");
  
  with (subjLet_323) select
    altLet_326 <= unsigned'("00101001") when (true),
                  altLet_324 when others;
  
  subjLet_327 <= ds_i1 = unsigned'("00111001");
  
  with (subjLet_325) select
    altLet_328 <= unsigned'("11010110") when (true),
                  altLet_326 when others;
  
  subjLet_329 <= ds_i1 = unsigned'("10111110");
  
  with (subjLet_327) select
    altLet_330 <= unsigned'("00010010") when (true),
                  altLet_328 when others;
  
  subjLet_331 <= ds_i1 = unsigned'("11001011");
  
  with (subjLet_329) select
    altLet_332 <= unsigned'("10101110") when (true),
                  altLet_330 when others;
  
  subjLet_333 <= ds_i1 = unsigned'("01101010");
  
  with (subjLet_331) select
    altLet_334 <= unsigned'("00011111") when (true),
                  altLet_332 when others;
  
  subjLet_335 <= ds_i1 = unsigned'("01011011");
  
  with (subjLet_333) select
    altLet_336 <= unsigned'("00000010") when (true),
                  altLet_334 when others;
  
  subjLet_337 <= ds_i1 = unsigned'("10110001");
  
  with (subjLet_335) select
    altLet_338 <= unsigned'("00111001") when (true),
                  altLet_336 when others;
  
  subjLet_339 <= ds_i1 = unsigned'("11111100");
  
  with (subjLet_337) select
    altLet_340 <= unsigned'("11001000") when (true),
                  altLet_338 when others;
  
  subjLet_341 <= ds_i1 = unsigned'("00100000");
  
  with (subjLet_339) select
    altLet_342 <= unsigned'("10110000") when (true),
                  altLet_340 when others;
  
  subjLet_343 <= ds_i1 = unsigned'("11101101");
  
  with (subjLet_341) select
    altLet_344 <= unsigned'("10110111") when (true),
                  altLet_342 when others;
  
  subjLet_345 <= ds_i1 = unsigned'("00000000");
  
  with (subjLet_343) select
    altLet_346 <= unsigned'("01010101") when (true),
                  altLet_344 when others;
  
  subjLet_347 <= ds_i1 = unsigned'("11010001");
  
  with (subjLet_345) select
    altLet_348 <= unsigned'("01100011") when (true),
                  altLet_346 when others;
  
  subjLet_349 <= ds_i1 = unsigned'("01010011");
  
  with (subjLet_347) select
    altLet_350 <= unsigned'("00111110") when (true),
                  altLet_348 when others;
  
  subjLet_351 <= ds_i1 = unsigned'("10000100");
  
  with (subjLet_349) select
    altLet_352 <= unsigned'("11101101") when (true),
                  altLet_350 when others;
  
  subjLet_353 <= ds_i1 = unsigned'("00101111");
  
  with (subjLet_351) select
    altLet_354 <= unsigned'("01011111") when (true),
                  altLet_352 when others;
  
  subjLet_355 <= ds_i1 = unsigned'("11100011");
  
  with (subjLet_353) select
    altLet_356 <= unsigned'("00010101") when (true),
                  altLet_354 when others;
  
  subjLet_357 <= ds_i1 = unsigned'("00101001");
  
  with (subjLet_355) select
    altLet_358 <= unsigned'("00010001") when (true),
                  altLet_356 when others;
  
  subjLet_359 <= ds_i1 = unsigned'("10110011");
  
  with (subjLet_357) select
    altLet_360 <= unsigned'("10100101") when (true),
                  altLet_358 when others;
  
  subjLet_361 <= ds_i1 = unsigned'("11010110");
  
  with (subjLet_359) select
    altLet_362 <= unsigned'("01101101") when (true),
                  altLet_360 when others;
  
  subjLet_363 <= ds_i1 = unsigned'("00111011");
  
  with (subjLet_361) select
    altLet_364 <= unsigned'("11110110") when (true),
                  altLet_362 when others;
  
  subjLet_365 <= ds_i1 = unsigned'("01010010");
  
  with (subjLet_363) select
    altLet_366 <= unsigned'("11100010") when (true),
                  altLet_364 when others;
  
  subjLet_367 <= ds_i1 = unsigned'("10100000");
  
  with (subjLet_365) select
    altLet_368 <= unsigned'("00000000") when (true),
                  altLet_366 when others;
  
  subjLet_369 <= ds_i1 = unsigned'("01011010");
  
  with (subjLet_367) select
    altLet_370 <= unsigned'("11100000") when (true),
                  altLet_368 when others;
  
  subjLet_371 <= ds_i1 = unsigned'("01101110");
  
  with (subjLet_369) select
    altLet_372 <= unsigned'("10111110") when (true),
                  altLet_370 when others;
  
  subjLet_373 <= ds_i1 = unsigned'("00011011");
  
  with (subjLet_371) select
    altLet_374 <= unsigned'("10011111") when (true),
                  altLet_372 when others;
  
  subjLet_375 <= ds_i1 = unsigned'("00011010");
  
  with (subjLet_373) select
    altLet_376 <= unsigned'("10101111") when (true),
                  altLet_374 when others;
  
  subjLet_377 <= ds_i1 = unsigned'("00101100");
  
  with (subjLet_375) select
    altLet_378 <= unsigned'("10100010") when (true),
                  altLet_376 when others;
  
  subjLet_379 <= ds_i1 = unsigned'("10000011");
  
  with (subjLet_377) select
    altLet_380 <= unsigned'("01110001") when (true),
                  altLet_378 when others;
  
  subjLet_381 <= ds_i1 = unsigned'("00001001");
  
  with (subjLet_379) select
    altLet_382 <= unsigned'("11101100") when (true),
                  altLet_380 when others;
  
  subjLet_383 <= ds_i1 = unsigned'("01110101");
  
  with (subjLet_381) select
    altLet_384 <= unsigned'("00000001") when (true),
                  altLet_382 when others;
  
  subjLet_385 <= ds_i1 = unsigned'("10110010");
  
  with (subjLet_383) select
    altLet_386 <= unsigned'("10011101") when (true),
                  altLet_384 when others;
  
  subjLet_387 <= ds_i1 = unsigned'("00100111");
  
  with (subjLet_385) select
    altLet_388 <= unsigned'("00110111") when (true),
                  altLet_386 when others;
  
  subjLet_389 <= ds_i1 = unsigned'("11101011");
  
  with (subjLet_387) select
    altLet_390 <= unsigned'("11001100") when (true),
                  altLet_388 when others;
  
  subjLet_391 <= ds_i1 = unsigned'("11100010");
  
  with (subjLet_389) select
    altLet_392 <= unsigned'("11101001") when (true),
                  altLet_390 when others;
  
  subjLet_393 <= ds_i1 = unsigned'("10000000");
  
  with (subjLet_391) select
    altLet_394 <= unsigned'("10011000") when (true),
                  altLet_392 when others;
  
  subjLet_395 <= ds_i1 = unsigned'("00010010");
  
  with (subjLet_393) select
    altLet_396 <= unsigned'("11001101") when (true),
                  altLet_394 when others;
  
  subjLet_397 <= ds_i1 = unsigned'("00000111");
  
  with (subjLet_395) select
    altLet_398 <= unsigned'("11001001") when (true),
                  altLet_396 when others;
  
  subjLet_399 <= ds_i1 = unsigned'("10011010");
  
  with (subjLet_397) select
    altLet_400 <= unsigned'("11000101") when (true),
                  altLet_398 when others;
  
  subjLet_401 <= ds_i1 = unsigned'("00000101");
  
  with (subjLet_399) select
    altLet_402 <= unsigned'("10111000") when (true),
                  altLet_400 when others;
  
  subjLet_403 <= ds_i1 = unsigned'("10010110");
  
  with (subjLet_401) select
    altLet_404 <= unsigned'("01101011") when (true),
                  altLet_402 when others;
  
  subjLet_405 <= ds_i1 = unsigned'("00011000");
  
  with (subjLet_403) select
    altLet_406 <= unsigned'("10010000") when (true),
                  altLet_404 when others;
  
  subjLet_407 <= ds_i1 = unsigned'("11000011");
  
  with (subjLet_405) select
    altLet_408 <= unsigned'("10101101") when (true),
                  altLet_406 when others;
  
  subjLet_409 <= ds_i1 = unsigned'("00100011");
  
  with (subjLet_407) select
    altLet_410 <= unsigned'("00101110") when (true),
                  altLet_408 when others;
  
  subjLet_411 <= ds_i1 = unsigned'("11000111");
  
  with (subjLet_409) select
    altLet_412 <= unsigned'("00100110") when (true),
                  altLet_410 when others;
  
  subjLet_413 <= ds_i1 = unsigned'("00000100");
  
  with (subjLet_411) select
    altLet_414 <= unsigned'("11000110") when (true),
                  altLet_412 when others;
  
  subjLet_415 <= ds_i1 = unsigned'("00010101");
  
  with (subjLet_413) select
    altLet_416 <= unsigned'("11110010") when (true),
                  altLet_414 when others;
  
  subjLet_417 <= ds_i1 = unsigned'("00110001");
  
  with (subjLet_415) select
    altLet_418 <= unsigned'("01011001") when (true),
                  altLet_416 when others;
  
  subjLet_419 <= ds_i1 = unsigned'("11011000");
  
  with (subjLet_417) select
    altLet_420 <= unsigned'("11000111") when (true),
                  altLet_418 when others;
  
  subjLet_421 <= ds_i1 = unsigned'("01110001");
  
  with (subjLet_419) select
    altLet_422 <= unsigned'("01100001") when (true),
                  altLet_420 when others;
  
  subjLet_423 <= ds_i1 = unsigned'("11110001");
  
  with (subjLet_421) select
    altLet_424 <= unsigned'("10100011") when (true),
                  altLet_422 when others;
  
  subjLet_425 <= ds_i1 = unsigned'("11100101");
  
  with (subjLet_423) select
    altLet_426 <= unsigned'("10100001") when (true),
                  altLet_424 when others;
  
  subjLet_427 <= ds_i1 = unsigned'("10100101");
  
  with (subjLet_425) select
    altLet_428 <= unsigned'("11011001") when (true),
                  altLet_426 when others;
  
  subjLet_429 <= ds_i1 = unsigned'("00110100");
  
  with (subjLet_427) select
    altLet_430 <= unsigned'("00000110") when (true),
                  altLet_428 when others;
  
  subjLet_431 <= ds_i1 = unsigned'("11001100");
  
  with (subjLet_429) select
    altLet_432 <= unsigned'("00011000") when (true),
                  altLet_430 when others;
  
  subjLet_433 <= ds_i1 = unsigned'("11110111");
  
  with (subjLet_431) select
    altLet_434 <= unsigned'("01001011") when (true),
                  altLet_432 when others;
  
  subjLet_435 <= ds_i1 = unsigned'("00111111");
  
  with (subjLet_433) select
    altLet_436 <= unsigned'("01101000") when (true),
                  altLet_434 when others;
  
  subjLet_437 <= ds_i1 = unsigned'("00110110");
  
  with (subjLet_435) select
    altLet_438 <= unsigned'("01110101") when (true),
                  altLet_436 when others;
  
  subjLet_439 <= ds_i1 = unsigned'("00100110");
  
  with (subjLet_437) select
    altLet_440 <= unsigned'("00000101") when (true),
                  altLet_438 when others;
  
  subjLet_441 <= ds_i1 = unsigned'("10010011");
  
  with (subjLet_439) select
    altLet_442 <= unsigned'("11110111") when (true),
                  altLet_440 when others;
  
  subjLet_443 <= ds_i1 = unsigned'("11111101");
  
  with (subjLet_441) select
    altLet_444 <= unsigned'("11011100") when (true),
                  altLet_442 when others;
  
  subjLet_445 <= ds_i1 = unsigned'("10110111");
  
  with (subjLet_443) select
    altLet_446 <= unsigned'("01010100") when (true),
                  altLet_444 when others;
  
  subjLet_447 <= ds_i1 = unsigned'("11000000");
  
  with (subjLet_445) select
    altLet_448 <= unsigned'("10101001") when (true),
                  altLet_446 when others;
  
  subjLet_449 <= ds_i1 = unsigned'("01110010");
  
  with (subjLet_447) select
    altLet_450 <= unsigned'("10111010") when (true),
                  altLet_448 when others;
  
  subjLet_451 <= ds_i1 = unsigned'("10100100");
  
  with (subjLet_449) select
    altLet_452 <= unsigned'("01000000") when (true),
                  altLet_450 when others;
  
  subjLet_453 <= ds_i1 = unsigned'("10011100");
  
  with (subjLet_451) select
    altLet_454 <= unsigned'("01001001") when (true),
                  altLet_452 when others;
  
  subjLet_455 <= ds_i1 = unsigned'("10101111");
  
  with (subjLet_453) select
    altLet_456 <= unsigned'("11011110") when (true),
                  altLet_454 when others;
  
  subjLet_457 <= ds_i1 = unsigned'("10100010");
  
  with (subjLet_455) select
    altLet_458 <= unsigned'("01111001") when (true),
                  altLet_456 when others;
  
  subjLet_459 <= ds_i1 = unsigned'("11010100");
  
  with (subjLet_457) select
    altLet_460 <= unsigned'("00111010") when (true),
                  altLet_458 when others;
  
  subjLet_461 <= ds_i1 = unsigned'("10101101");
  
  with (subjLet_459) select
    altLet_462 <= unsigned'("01001000") when (true),
                  altLet_460 when others;
  
  subjLet_463 <= ds_i1 = unsigned'("11110000");
  
  with (subjLet_461) select
    altLet_464 <= unsigned'("10010101") when (true),
                  altLet_462 when others;
  
  subjLet_465 <= ds_i1 = unsigned'("01000111");
  
  with (subjLet_463) select
    altLet_466 <= unsigned'("10001100") when (true),
                  altLet_464 when others;
  
  subjLet_467 <= ds_i1 = unsigned'("01011001");
  
  with (subjLet_465) select
    altLet_468 <= unsigned'("10100000") when (true),
                  altLet_466 when others;
  
  subjLet_469 <= ds_i1 = unsigned'("11111010");
  
  with (subjLet_467) select
    altLet_470 <= unsigned'("11001011") when (true),
                  altLet_468 when others;
  
  subjLet_471 <= ds_i1 = unsigned'("01111101");
  
  with (subjLet_469) select
    altLet_472 <= unsigned'("00101101") when (true),
                  altLet_470 when others;
  
  subjLet_473 <= ds_i1 = unsigned'("11001001");
  
  with (subjLet_471) select
    altLet_474 <= unsigned'("11111111") when (true),
                  altLet_472 when others;
  
  subjLet_475 <= ds_i1 = unsigned'("10000010");
  
  with (subjLet_473) select
    altLet_476 <= unsigned'("11011101") when (true),
                  altLet_474 when others;
  
  subjLet_477 <= ds_i1 = unsigned'("11001010");
  
  with (subjLet_475) select
    altLet_478 <= unsigned'("00010011") when (true),
                  altLet_476 when others;
  
  subjLet_479 <= ds_i1 = unsigned'("01110110");
  
  with (subjLet_477) select
    altLet_480 <= unsigned'("01110100") when (true),
                  altLet_478 when others;
  
  subjLet_481 <= ds_i1 = unsigned'("10101011");
  
  with (subjLet_479) select
    altLet_482 <= unsigned'("00111000") when (true),
                  altLet_480 when others;
  
  subjLet_483 <= ds_i1 = unsigned'("11010111");
  
  with (subjLet_481) select
    altLet_484 <= unsigned'("01100010") when (true),
                  altLet_482 when others;
  
  subjLet_485 <= ds_i1 = unsigned'("11111110");
  
  with (subjLet_483) select
    altLet_486 <= unsigned'("00001110") when (true),
                  altLet_484 when others;
  
  subjLet_487 <= ds_i1 = unsigned'("00101011");
  
  with (subjLet_485) select
    altLet_488 <= unsigned'("10111011") when (true),
                  altLet_486 when others;
  
  subjLet_489 <= ds_i1 = unsigned'("01100111");
  
  with (subjLet_487) select
    altLet_490 <= unsigned'("11110001") when (true),
                  altLet_488 when others;
  
  subjLet_491 <= ds_i1 = unsigned'("00000001");
  
  with (subjLet_489) select
    altLet_492 <= unsigned'("10000101") when (true),
                  altLet_490 when others;
  
  subjLet_493 <= ds_i1 = unsigned'("00110000");
  
  with (subjLet_491) select
    altLet_494 <= unsigned'("01111100") when (true),
                  altLet_492 when others;
  
  subjLet_495 <= ds_i1 = unsigned'("11000101");
  
  with (subjLet_493) select
    altLet_496 <= unsigned'("00000100") when (true),
                  altLet_494 when others;
  
  subjLet_497 <= ds_i1 = unsigned'("01101111");
  
  with (subjLet_495) select
    altLet_498 <= unsigned'("10100110") when (true),
                  altLet_496 when others;
  
  subjLet_499 <= ds_i1 = unsigned'("01101011");
  
  with (subjLet_497) select
    altLet_500 <= unsigned'("10101000") when (true),
                  altLet_498 when others;
  
  subjLet_501 <= ds_i1 = unsigned'("11110010");
  
  with (subjLet_499) select
    altLet_502 <= unsigned'("01111111") when (true),
                  altLet_500 when others;
  
  subjLet_503 <= ds_i1 = unsigned'("01111011");
  
  with (subjLet_501) select
    altLet_504 <= unsigned'("10001001") when (true),
                  altLet_502 when others;
  
  subjLet_505 <= ds_i1 = unsigned'("01110111");
  
  with (subjLet_503) select
    altLet_506 <= unsigned'("00100001") when (true),
                  altLet_504 when others;
  
  subjLet_507 <= ds_i1 = unsigned'("01111100");
  
  with (subjLet_505) select
    altLet_508 <= unsigned'("11110101") when (true),
                  altLet_506 when others;
  
  subjLet_509 <= ds_i1 = unsigned'("01100011");
  
  with (subjLet_507) select
    altLet_510 <= unsigned'("00010000") when (true),
                  altLet_508 when others;
  
  with (subjLet_509) select
    topLet_o <= unsigned'("11111011") when (true),
                altLet_510 when others;
end;
