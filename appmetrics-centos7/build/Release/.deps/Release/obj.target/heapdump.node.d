cmd_Release/obj.target/heapdump.node := g++ -shared -pthread -rdynamic -m64  -Wl,-soname=heapdump.node -o Release/obj.target/heapdump.node -Wl,--start-group Release/obj.target/heapdump/src/heapdump/heapdump.o -Wl,--end-group 