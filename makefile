# Makefile autogenerated by Dyi on May 6, 2015
#
# Main target: all
# Sources: 

.DEFAULT_GOAL := all


.PHONY: all
all: k-ubc7j9q5 k-p9di0h5n


.PHONY: clean
clean: k-879ffu3m k-5snqi8rx


.PHONY: prepare
prepare:




.PHONY: k-ubc7j9q5
k-ubc7j9q5:  
	clash -iCrypto --vhdl Crypto/AES.hs


.PHONY: k-p9di0h5n
k-p9di0h5n:  
	cat vhdl/AES/zuzdzf_4.vhdl


.PHONY: k-879ffu3m
k-879ffu3m:  
	rm -rf vhdl


.PHONY: k-5snqi8rx
k-5snqi8rx:  
	rm -f *.hi *.o *.s


.PHONY: update
update: 
	make clean   
	node /Users/zaccaria/development/github/clash-sandbox/configure.js




