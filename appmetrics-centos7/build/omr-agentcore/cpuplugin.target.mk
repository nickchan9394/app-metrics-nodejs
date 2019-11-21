# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := cpuplugin
DEFS_Debug := \
	'-DEXPORT' \
	'-DIBMRAS_DEBUG_LOGGING' \
	'-DOMR_NODEJS' \
	'-DNODE_GYP_MODULE_NAME=cpuplugin' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LINUX' \
	'-DLINUX' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-std=gnu++1y

INCS_Debug := \
	-I$(srcdir)/omr-agentcore/src \
	-I$(srcdir)/omr-agentcore/org.eclipse.paho.mqtt.c/src \
	-I/root/.cache/node-gyp/10.17.0/include/node \
	-I/root/.cache/node-gyp/10.17.0/src \
	-I/root/.cache/node-gyp/10.17.0/deps/openssl/config \
	-I/root/.cache/node-gyp/10.17.0/deps/openssl/openssl/include \
	-I/root/.cache/node-gyp/10.17.0/deps/uv/include \
	-I/root/.cache/node-gyp/10.17.0/deps/zlib \
	-I/root/.cache/node-gyp/10.17.0/deps/v8/include

DEFS_Release := \
	'-DEXPORT' \
	'-DIBMRAS_DEBUG_LOGGING' \
	'-DOMR_NODEJS' \
	'-DNODE_GYP_MODULE_NAME=cpuplugin' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LINUX' \
	'-DLINUX' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-std=gnu++1y

INCS_Release := \
	-I$(srcdir)/omr-agentcore/src \
	-I$(srcdir)/omr-agentcore/org.eclipse.paho.mqtt.c/src \
	-I/root/.cache/node-gyp/10.17.0/include/node \
	-I/root/.cache/node-gyp/10.17.0/src \
	-I/root/.cache/node-gyp/10.17.0/deps/openssl/config \
	-I/root/.cache/node-gyp/10.17.0/deps/openssl/openssl/include \
	-I/root/.cache/node-gyp/10.17.0/deps/uv/include \
	-I/root/.cache/node-gyp/10.17.0/deps/zlib \
	-I/root/.cache/node-gyp/10.17.0/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/omr-agentcore/src/ibmras/monitoring/plugins/common/cpu/cpuplugin.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/omr-agentcore/libcpuplugin.so: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/omr-agentcore/libcpuplugin.so: LIBS := $(LIBS)
$(obj).target/omr-agentcore/libcpuplugin.so: LD_INPUTS := $(OBJS)
$(obj).target/omr-agentcore/libcpuplugin.so: TOOLSET := $(TOOLSET)
$(obj).target/omr-agentcore/libcpuplugin.so: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink)

all_deps += $(obj).target/omr-agentcore/libcpuplugin.so
# Add target alias
.PHONY: cpuplugin
cpuplugin: $(builddir)/libcpuplugin.so

# Copy this to the shared library output path.
$(builddir)/libcpuplugin.so: TOOLSET := $(TOOLSET)
$(builddir)/libcpuplugin.so: $(obj).target/omr-agentcore/libcpuplugin.so FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libcpuplugin.so
# Short alias for building this shared library.
.PHONY: libcpuplugin.so
libcpuplugin.so: $(obj).target/omr-agentcore/libcpuplugin.so $(builddir)/libcpuplugin.so

# Add shared library to "all" target.
.PHONY: all
all: $(builddir)/libcpuplugin.so
