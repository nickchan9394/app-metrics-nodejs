cmd_Release/obj.target/omr-agentcore/libagentcore.so := g++ -shared -pthread -rdynamic -m64  -Wl,-soname=libagentcore.so -o Release/obj.target/omr-agentcore/libagentcore.so -Wl,--whole-archive ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/Logger.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/LogManager.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/MemoryManager.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/util/FileUtils.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/util/LibraryUtils.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/port/linux/Thread.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/port/linux/Process.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/port/Lock.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/port/ThreadData.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/Properties.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/PropertiesFile.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/util/strUtils.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/common/util/sysUtils.o ./Release/obj.target/agentcore/geni/monitoring/agent/Agent.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/monitoring/agent/threads/ThreadPool.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/monitoring/agent/threads/WorkerThread.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/monitoring/agent/SystemReceiver.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/monitoring/connector/ConnectorManager.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/monitoring/agent/Bucket.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/monitoring/agent/BucketList.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/monitoring/Plugin.o ./Release/obj.target/agentcore/omr-agentcore/src/ibmras/monitoring/connector/configuration/ConfigurationConnector.o -Wl,--no-whole-archive 