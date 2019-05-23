#SVD2ADA_DIR=$(shell dirname $(shell which svd2ada))
SVD2ADA_DIR=~/Documents/projects/svd2ada

all: svd

svd:
	rm -rf */svd */svdtmp
	$(SVD2ADA_DIR)/svd2ada $(SVD2ADA_DIR)/CMSIS-SVD/Nordic/nrf52840.svd \
	  -o nrf52840/svdtmp -p Interfaces.NRF52
	for d in nrf52840/svdtmp; do \
	   cd $$d; \
	   mkdir ../svd; \
	   mv i-nrf52*.ads ../svd; \
	   mv handler.S ../svd; \
	   mv a-intnam.ads ../svd; \
	   cd ../..; \
	done
	rm -rf */svdtmp
