cmd_Release/obj.target/agentcore/geni/monitoring/agent/Agent.cpp := LD_LIBRARY_PATH=/home/appmetrics-test/node_modules/appmetrics/build/Release/lib.host:/home/appmetrics-test/node_modules/appmetrics/build/Release/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd ../omr-agentcore; mkdir -p /home/appmetrics-test/node_modules/appmetrics/build/Release/obj.target/agentcore/geni/monitoring/agent; python ./replace_in_file.py ./src/ibmras/monitoring/agent/Agent.cpp "/home/appmetrics-test/node_modules/appmetrics/build/Release/obj.target/agentcore/geni/monitoring/agent/Agent.cpp" "--from=\"99\\.99\\.99\\.29991231\"" "--to=\"4.0.5.201911210706\"" -v