cmd_Release/obj.target/libnodeloopplugin.so := g++ -shared -pthread -rdynamic -m64  -Wl,-soname=libnodeloopplugin.so -o Release/obj.target/libnodeloopplugin.so -Wl,--whole-archive ./Release/obj.target/nodeloopplugin/src/plugins/node/loop/nodeloopplugin.o -Wl,--no-whole-archive 