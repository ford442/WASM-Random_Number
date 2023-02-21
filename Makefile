rand:
	em++ src/main.cpp -c -fno-math-errno \
	-std=c++11 -stdlib=libc++ -O0 \
        -ffast-math -ffp-contract=on
	emcc main.o -o r001.js -std=c++11 -O0 -fno-math-errno \
	-sPRECISE_F32=2 -sWASM_BIGINT=1 -mcpu=bleeding-edge -fwasm-exceptions \
	-fuse-ld=gold -sALLOW_MEMORY_GROWTH=0 -sINITIAL_MEMORY=2048mb \
	-polly \
	-sEXPORTED_FUNCTIONS='["_main","_r4nd"]' -sEXPORTED_RUNTIME_METHODS='["ccall"]'

all: rand
	echo 'Built 1ink.us Random Generator.'
